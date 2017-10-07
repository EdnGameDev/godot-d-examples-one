module godot.basebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.control;
import godot.inputevent;
import godot.shortcut;
import godot.buttongroup;
@GodotBaseClass struct BaseButton
{
	static immutable string _GODOT_internal_name = "BaseButton";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BaseButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BaseButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BaseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BaseButton");
		if(constructor is null) return typeof(this).init;
		return cast(BaseButton)(constructor());
	}
	enum ActionMode : int
	{
		ACTION_MODE_BUTTON_RELEASE = 1,
		ACTION_MODE_BUTTON_PRESS = 0,
	}
	enum DrawMode : int
	{
		DRAW_HOVER = 2,
		DRAW_PRESSED = 1,
		DRAW_DISABLED = 3,
		DRAW_NORMAL = 0,
	}
	enum int DRAW_HOVER = 2;
	enum int ACTION_MODE_BUTTON_RELEASE = 1;
	enum int DRAW_PRESSED = 1;
	enum int ACTION_MODE_BUTTON_PRESS = 0;
	enum int DRAW_DISABLED = 3;
	enum int DRAW_NORMAL = 0;
	package(godot) static GodotMethod!(void) _GODOT__pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_pressed") = _GODOT__pressed;
	void _pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toggled") = _GODOT__toggled;
	void _toggled(in bool pressed)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pressed);
		String _GODOT_method_name = String("_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	void _unhandled_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	void set_pressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("BaseButton", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pressed") = _GODOT_is_pressed;
	bool is_pressed() const
	{
		_GODOT_is_pressed.bind("BaseButton", "is_pressed");
		return ptrcall!(bool)(_GODOT_is_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hovered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hovered") = _GODOT_is_hovered;
	bool is_hovered() const
	{
		_GODOT_is_hovered.bind("BaseButton", "is_hovered");
		return ptrcall!(bool)(_GODOT_is_hovered, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_toggle_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_toggle_mode") = _GODOT_set_toggle_mode;
	void set_toggle_mode(in bool enabled)
	{
		_GODOT_set_toggle_mode.bind("BaseButton", "set_toggle_mode");
		ptrcall!(void)(_GODOT_set_toggle_mode, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_toggle_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_toggle_mode") = _GODOT_is_toggle_mode;
	bool is_toggle_mode() const
	{
		_GODOT_is_toggle_mode.bind("BaseButton", "is_toggle_mode");
		return ptrcall!(bool)(_GODOT_is_toggle_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	void set_disabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("BaseButton", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	bool is_disabled() const
	{
		_GODOT_is_disabled.bind("BaseButton", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action_mode") = _GODOT_set_action_mode;
	void set_action_mode(in int mode)
	{
		_GODOT_set_action_mode.bind("BaseButton", "set_action_mode");
		ptrcall!(void)(_GODOT_set_action_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(BaseButton.ActionMode) _GODOT_get_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_mode") = _GODOT_get_action_mode;
	BaseButton.ActionMode get_action_mode() const
	{
		_GODOT_get_action_mode.bind("BaseButton", "get_action_mode");
		return ptrcall!(BaseButton.ActionMode)(_GODOT_get_action_mode, _godot_object);
	}
	package(godot) static GodotMethod!(BaseButton.DrawMode) _GODOT_get_draw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_mode") = _GODOT_get_draw_mode;
	BaseButton.DrawMode get_draw_mode() const
	{
		_GODOT_get_draw_mode.bind("BaseButton", "get_draw_mode");
		return ptrcall!(BaseButton.DrawMode)(_GODOT_get_draw_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_enabled_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled_focus_mode") = _GODOT_set_enabled_focus_mode;
	void set_enabled_focus_mode(in int mode)
	{
		_GODOT_set_enabled_focus_mode.bind("BaseButton", "set_enabled_focus_mode");
		ptrcall!(void)(_GODOT_set_enabled_focus_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Control.FocusMode) _GODOT_get_enabled_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_enabled_focus_mode") = _GODOT_get_enabled_focus_mode;
	Control.FocusMode get_enabled_focus_mode() const
	{
		_GODOT_get_enabled_focus_mode.bind("BaseButton", "get_enabled_focus_mode");
		return ptrcall!(Control.FocusMode)(_GODOT_get_enabled_focus_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, ShortCut) _GODOT_set_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shortcut") = _GODOT_set_shortcut;
	void set_shortcut(in ShortCut shortcut)
	{
		_GODOT_set_shortcut.bind("BaseButton", "set_shortcut");
		ptrcall!(void)(_GODOT_set_shortcut, _godot_object, shortcut);
	}
	package(godot) static GodotMethod!(ShortCut) _GODOT_get_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shortcut") = _GODOT_get_shortcut;
	ShortCut get_shortcut() const
	{
		_GODOT_get_shortcut.bind("BaseButton", "get_shortcut");
		return ptrcall!(ShortCut)(_GODOT_get_shortcut, _godot_object);
	}
	package(godot) static GodotMethod!(void, ButtonGroup) _GODOT_set_button_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_group") = _GODOT_set_button_group;
	void set_button_group(in ButtonGroup button_group)
	{
		_GODOT_set_button_group.bind("BaseButton", "set_button_group");
		ptrcall!(void)(_GODOT_set_button_group, _godot_object, button_group);
	}
	package(godot) static GodotMethod!(ButtonGroup) _GODOT_get_button_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_group") = _GODOT_get_button_group;
	ButtonGroup get_button_group() const
	{
		_GODOT_get_button_group.bind("BaseButton", "get_button_group");
		return ptrcall!(ButtonGroup)(_GODOT_get_button_group, _godot_object);
	}
}
