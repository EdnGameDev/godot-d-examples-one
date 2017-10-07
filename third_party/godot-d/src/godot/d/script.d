/++
Implementation templates for new Godot-D native scripts
+/
module godot.d.script;

import std.meta, std.traits;
import std.experimental.allocator, std.experimental.allocator.mallocator;
import core.stdc.stdlib : malloc, free;

import godot.c, godot.core;
import godot.d.udas;
import godot.d.meta, godot.d.wrap;

/++
Base class for D native scripts. Native script instances will be attached to a
Godot (C++) object of Base class.

To simulate OOP inheritance, also include `alias owner this;` in your class.
+/
class GodotScript(Base) if(isGodotBaseClass!Base)
{
	Base owner;
	
	pragma(inline, true)
	inout(To) as(To)() inout if(isGodotBaseClass!To)
	{
		static assert(extends!(Base, To), typeof(this).stringof~" does not extend "~To.stringof);
		return inout(To)(owner.getGDNativeObject);
	}
	pragma(inline, true)
	inout(To) as(To, this From)() inout if(extendsGodotBaseClass!To)
	{
		static assert(extends!(From, To) || extends!(To, From), From.stringof~
			" is not polymorphic to " ~ To.stringof);
		return opCast!To(); // use D dynamic cast
	}
	
	/// HACK to work around evil bug in which cast(void*) invokes `alias this`
	/// https://issues.dlang.org/show_bug.cgi?id=6777
	void* opCast(T : void*)()
	{
		import std.traits;
		alias This = typeof(this);
		static assert(!is(Unqual!This == Unqual!Base));
		union U{ void* ptr; This c; }
		U u;
		u.c = this;
		return u.ptr;
	}
	const(void*) opCast(T : const(void*))() const
	{
		import std.traits;
		alias This = typeof(this);
		static assert(!is(Unqual!This == Unqual!Base));
		union U{ const(void*) ptr; const(This) c; }
		U u;
		u.c = this;
		return u.ptr;
	}
}

template RefOrT(T) if(extendsGodotBaseClass!T)
{
	static if(staticIndexOf!(Reference, typeof(T.owner).BaseClasses) == -1) alias RefOrT = T;
	else alias RefOrT = T; /// TODO: Ref!T;
}

package(godot) void initialize(T)(T t) if(extendsGodotBaseClass!T)
{
	import godot.node;
	
	template isRAII(string memberName)
	{
		static if(__traits(getProtection, __traits(getMember, T, memberName)) == "public")
			enum bool isRAII = hasUDA!( __traits(getMember, T, memberName), RAII);
		else enum bool isRAII = false;
	}
	foreach(n; Filter!(isRAII, FieldNameTuple!T ))
	{
		alias M = typeof(mixin("t."~n));
		static assert(getUDAs!(mixin("t."~n), RAII).length == 1, "Multiple RAIIs on "
			~T.stringof~"."~n);
		
		enum RAII raii = is(getUDAs!(mixin("t."~n), RAII)[0]) ?
			RAII.makeDefault!(M, T)() : getUDAs!(mixin("t."~n), RAII)[0];
		
		static if(raii.autoCreate)
		{
			mixin("t."~n) = memnew!M();
			static if( raii.autoAddChild && RAII.canAddChild!(M, T) )
			{
				t.owner.add_child( mixin("t."~n) );
			}
		}
	}
	
	// call _init
	foreach(mf; godotMethods!T)
	{
		enum string funcName = godotName!mf;
		alias Args = Parameters!mf;
		static if(funcName == "_init" && Args.length == 0) t._init();
	}
}

package(godot) void finalize(T)(T t) if(extendsGodotBaseClass!T)
{
	import godot.node;
	
	template isRAII(string memberName)
	{
		static if(__traits(getProtection, __traits(getMember, T, memberName)) == "public")
			enum bool isRAII = hasUDA!( __traits(getMember, T, memberName), RAII);
		else enum bool isRAII = false;
	}
	foreach(n; Filter!(isRAII, FieldNameTuple!T ))
	{
		alias M = typeof(mixin("t."~n));
		enum RAII raii(string rn : n) = is(getUDAs!(mixin("t."~n), RAII)[0]) ?
			RAII.makeDefault!(M, T)() : getUDAs!(mixin("t."~n), RAII)[0];
		
		static if(raii!n.autoDelete)
		{
			memdelete(mixin("t."~n));
		}
	}
}

/++
Generic null check for all Godot classes. Limitations in D prevent using `is null`
on Godot base classes because they're really struct wrappers.
+/
@nogc nothrow pragma(inline, true)
bool isNull(T)(in T t) if(isGodotClass!T)
{
	static if(extendsGodotBaseClass!T) return t is null;
	else return t._godot_object.ptr is null;
}

/++
Allocate a new T and attach it to a new Godot object.
+/
T memnew(T)() if(extendsGodotBaseClass!T)
{
	import std.experimental.allocator, std.experimental.allocator.mallocator;
	static import godot;
	
	T t = Mallocator.instance.make!T();
	t.owner = typeof(T.owner)._new();
	
	godot.initialize(t);
	
	return t;
}

T memnew(T)() if(isGodotBaseClass!T)
{
	/// FIXME: block those that aren't marked instanciable in API JSON (actually a generator bug)
	return T._new(); /// TODO: remove _new and use only this function?
}

void memdelete(T)(T t) if(isGodotClass!T)
{
	godot_object_destroy(t.getGDNativeObject);
}

extern(C) package(godot) void* createFunc(T)(godot_object self, void* methodData)
{
	static import godot;
	
	T t = Mallocator.instance.make!T();
	static if(extendsGodotBaseClass!T)
	{
		t.owner._godot_object = self;
	}
	
	godot.initialize(t);
	
	return cast(void*)t;
}

extern(C) package(godot) void destroyFunc(T)(godot_object self, void* methodData, void* userData)
{
	static import godot;
	
	T t = cast(T)userData;
	godot.finalize(t);
	Mallocator.instance.dispose(t);
}

