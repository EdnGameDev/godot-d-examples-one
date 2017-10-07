module godot.visualscriptconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptConstant";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptConstant)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_constant_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_type") = _GODOT_set_constant_type;
	void set_constant_type(in int type)
	{
		_GODOT_set_constant_type.bind("VisualScriptConstant", "set_constant_type");
		ptrcall!(void)(_GODOT_set_constant_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_constant_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_type") = _GODOT_get_constant_type;
	Variant.Type get_constant_type() const
	{
		_GODOT_get_constant_type.bind("VisualScriptConstant", "get_constant_type");
		return ptrcall!(Variant.Type)(_GODOT_get_constant_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_set_constant_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_value") = _GODOT_set_constant_value;
	void set_constant_value(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_set_constant_value.bind("VisualScriptConstant", "set_constant_value");
		ptrcall!(void)(_GODOT_set_constant_value, _godot_object, value);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_constant_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_value") = _GODOT_get_constant_value;
	Variant get_constant_value() const
	{
		_GODOT_get_constant_value.bind("VisualScriptConstant", "get_constant_value");
		return ptrcall!(Variant)(_GODOT_get_constant_value, _godot_object);
	}
}
