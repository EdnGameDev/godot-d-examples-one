module godot.visualscriptnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
import godot.visualscript;
@GodotBaseClass struct VisualScriptNode
{
	static immutable string _GODOT_internal_name = "VisualScriptNode";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptNode)(constructor());
	}
	package(godot) static GodotMethod!(VisualScript) _GODOT_get_visual_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visual_script") = _GODOT_get_visual_script;
	VisualScript get_visual_script() const
	{
		_GODOT_get_visual_script.bind("VisualScriptNode", "get_visual_script");
		return ptrcall!(VisualScript)(_GODOT_get_visual_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_default_input_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_input_value") = _GODOT_set_default_input_value;
	void set_default_input_value(VariantArg1)(in int port_idx, in VariantArg1 value)
	{
		_GODOT_set_default_input_value.bind("VisualScriptNode", "set_default_input_value");
		ptrcall!(void)(_GODOT_set_default_input_value, _godot_object, port_idx, value);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_default_input_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_input_value") = _GODOT_get_default_input_value;
	Variant get_default_input_value(in int port_idx) const
	{
		_GODOT_get_default_input_value.bind("VisualScriptNode", "get_default_input_value");
		return ptrcall!(Variant)(_GODOT_get_default_input_value, _godot_object, port_idx);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_default_input_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_default_input_values") = _GODOT__set_default_input_values;
	void _set_default_input_values(in Array values)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(values);
		String _GODOT_method_name = String("_set_default_input_values");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_default_input_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_default_input_values") = _GODOT__get_default_input_values;
	Array _get_default_input_values() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_default_input_values");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
