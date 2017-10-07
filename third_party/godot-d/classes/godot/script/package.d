module godot.script;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct Script
{
	static immutable string _GODOT_internal_name = "Script";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Script other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Script opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Script _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Script");
		if(constructor is null) return typeof(this).init;
		return cast(Script)(constructor());
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_instance") = _GODOT_can_instance;
	bool can_instance() const
	{
		_GODOT_can_instance.bind("Script", "can_instance");
		return ptrcall!(bool)(_GODOT_can_instance, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_instance_has;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_has") = _GODOT_instance_has;
	bool instance_has(in GodotObject base_object) const
	{
		_GODOT_instance_has.bind("Script", "instance_has");
		return ptrcall!(bool)(_GODOT_instance_has, _godot_object, base_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_source_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_source_code") = _GODOT_has_source_code;
	bool has_source_code() const
	{
		_GODOT_has_source_code.bind("Script", "has_source_code");
		return ptrcall!(bool)(_GODOT_has_source_code, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_source_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_source_code") = _GODOT_get_source_code;
	String get_source_code() const
	{
		_GODOT_get_source_code.bind("Script", "get_source_code");
		return ptrcall!(String)(_GODOT_get_source_code, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_source_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_source_code") = _GODOT_set_source_code;
	void set_source_code(StringArg0)(in StringArg0 source)
	{
		_GODOT_set_source_code.bind("Script", "set_source_code");
		ptrcall!(void)(_GODOT_set_source_code, _godot_object, source);
	}
	package(godot) static GodotMethod!(GodotError, bool) _GODOT_reload;
	package(godot) alias _GODOT_methodBindInfo(string name : "reload") = _GODOT_reload;
	GodotError reload(in bool keep_state = false)
	{
		_GODOT_reload.bind("Script", "reload");
		return ptrcall!(GodotError)(_GODOT_reload, _godot_object, keep_state);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_script_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_script_signal") = _GODOT_has_script_signal;
	bool has_script_signal(StringArg0)(in StringArg0 signal_name) const
	{
		_GODOT_has_script_signal.bind("Script", "has_script_signal");
		return ptrcall!(bool)(_GODOT_has_script_signal, _godot_object, signal_name);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tool;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tool") = _GODOT_is_tool;
	bool is_tool() const
	{
		_GODOT_is_tool.bind("Script", "is_tool");
		return ptrcall!(bool)(_GODOT_is_tool, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_node_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_type") = _GODOT_get_node_type;
	String get_node_type() const
	{
		_GODOT_get_node_type.bind("Script", "get_node_type");
		return ptrcall!(String)(_GODOT_get_node_type, _godot_object);
	}
}
