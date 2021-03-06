module godot.buttongroup;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.basebutton;
@GodotBaseClass struct ButtonGroup
{
	static immutable string _GODOT_internal_name = "ButtonGroup";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ButtonGroup other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ButtonGroup opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ButtonGroup _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ButtonGroup");
		if(constructor is null) return typeof(this).init;
		return cast(ButtonGroup)(constructor());
	}
	package(godot) static GodotMethod!(BaseButton) _GODOT_get_pressed_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressed_button") = _GODOT_get_pressed_button;
	BaseButton get_pressed_button()
	{
		_GODOT_get_pressed_button.bind("ButtonGroup", "get_pressed_button");
		return ptrcall!(BaseButton)(_GODOT_get_pressed_button, _godot_object);
	}
}
