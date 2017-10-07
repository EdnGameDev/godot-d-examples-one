module godot.visualscriptclassconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptClassConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptClassConstant";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptClassConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptClassConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptClassConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptClassConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptClassConstant)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_class_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_class_constant") = _GODOT_set_class_constant;
	void set_class_constant(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_class_constant.bind("VisualScriptClassConstant", "set_class_constant");
		ptrcall!(void)(_GODOT_set_class_constant, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class_constant") = _GODOT_get_class_constant;
	String get_class_constant()
	{
		_GODOT_get_class_constant.bind("VisualScriptClassConstant", "get_class_constant");
		return ptrcall!(String)(_GODOT_get_class_constant, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	void set_base_type(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_base_type.bind("VisualScriptClassConstant", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	String get_base_type()
	{
		_GODOT_get_base_type.bind("VisualScriptClassConstant", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
}
