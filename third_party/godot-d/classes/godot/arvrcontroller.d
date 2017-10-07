module godot.arvrcontroller;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.arvrpositionaltracker;
@GodotBaseClass struct ARVRController
{
	static immutable string _GODOT_internal_name = "ARVRController";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRController other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRController opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRController _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRController");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRController)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_controller_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_controller_id") = _GODOT_set_controller_id;
	void set_controller_id(in int controller_id)
	{
		_GODOT_set_controller_id.bind("ARVRController", "set_controller_id");
		ptrcall!(void)(_GODOT_set_controller_id, _godot_object, controller_id);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_controller_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_controller_id") = _GODOT_get_controller_id;
	int get_controller_id() const
	{
		_GODOT_get_controller_id.bind("ARVRController", "get_controller_id");
		return ptrcall!(int)(_GODOT_get_controller_id, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_controller_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_controller_name") = _GODOT_get_controller_name;
	String get_controller_name() const
	{
		_GODOT_get_controller_name.bind("ARVRController", "get_controller_name");
		return ptrcall!(String)(_GODOT_get_controller_name, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_joystick_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joystick_id") = _GODOT_get_joystick_id;
	int get_joystick_id() const
	{
		_GODOT_get_joystick_id.bind("ARVRController", "get_joystick_id");
		return ptrcall!(int)(_GODOT_get_joystick_id, _godot_object);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_is_button_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_button_pressed") = _GODOT_is_button_pressed;
	int is_button_pressed(in int button) const
	{
		_GODOT_is_button_pressed.bind("ARVRController", "is_button_pressed");
		return ptrcall!(int)(_GODOT_is_button_pressed, _godot_object, button);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_joystick_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joystick_axis") = _GODOT_get_joystick_axis;
	float get_joystick_axis(in int axis) const
	{
		_GODOT_get_joystick_axis.bind("ARVRController", "get_joystick_axis");
		return ptrcall!(float)(_GODOT_get_joystick_axis, _godot_object, axis);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_is_active") = _GODOT_get_is_active;
	bool get_is_active() const
	{
		_GODOT_get_is_active.bind("ARVRController", "get_is_active");
		return ptrcall!(bool)(_GODOT_get_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRPositionalTracker.TrackerHand) _GODOT_get_hand;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hand") = _GODOT_get_hand;
	ARVRPositionalTracker.TrackerHand get_hand() const
	{
		_GODOT_get_hand.bind("ARVRController", "get_hand");
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(_GODOT_get_hand, _godot_object);
	}
}
