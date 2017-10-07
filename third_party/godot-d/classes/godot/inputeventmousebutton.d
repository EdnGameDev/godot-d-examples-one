module godot.inputeventmousebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputeventmouse;
@GodotBaseClass struct InputEventMouseButton
{
	static immutable string _GODOT_internal_name = "InputEventMouseButton";
public:
	union { godot_object _godot_object; InputEventMouse base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventMouseButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouseButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMouseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventMouseButton");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouseButton)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_factor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_factor") = _GODOT_set_factor;
	void set_factor(in float factor)
	{
		_GODOT_set_factor.bind("InputEventMouseButton", "set_factor");
		ptrcall!(void)(_GODOT_set_factor, _godot_object, factor);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_factor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_factor") = _GODOT_get_factor;
	float get_factor()
	{
		_GODOT_get_factor.bind("InputEventMouseButton", "get_factor");
		return ptrcall!(float)(_GODOT_get_factor, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_index") = _GODOT_set_button_index;
	void set_button_index(in int button_index)
	{
		_GODOT_set_button_index.bind("InputEventMouseButton", "set_button_index");
		ptrcall!(void)(_GODOT_set_button_index, _godot_object, button_index);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_index") = _GODOT_get_button_index;
	int get_button_index() const
	{
		_GODOT_get_button_index.bind("InputEventMouseButton", "get_button_index");
		return ptrcall!(int)(_GODOT_get_button_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	void set_pressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventMouseButton", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_doubleclick;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_doubleclick") = _GODOT_set_doubleclick;
	void set_doubleclick(in bool doubleclick)
	{
		_GODOT_set_doubleclick.bind("InputEventMouseButton", "set_doubleclick");
		ptrcall!(void)(_GODOT_set_doubleclick, _godot_object, doubleclick);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_doubleclick;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_doubleclick") = _GODOT_is_doubleclick;
	bool is_doubleclick() const
	{
		_GODOT_is_doubleclick.bind("InputEventMouseButton", "is_doubleclick");
		return ptrcall!(bool)(_GODOT_is_doubleclick, _godot_object);
	}
}
