module godot.inputeventmouse;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.inputeventwithmodifiers;
@GodotBaseClass struct InputEventMouse
{
	static immutable string _GODOT_internal_name = "InputEventMouse";
public:
	union { godot_object _godot_object; InputEventWithModifiers base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventMouse other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouse opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMouse _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventMouse");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouse)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_button_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_mask") = _GODOT_set_button_mask;
	void set_button_mask(in int button_mask)
	{
		_GODOT_set_button_mask.bind("InputEventMouse", "set_button_mask");
		ptrcall!(void)(_GODOT_set_button_mask, _godot_object, button_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_button_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_mask") = _GODOT_get_button_mask;
	int get_button_mask() const
	{
		_GODOT_get_button_mask.bind("InputEventMouse", "get_button_mask");
		return ptrcall!(int)(_GODOT_get_button_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	void set_position(in Vector2 position)
	{
		_GODOT_set_position.bind("InputEventMouse", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector2 get_position() const
	{
		_GODOT_get_position.bind("InputEventMouse", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_position") = _GODOT_set_global_position;
	void set_global_position(in Vector2 global_position)
	{
		_GODOT_set_global_position.bind("InputEventMouse", "set_global_position");
		ptrcall!(void)(_GODOT_set_global_position, _godot_object, global_position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_position") = _GODOT_get_global_position;
	Vector2 get_global_position() const
	{
		_GODOT_get_global_position.bind("InputEventMouse", "get_global_position");
		return ptrcall!(Vector2)(_GODOT_get_global_position, _godot_object);
	}
}
