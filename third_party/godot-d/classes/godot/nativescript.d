module godot.nativescript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.script;
import godot.gdnativelibrary;
@GodotBaseClass struct NativeScript
{
	static immutable string _GODOT_internal_name = "NativeScript";
public:
	union { godot_object _godot_object; Script base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NativeScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NativeScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NativeScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NativeScript");
		if(constructor is null) return typeof(this).init;
		return cast(NativeScript)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_class_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_class_name") = _GODOT_set_class_name;
	void set_class_name(StringArg0)(in StringArg0 class_name)
	{
		_GODOT_set_class_name.bind("NativeScript", "set_class_name");
		ptrcall!(void)(_GODOT_set_class_name, _godot_object, class_name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class_name") = _GODOT_get_class_name;
	String get_class_name() const
	{
		_GODOT_get_class_name.bind("NativeScript", "get_class_name");
		return ptrcall!(String)(_GODOT_get_class_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, GDNativeLibrary) _GODOT_set_library;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_library") = _GODOT_set_library;
	void set_library(in GDNativeLibrary library)
	{
		_GODOT_set_library.bind("NativeScript", "set_library");
		ptrcall!(void)(_GODOT_set_library, _godot_object, library);
	}
	package(godot) static GodotMethod!(GDNativeLibrary) _GODOT_get_library;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_library") = _GODOT_get_library;
	GDNativeLibrary get_library() const
	{
		_GODOT_get_library.bind("NativeScript", "get_library");
		return ptrcall!(GDNativeLibrary)(_GODOT_get_library, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject, GodotVarArgs) _GODOT__new;
	package(godot) alias _GODOT_methodBindInfo(string name : "new") = _GODOT__new;
	GodotObject _new(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("new");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(GodotObject);
	}
}
