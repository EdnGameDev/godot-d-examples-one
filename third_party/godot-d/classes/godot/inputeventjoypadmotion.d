module godot.inputeventjoypadmotion;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct InputEventJoypadMotion
{
	static immutable string _GODOT_internal_name = "InputEventJoypadMotion";
public:
	union { godot_object _godot_object; InputEvent base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventJoypadMotion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventJoypadMotion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventJoypadMotion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventJoypadMotion");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventJoypadMotion)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis") = _GODOT_set_axis;
	void set_axis(in int axis)
	{
		_GODOT_set_axis.bind("InputEventJoypadMotion", "set_axis");
		ptrcall!(void)(_GODOT_set_axis, _godot_object, axis);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis") = _GODOT_get_axis;
	int get_axis() const
	{
		_GODOT_get_axis.bind("InputEventJoypadMotion", "get_axis");
		return ptrcall!(int)(_GODOT_get_axis, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_axis_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_value") = _GODOT_set_axis_value;
	void set_axis_value(in float axis_value)
	{
		_GODOT_set_axis_value.bind("InputEventJoypadMotion", "set_axis_value");
		ptrcall!(void)(_GODOT_set_axis_value, _godot_object, axis_value);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_axis_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis_value") = _GODOT_get_axis_value;
	float get_axis_value() const
	{
		_GODOT_get_axis_value.bind("InputEventJoypadMotion", "get_axis_value");
		return ptrcall!(float)(_GODOT_get_axis_value, _godot_object);
	}
}
