module godot.input;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
import godot.inputevent;
@GodotBaseClass struct InputSingleton
{
	static immutable string _GODOT_internal_name = "Input";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Input";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Input");
		if(constructor is null) return typeof(this).init;
		return cast(InputSingleton)(constructor());
	}
	enum MouseMode : int
	{
		MOUSE_MODE_CONFINED = 3,
		MOUSE_MODE_VISIBLE = 0,
		MOUSE_MODE_HIDDEN = 1,
		MOUSE_MODE_CAPTURED = 2,
	}
	enum int MOUSE_MODE_CONFINED = 3;
	enum int MOUSE_MODE_VISIBLE = 0;
	enum int MOUSE_MODE_HIDDEN = 1;
	enum int MOUSE_MODE_CAPTURED = 2;
	package(godot) static GodotMethod!(bool, int) _GODOT_is_key_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_key_pressed") = _GODOT_is_key_pressed;
	bool is_key_pressed(in int scancode) const
	{
		_GODOT_is_key_pressed.bind("Input", "is_key_pressed");
		return ptrcall!(bool)(_GODOT_is_key_pressed, _godot_object, scancode);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_mouse_button_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_mouse_button_pressed") = _GODOT_is_mouse_button_pressed;
	bool is_mouse_button_pressed(in int button) const
	{
		_GODOT_is_mouse_button_pressed.bind("Input", "is_mouse_button_pressed");
		return ptrcall!(bool)(_GODOT_is_mouse_button_pressed, _godot_object, button);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_is_joy_button_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_joy_button_pressed") = _GODOT_is_joy_button_pressed;
	bool is_joy_button_pressed(in int device, in int button) const
	{
		_GODOT_is_joy_button_pressed.bind("Input", "is_joy_button_pressed");
		return ptrcall!(bool)(_GODOT_is_joy_button_pressed, _godot_object, device, button);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_pressed") = _GODOT_is_action_pressed;
	bool is_action_pressed(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_pressed.bind("Input", "is_action_pressed");
		return ptrcall!(bool)(_GODOT_is_action_pressed, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_just_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_just_pressed") = _GODOT_is_action_just_pressed;
	bool is_action_just_pressed(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_just_pressed.bind("Input", "is_action_just_pressed");
		return ptrcall!(bool)(_GODOT_is_action_just_pressed, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_just_released;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_just_released") = _GODOT_is_action_just_released;
	bool is_action_just_released(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_just_released.bind("Input", "is_action_just_released");
		return ptrcall!(bool)(_GODOT_is_action_just_released, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_add_joy_mapping;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_joy_mapping") = _GODOT_add_joy_mapping;
	void add_joy_mapping(StringArg0)(in StringArg0 mapping, in bool update_existing = false)
	{
		_GODOT_add_joy_mapping.bind("Input", "add_joy_mapping");
		ptrcall!(void)(_GODOT_add_joy_mapping, _godot_object, mapping, update_existing);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_joy_mapping;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_joy_mapping") = _GODOT_remove_joy_mapping;
	void remove_joy_mapping(StringArg0)(in StringArg0 guid)
	{
		_GODOT_remove_joy_mapping.bind("Input", "remove_joy_mapping");
		ptrcall!(void)(_GODOT_remove_joy_mapping, _godot_object, guid);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_joy_known;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_joy_known") = _GODOT_is_joy_known;
	bool is_joy_known(in int device)
	{
		_GODOT_is_joy_known.bind("Input", "is_joy_known");
		return ptrcall!(bool)(_GODOT_is_joy_known, _godot_object, device);
	}
	package(godot) static GodotMethod!(float, int, int) _GODOT_get_joy_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_axis") = _GODOT_get_joy_axis;
	float get_joy_axis(in int device, in int axis) const
	{
		_GODOT_get_joy_axis.bind("Input", "get_joy_axis");
		return ptrcall!(float)(_GODOT_get_joy_axis, _godot_object, device, axis);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_joy_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_name") = _GODOT_get_joy_name;
	String get_joy_name(in int device)
	{
		_GODOT_get_joy_name.bind("Input", "get_joy_name");
		return ptrcall!(String)(_GODOT_get_joy_name, _godot_object, device);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_joy_guid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_guid") = _GODOT_get_joy_guid;
	String get_joy_guid(in int device) const
	{
		_GODOT_get_joy_guid.bind("Input", "get_joy_guid");
		return ptrcall!(String)(_GODOT_get_joy_guid, _godot_object, device);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_connected_joypads;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connected_joypads") = _GODOT_get_connected_joypads;
	Array get_connected_joypads()
	{
		_GODOT_get_connected_joypads.bind("Input", "get_connected_joypads");
		return ptrcall!(Array)(_GODOT_get_connected_joypads, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_joy_vibration_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_vibration_strength") = _GODOT_get_joy_vibration_strength;
	Vector2 get_joy_vibration_strength(in int device)
	{
		_GODOT_get_joy_vibration_strength.bind("Input", "get_joy_vibration_strength");
		return ptrcall!(Vector2)(_GODOT_get_joy_vibration_strength, _godot_object, device);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_joy_vibration_duration;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_vibration_duration") = _GODOT_get_joy_vibration_duration;
	float get_joy_vibration_duration(in int device)
	{
		_GODOT_get_joy_vibration_duration.bind("Input", "get_joy_vibration_duration");
		return ptrcall!(float)(_GODOT_get_joy_vibration_duration, _godot_object, device);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_joy_button_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_button_string") = _GODOT_get_joy_button_string;
	String get_joy_button_string(in int button_index)
	{
		_GODOT_get_joy_button_string.bind("Input", "get_joy_button_string");
		return ptrcall!(String)(_GODOT_get_joy_button_string, _godot_object, button_index);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_get_joy_button_index_from_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_button_index_from_string") = _GODOT_get_joy_button_index_from_string;
	int get_joy_button_index_from_string(StringArg0)(in StringArg0 button)
	{
		_GODOT_get_joy_button_index_from_string.bind("Input", "get_joy_button_index_from_string");
		return ptrcall!(int)(_GODOT_get_joy_button_index_from_string, _godot_object, button);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_joy_axis_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_axis_string") = _GODOT_get_joy_axis_string;
	String get_joy_axis_string(in int axis_index)
	{
		_GODOT_get_joy_axis_string.bind("Input", "get_joy_axis_string");
		return ptrcall!(String)(_GODOT_get_joy_axis_string, _godot_object, axis_index);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_get_joy_axis_index_from_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_axis_index_from_string") = _GODOT_get_joy_axis_index_from_string;
	int get_joy_axis_index_from_string(StringArg0)(in StringArg0 axis)
	{
		_GODOT_get_joy_axis_index_from_string.bind("Input", "get_joy_axis_index_from_string");
		return ptrcall!(int)(_GODOT_get_joy_axis_index_from_string, _godot_object, axis);
	}
	package(godot) static GodotMethod!(void, int, float, float, float) _GODOT_start_joy_vibration;
	package(godot) alias _GODOT_methodBindInfo(string name : "start_joy_vibration") = _GODOT_start_joy_vibration;
	void start_joy_vibration(in int device, in float weak_magnitude, in float strong_magnitude, in float duration = 0)
	{
		_GODOT_start_joy_vibration.bind("Input", "start_joy_vibration");
		ptrcall!(void)(_GODOT_start_joy_vibration, _godot_object, device, weak_magnitude, strong_magnitude, duration);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_stop_joy_vibration;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop_joy_vibration") = _GODOT_stop_joy_vibration;
	void stop_joy_vibration(in int device)
	{
		_GODOT_stop_joy_vibration.bind("Input", "stop_joy_vibration");
		ptrcall!(void)(_GODOT_stop_joy_vibration, _godot_object, device);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity") = _GODOT_get_gravity;
	Vector3 get_gravity() const
	{
		_GODOT_get_gravity.bind("Input", "get_gravity");
		return ptrcall!(Vector3)(_GODOT_get_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_accelerometer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_accelerometer") = _GODOT_get_accelerometer;
	Vector3 get_accelerometer() const
	{
		_GODOT_get_accelerometer.bind("Input", "get_accelerometer");
		return ptrcall!(Vector3)(_GODOT_get_accelerometer, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_magnetometer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_magnetometer") = _GODOT_get_magnetometer;
	Vector3 get_magnetometer() const
	{
		_GODOT_get_magnetometer.bind("Input", "get_magnetometer");
		return ptrcall!(Vector3)(_GODOT_get_magnetometer, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gyroscope;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gyroscope") = _GODOT_get_gyroscope;
	Vector3 get_gyroscope() const
	{
		_GODOT_get_gyroscope.bind("Input", "get_gyroscope");
		return ptrcall!(Vector3)(_GODOT_get_gyroscope, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_last_mouse_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_last_mouse_speed") = _GODOT_get_last_mouse_speed;
	Vector2 get_last_mouse_speed() const
	{
		_GODOT_get_last_mouse_speed.bind("Input", "get_last_mouse_speed");
		return ptrcall!(Vector2)(_GODOT_get_last_mouse_speed, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_mouse_button_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_button_mask") = _GODOT_get_mouse_button_mask;
	int get_mouse_button_mask() const
	{
		_GODOT_get_mouse_button_mask.bind("Input", "get_mouse_button_mask");
		return ptrcall!(int)(_GODOT_get_mouse_button_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mouse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mouse_mode") = _GODOT_set_mouse_mode;
	void set_mouse_mode(in int mode)
	{
		_GODOT_set_mouse_mode.bind("Input", "set_mouse_mode");
		ptrcall!(void)(_GODOT_set_mouse_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Input.MouseMode) _GODOT_get_mouse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_mode") = _GODOT_get_mouse_mode;
	Input.MouseMode get_mouse_mode() const
	{
		_GODOT_get_mouse_mode.bind("Input", "get_mouse_mode");
		return ptrcall!(Input.MouseMode)(_GODOT_get_mouse_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_warp_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "warp_mouse_position") = _GODOT_warp_mouse_position;
	void warp_mouse_position(in Vector2 to)
	{
		_GODOT_warp_mouse_position.bind("Input", "warp_mouse_position");
		ptrcall!(void)(_GODOT_warp_mouse_position, _godot_object, to);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_action_press;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_press") = _GODOT_action_press;
	void action_press(StringArg0)(in StringArg0 action)
	{
		_GODOT_action_press.bind("Input", "action_press");
		ptrcall!(void)(_GODOT_action_press, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_action_release;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_release") = _GODOT_action_release;
	void action_release(StringArg0)(in StringArg0 action)
	{
		_GODOT_action_release.bind("Input", "action_release");
		ptrcall!(void)(_GODOT_action_release, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, Resource, Vector2) _GODOT_set_custom_mouse_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_mouse_cursor") = _GODOT_set_custom_mouse_cursor;
	void set_custom_mouse_cursor(in Resource image, in Vector2 hotspot = Vector2(0, 0))
	{
		_GODOT_set_custom_mouse_cursor.bind("Input", "set_custom_mouse_cursor");
		ptrcall!(void)(_GODOT_set_custom_mouse_cursor, _godot_object, image, hotspot);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_parse_input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "parse_input_event") = _GODOT_parse_input_event;
	void parse_input_event(in InputEvent event)
	{
		_GODOT_parse_input_event.bind("Input", "parse_input_event");
		ptrcall!(void)(_GODOT_parse_input_event, _godot_object, event);
	}
}
@property pragma(inline, true)
InputSingleton Input()
{
	return InputSingleton._GODOT_singleton();
}
