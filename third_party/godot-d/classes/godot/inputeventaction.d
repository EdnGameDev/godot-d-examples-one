module godot.inputeventaction;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct InputEventAction
{
	static immutable string _GODOT_internal_name = "InputEventAction";
public:
	union { godot_object _godot_object; InputEvent base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventAction other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventAction opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventAction _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventAction");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventAction)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action") = _GODOT_set_action;
	void set_action(StringArg0)(in StringArg0 action)
	{
		_GODOT_set_action.bind("InputEventAction", "set_action");
		ptrcall!(void)(_GODOT_set_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action") = _GODOT_get_action;
	String get_action() const
	{
		_GODOT_get_action.bind("InputEventAction", "get_action");
		return ptrcall!(String)(_GODOT_get_action, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	void set_pressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventAction", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
}
