module godot.inputeventscreentouch;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct InputEventScreenTouch
{
	static immutable string _GODOT_internal_name = "InputEventScreenTouch";
public:
	union { godot_object _godot_object; InputEvent base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventScreenTouch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventScreenTouch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventScreenTouch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventScreenTouch");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventScreenTouch)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_index") = _GODOT_set_index;
	void set_index(in int index)
	{
		_GODOT_set_index.bind("InputEventScreenTouch", "set_index");
		ptrcall!(void)(_GODOT_set_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	int get_index() const
	{
		_GODOT_get_index.bind("InputEventScreenTouch", "get_index");
		return ptrcall!(int)(_GODOT_get_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	void set_position(in Vector2 position)
	{
		_GODOT_set_position.bind("InputEventScreenTouch", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector2 get_position() const
	{
		_GODOT_get_position.bind("InputEventScreenTouch", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	void set_pressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventScreenTouch", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
}
