module godot.inputmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.inputevent;
@GodotBaseClass struct InputMapSingleton
{
	static immutable string _GODOT_internal_name = "InputMap";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "InputMap";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputMapSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputMapSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputMapSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputMap");
		if(constructor is null) return typeof(this).init;
		return cast(InputMapSingleton)(constructor());
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_action") = _GODOT_has_action;
	bool has_action(StringArg0)(in StringArg0 action) const
	{
		_GODOT_has_action.bind("InputMap", "has_action");
		return ptrcall!(bool)(_GODOT_has_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_actions;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_actions") = _GODOT_get_actions;
	Array get_actions()
	{
		_GODOT_get_actions.bind("InputMap", "get_actions");
		return ptrcall!(Array)(_GODOT_get_actions, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_action") = _GODOT_add_action;
	void add_action(StringArg0)(in StringArg0 action)
	{
		_GODOT_add_action.bind("InputMap", "add_action");
		ptrcall!(void)(_GODOT_add_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_action") = _GODOT_erase_action;
	void erase_action(StringArg0)(in StringArg0 action)
	{
		_GODOT_erase_action.bind("InputMap", "erase_action");
		ptrcall!(void)(_GODOT_erase_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String, InputEvent) _GODOT_action_add_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_add_event") = _GODOT_action_add_event;
	void action_add_event(StringArg0)(in StringArg0 action, in InputEvent event)
	{
		_GODOT_action_add_event.bind("InputMap", "action_add_event");
		ptrcall!(void)(_GODOT_action_add_event, _godot_object, action, event);
	}
	package(godot) static GodotMethod!(bool, String, InputEvent) _GODOT_action_has_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_has_event") = _GODOT_action_has_event;
	bool action_has_event(StringArg0)(in StringArg0 action, in InputEvent event)
	{
		_GODOT_action_has_event.bind("InputMap", "action_has_event");
		return ptrcall!(bool)(_GODOT_action_has_event, _godot_object, action, event);
	}
	package(godot) static GodotMethod!(void, String, InputEvent) _GODOT_action_erase_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_erase_event") = _GODOT_action_erase_event;
	void action_erase_event(StringArg0)(in StringArg0 action, in InputEvent event)
	{
		_GODOT_action_erase_event.bind("InputMap", "action_erase_event");
		ptrcall!(void)(_GODOT_action_erase_event, _godot_object, action, event);
	}
	package(godot) static GodotMethod!(Array, String) _GODOT_get_action_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_list") = _GODOT_get_action_list;
	Array get_action_list(StringArg0)(in StringArg0 action)
	{
		_GODOT_get_action_list.bind("InputMap", "get_action_list");
		return ptrcall!(Array)(_GODOT_get_action_list, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, InputEvent, String) _GODOT_event_is_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "event_is_action") = _GODOT_event_is_action;
	bool event_is_action(StringArg1)(in InputEvent event, in StringArg1 action) const
	{
		_GODOT_event_is_action.bind("InputMap", "event_is_action");
		return ptrcall!(bool)(_GODOT_event_is_action, _godot_object, event, action);
	}
	package(godot) static GodotMethod!(void) _GODOT_load_from_globals;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_from_globals") = _GODOT_load_from_globals;
	void load_from_globals()
	{
		_GODOT_load_from_globals.bind("InputMap", "load_from_globals");
		ptrcall!(void)(_GODOT_load_from_globals, _godot_object);
	}
}
@property pragma(inline, true)
InputMapSingleton InputMap()
{
	return InputMapSingleton._GODOT_singleton();
}
