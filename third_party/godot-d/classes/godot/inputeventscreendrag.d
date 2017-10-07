module godot.inputeventscreendrag;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct InputEventScreenDrag
{
	static immutable string _GODOT_internal_name = "InputEventScreenDrag";
public:
	union { godot_object _godot_object; InputEvent base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventScreenDrag other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventScreenDrag opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventScreenDrag _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventScreenDrag");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventScreenDrag)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_index") = _GODOT_set_index;
	void set_index(in int index)
	{
		_GODOT_set_index.bind("InputEventScreenDrag", "set_index");
		ptrcall!(void)(_GODOT_set_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	int get_index() const
	{
		_GODOT_get_index.bind("InputEventScreenDrag", "get_index");
		return ptrcall!(int)(_GODOT_get_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	void set_position(in Vector2 position)
	{
		_GODOT_set_position.bind("InputEventScreenDrag", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector2 get_position() const
	{
		_GODOT_get_position.bind("InputEventScreenDrag", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_relative") = _GODOT_set_relative;
	void set_relative(in Vector2 relative)
	{
		_GODOT_set_relative.bind("InputEventScreenDrag", "set_relative");
		ptrcall!(void)(_GODOT_set_relative, _godot_object, relative);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_relative") = _GODOT_get_relative;
	Vector2 get_relative() const
	{
		_GODOT_get_relative.bind("InputEventScreenDrag", "get_relative");
		return ptrcall!(Vector2)(_GODOT_get_relative, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed") = _GODOT_set_speed;
	void set_speed(in Vector2 speed)
	{
		_GODOT_set_speed.bind("InputEventScreenDrag", "set_speed");
		ptrcall!(void)(_GODOT_set_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed") = _GODOT_get_speed;
	Vector2 get_speed() const
	{
		_GODOT_get_speed.bind("InputEventScreenDrag", "get_speed");
		return ptrcall!(Vector2)(_GODOT_get_speed, _godot_object);
	}
}
