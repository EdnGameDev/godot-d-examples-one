module godot.visualscriptinputaction;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptInputAction
{
	static immutable string _GODOT_internal_name = "VisualScriptInputAction";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptInputAction other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptInputAction opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptInputAction _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptInputAction");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptInputAction)(constructor());
	}
	enum Mode : int
	{
		MODE_JUST_PRESSED = 2,
		MODE_PRESSED = 0,
		MODE_JUST_RELEASED = 3,
		MODE_RELEASED = 1,
	}
	enum int MODE_JUST_PRESSED = 2;
	enum int MODE_PRESSED = 0;
	enum int MODE_JUST_RELEASED = 3;
	enum int MODE_RELEASED = 1;
	package(godot) static GodotMethod!(void, String) _GODOT_set_action_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action_name") = _GODOT_set_action_name;
	void set_action_name(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_action_name.bind("VisualScriptInputAction", "set_action_name");
		ptrcall!(void)(_GODOT_set_action_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_action_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_name") = _GODOT_get_action_name;
	String get_action_name() const
	{
		_GODOT_get_action_name.bind("VisualScriptInputAction", "get_action_name");
		return ptrcall!(String)(_GODOT_get_action_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action_mode") = _GODOT_set_action_mode;
	void set_action_mode(in int mode)
	{
		_GODOT_set_action_mode.bind("VisualScriptInputAction", "set_action_mode");
		ptrcall!(void)(_GODOT_set_action_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptInputAction.Mode) _GODOT_get_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_mode") = _GODOT_get_action_mode;
	VisualScriptInputAction.Mode get_action_mode() const
	{
		_GODOT_get_action_mode.bind("VisualScriptInputAction", "get_action_mode");
		return ptrcall!(VisualScriptInputAction.Mode)(_GODOT_get_action_mode, _godot_object);
	}
}
