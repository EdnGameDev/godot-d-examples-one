module godot.inputeventwithmodifiers;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.inputevent;
@GodotBaseClass struct InputEventWithModifiers
{
	static immutable string _GODOT_internal_name = "InputEventWithModifiers";
public:
	union { godot_object _godot_object; InputEvent base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InputEventWithModifiers other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventWithModifiers opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventWithModifiers _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventWithModifiers");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventWithModifiers)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_alt;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alt") = _GODOT_set_alt;
	void set_alt(in bool enable)
	{
		_GODOT_set_alt.bind("InputEventWithModifiers", "set_alt");
		ptrcall!(void)(_GODOT_set_alt, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_alt;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alt") = _GODOT_get_alt;
	bool get_alt() const
	{
		_GODOT_get_alt.bind("InputEventWithModifiers", "get_alt");
		return ptrcall!(bool)(_GODOT_get_alt, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shift;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shift") = _GODOT_set_shift;
	void set_shift(in bool enable)
	{
		_GODOT_set_shift.bind("InputEventWithModifiers", "set_shift");
		ptrcall!(void)(_GODOT_set_shift, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_shift;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shift") = _GODOT_get_shift;
	bool get_shift() const
	{
		_GODOT_get_shift.bind("InputEventWithModifiers", "get_shift");
		return ptrcall!(bool)(_GODOT_get_shift, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_control") = _GODOT_set_control;
	void set_control(in bool enable)
	{
		_GODOT_set_control.bind("InputEventWithModifiers", "set_control");
		ptrcall!(void)(_GODOT_set_control, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_control") = _GODOT_get_control;
	bool get_control() const
	{
		_GODOT_get_control.bind("InputEventWithModifiers", "get_control");
		return ptrcall!(bool)(_GODOT_get_control, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_metakey;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metakey") = _GODOT_set_metakey;
	void set_metakey(in bool enable)
	{
		_GODOT_set_metakey.bind("InputEventWithModifiers", "set_metakey");
		ptrcall!(void)(_GODOT_set_metakey, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_metakey;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metakey") = _GODOT_get_metakey;
	bool get_metakey() const
	{
		_GODOT_get_metakey.bind("InputEventWithModifiers", "get_metakey");
		return ptrcall!(bool)(_GODOT_get_metakey, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_command;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_command") = _GODOT_set_command;
	void set_command(in bool enable)
	{
		_GODOT_set_command.bind("InputEventWithModifiers", "set_command");
		ptrcall!(void)(_GODOT_set_command, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_command;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_command") = _GODOT_get_command;
	bool get_command() const
	{
		_GODOT_get_command.bind("InputEventWithModifiers", "get_command");
		return ptrcall!(bool)(_GODOT_get_command, _godot_object);
	}
}
