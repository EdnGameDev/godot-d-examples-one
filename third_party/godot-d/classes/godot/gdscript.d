module godot.gdscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.script;
@GodotBaseClass struct GDScript
{
	static immutable string _GODOT_internal_name = "GDScript";
public:
	union { godot_object _godot_object; Script base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GDScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GDScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDScript");
		if(constructor is null) return typeof(this).init;
		return cast(GDScript)(constructor());
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
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_as_byte_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_byte_code") = _GODOT_get_as_byte_code;
	PoolByteArray get_as_byte_code() const
	{
		_GODOT_get_as_byte_code.bind("GDScript", "get_as_byte_code");
		return ptrcall!(PoolByteArray)(_GODOT_get_as_byte_code, _godot_object);
	}
}
