module godot.inputeventjoypadbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct InputEventJoypadButton
{
	static immutable string _GODOT_internal_name = "InputEventJoypadButton";
public:
	union { godot_object _godot_object; InputEvent base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventJoypadButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventJoypadButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventJoypadButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventJoypadButton");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventJoypadButton)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_index") = _GODOT_set_button_index;
	void set_button_index(in int button_index)
	{
		_GODOT_set_button_index.bind("InputEventJoypadButton", "set_button_index");
		ptrcall!(void)(_GODOT_set_button_index, _godot_object, button_index);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_index") = _GODOT_get_button_index;
	int get_button_index() const
	{
		_GODOT_get_button_index.bind("InputEventJoypadButton", "get_button_index");
		return ptrcall!(int)(_GODOT_get_button_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pressure;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressure") = _GODOT_set_pressure;
	void set_pressure(in float pressure)
	{
		_GODOT_set_pressure.bind("InputEventJoypadButton", "set_pressure");
		ptrcall!(void)(_GODOT_set_pressure, _godot_object, pressure);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pressure;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressure") = _GODOT_get_pressure;
	float get_pressure() const
	{
		_GODOT_get_pressure.bind("InputEventJoypadButton", "get_pressure");
		return ptrcall!(float)(_GODOT_get_pressure, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	void set_pressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventJoypadButton", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
}
