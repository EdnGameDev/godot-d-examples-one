module godot.visualscriptbasictypeconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptBasicTypeConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptBasicTypeConstant";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptBasicTypeConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptBasicTypeConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptBasicTypeConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptBasicTypeConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptBasicTypeConstant)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type") = _GODOT_set_basic_type;
	void set_basic_type(in int name)
	{
		_GODOT_set_basic_type.bind("VisualScriptBasicTypeConstant", "set_basic_type");
		ptrcall!(void)(_GODOT_set_basic_type, _godot_object, name);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type") = _GODOT_get_basic_type;
	Variant.Type get_basic_type() const
	{
		_GODOT_get_basic_type.bind("VisualScriptBasicTypeConstant", "get_basic_type");
		return ptrcall!(Variant.Type)(_GODOT_get_basic_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_basic_type_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type_constant") = _GODOT_set_basic_type_constant;
	void set_basic_type_constant(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_basic_type_constant.bind("VisualScriptBasicTypeConstant", "set_basic_type_constant");
		ptrcall!(void)(_GODOT_set_basic_type_constant, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_basic_type_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type_constant") = _GODOT_get_basic_type_constant;
	String get_basic_type_constant() const
	{
		_GODOT_get_basic_type_constant.bind("VisualScriptBasicTypeConstant", "get_basic_type_constant");
		return ptrcall!(String)(_GODOT_get_basic_type_constant, _godot_object);
	}
}
