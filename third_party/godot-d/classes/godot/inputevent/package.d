module godot.inputevent;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct InputEvent
{
	static immutable string _GODOT_internal_name = "InputEvent";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEvent other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEvent opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEvent _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEvent");
		if(constructor is null) return typeof(this).init;
		return cast(InputEvent)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_id") = _GODOT_set_id;
	void set_id(in int id)
	{
		_GODOT_set_id.bind("InputEvent", "set_id");
		ptrcall!(void)(_GODOT_set_id, _godot_object, id);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_id") = _GODOT_get_id;
	int get_id() const
	{
		_GODOT_get_id.bind("InputEvent", "get_id");
		return ptrcall!(int)(_GODOT_get_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_device;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_device") = _GODOT_set_device;
	void set_device(in int device)
	{
		_GODOT_set_device.bind("InputEvent", "set_device");
		ptrcall!(void)(_GODOT_set_device, _godot_object, device);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_device;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_device") = _GODOT_get_device;
	int get_device() const
	{
		_GODOT_get_device.bind("InputEvent", "get_device");
		return ptrcall!(int)(_GODOT_get_device, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pressed") = _GODOT_is_pressed;
	bool is_pressed() const
	{
		_GODOT_is_pressed.bind("InputEvent", "is_pressed");
		return ptrcall!(bool)(_GODOT_is_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action") = _GODOT_is_action;
	bool is_action(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action.bind("InputEvent", "is_action");
		return ptrcall!(bool)(_GODOT_is_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_pressed") = _GODOT_is_action_pressed;
	bool is_action_pressed(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_pressed.bind("InputEvent", "is_action_pressed");
		return ptrcall!(bool)(_GODOT_is_action_pressed, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_released;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_released") = _GODOT_is_action_released;
	bool is_action_released(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_released.bind("InputEvent", "is_action_released");
		return ptrcall!(bool)(_GODOT_is_action_released, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_echo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_echo") = _GODOT_is_echo;
	bool is_echo() const
	{
		_GODOT_is_echo.bind("InputEvent", "is_echo");
		return ptrcall!(bool)(_GODOT_is_echo, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_as_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "as_text") = _GODOT_as_text;
	String as_text() const
	{
		_GODOT_as_text.bind("InputEvent", "as_text");
		return ptrcall!(String)(_GODOT_as_text, _godot_object);
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_action_match;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_match") = _GODOT_action_match;
	bool action_match(in InputEvent event) const
	{
		_GODOT_action_match.bind("InputEvent", "action_match");
		return ptrcall!(bool)(_GODOT_action_match, _godot_object, event);
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_shortcut_match;
	package(godot) alias _GODOT_methodBindInfo(string name : "shortcut_match") = _GODOT_shortcut_match;
	bool shortcut_match(in InputEvent event) const
	{
		_GODOT_shortcut_match.bind("InputEvent", "shortcut_match");
		return ptrcall!(bool)(_GODOT_shortcut_match, _godot_object, event);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_action_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_type") = _GODOT_is_action_type;
	bool is_action_type() const
	{
		_GODOT_is_action_type.bind("InputEvent", "is_action_type");
		return ptrcall!(bool)(_GODOT_is_action_type, _godot_object);
	}
	package(godot) static GodotMethod!(InputEvent, Transform2D, Vector2) _GODOT_xformed_by;
	package(godot) alias _GODOT_methodBindInfo(string name : "xformed_by") = _GODOT_xformed_by;
	InputEvent xformed_by(in Transform2D xform, in Vector2 local_ofs = Vector2(0, 0)) const
	{
		_GODOT_xformed_by.bind("InputEvent", "xformed_by");
		return ptrcall!(InputEvent)(_GODOT_xformed_by, _godot_object, xform, local_ofs);
	}
}
