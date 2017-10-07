module godot.visualscriptlocalvarset;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptLocalVarSet
{
	static immutable string _GODOT_internal_name = "VisualScriptLocalVarSet";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptLocalVarSet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptLocalVarSet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptLocalVarSet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptLocalVarSet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptLocalVarSet)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_var_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_var_name") = _GODOT_set_var_name;
	void set_var_name(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_var_name.bind("VisualScriptLocalVarSet", "set_var_name");
		ptrcall!(void)(_GODOT_set_var_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_var_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var_name") = _GODOT_get_var_name;
	String get_var_name() const
	{
		_GODOT_get_var_name.bind("VisualScriptLocalVarSet", "get_var_name");
		return ptrcall!(String)(_GODOT_get_var_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_var_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_var_type") = _GODOT_set_var_type;
	void set_var_type(in int type)
	{
		_GODOT_set_var_type.bind("VisualScriptLocalVarSet", "set_var_type");
		ptrcall!(void)(_GODOT_set_var_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_var_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var_type") = _GODOT_get_var_type;
	Variant.Type get_var_type() const
	{
		_GODOT_get_var_type.bind("VisualScriptLocalVarSet", "get_var_type");
		return ptrcall!(Variant.Type)(_GODOT_get_var_type, _godot_object);
	}
}
