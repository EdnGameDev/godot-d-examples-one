module godot.inputeventkey;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputeventwithmodifiers;
@GodotBaseClass struct InputEventKey
{
	static immutable string _GODOT_internal_name = "InputEventKey";
public:
	union { godot_object _godot_object; InputEventWithModifiers base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventKey other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventKey opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventKey _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventKey");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventKey)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	void set_pressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventKey", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_scancode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scancode") = _GODOT_set_scancode;
	void set_scancode(in int scancode)
	{
		_GODOT_set_scancode.bind("InputEventKey", "set_scancode");
		ptrcall!(void)(_GODOT_set_scancode, _godot_object, scancode);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_scancode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scancode") = _GODOT_get_scancode;
	int get_scancode() const
	{
		_GODOT_get_scancode.bind("InputEventKey", "get_scancode");
		return ptrcall!(int)(_GODOT_get_scancode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_unicode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unicode") = _GODOT_set_unicode;
	void set_unicode(in int unicode)
	{
		_GODOT_set_unicode.bind("InputEventKey", "set_unicode");
		ptrcall!(void)(_GODOT_set_unicode, _godot_object, unicode);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_unicode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unicode") = _GODOT_get_unicode;
	int get_unicode() const
	{
		_GODOT_get_unicode.bind("InputEventKey", "get_unicode");
		return ptrcall!(int)(_GODOT_get_unicode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_echo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_echo") = _GODOT_set_echo;
	void set_echo(in bool echo)
	{
		_GODOT_set_echo.bind("InputEventKey", "set_echo");
		ptrcall!(void)(_GODOT_set_echo, _godot_object, echo);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_scancode_with_modifiers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scancode_with_modifiers") = _GODOT_get_scancode_with_modifiers;
	int get_scancode_with_modifiers() const
	{
		_GODOT_get_scancode_with_modifiers.bind("InputEventKey", "get_scancode_with_modifiers");
		return ptrcall!(int)(_GODOT_get_scancode_with_modifiers, _godot_object);
	}
}
