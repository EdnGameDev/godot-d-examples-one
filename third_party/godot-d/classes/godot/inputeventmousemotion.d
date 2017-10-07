module godot.inputeventmousemotion;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputeventmouse;
@GodotBaseClass struct InputEventMouseMotion
{
	static immutable string _GODOT_internal_name = "InputEventMouseMotion";
public:
	union { godot_object _godot_object; InputEventMouse base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventMouseMotion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouseMotion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMouseMotion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventMouseMotion");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouseMotion)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_relative") = _GODOT_set_relative;
	void set_relative(in Vector2 relative)
	{
		_GODOT_set_relative.bind("InputEventMouseMotion", "set_relative");
		ptrcall!(void)(_GODOT_set_relative, _godot_object, relative);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_relative") = _GODOT_get_relative;
	Vector2 get_relative() const
	{
		_GODOT_get_relative.bind("InputEventMouseMotion", "get_relative");
		return ptrcall!(Vector2)(_GODOT_get_relative, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed") = _GODOT_set_speed;
	void set_speed(in Vector2 speed)
	{
		_GODOT_set_speed.bind("InputEventMouseMotion", "set_speed");
		ptrcall!(void)(_GODOT_set_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed") = _GODOT_get_speed;
	Vector2 get_speed() const
	{
		_GODOT_get_speed.bind("InputEventMouseMotion", "get_speed");
		return ptrcall!(Vector2)(_GODOT_get_speed, _godot_object);
	}
}
