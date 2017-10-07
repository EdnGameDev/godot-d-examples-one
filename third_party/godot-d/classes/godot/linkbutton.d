module godot.linkbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.basebutton;
@GodotBaseClass struct LinkButton
{
	static immutable string _GODOT_internal_name = "LinkButton";
public:
	union { godot_object _godot_object; BaseButton base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in LinkButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LinkButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LinkButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LinkButton");
		if(constructor is null) return typeof(this).init;
		return cast(LinkButton)(constructor());
	}
	enum UnderlineMode : int
	{
		UNDERLINE_MODE_ALWAYS = 0,
		UNDERLINE_MODE_NEVER = 2,
		UNDERLINE_MODE_ON_HOVER = 1,
	}
	enum int UNDERLINE_MODE_ALWAYS = 0;
	enum int UNDERLINE_MODE_NEVER = 2;
	enum int UNDERLINE_MODE_ON_HOVER = 1;
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("LinkButton", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text() const
	{
		_GODOT_get_text.bind("LinkButton", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_underline_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_underline_mode") = _GODOT_set_underline_mode;
	void set_underline_mode(in int underline_mode)
	{
		_GODOT_set_underline_mode.bind("LinkButton", "set_underline_mode");
		ptrcall!(void)(_GODOT_set_underline_mode, _godot_object, underline_mode);
	}
	package(godot) static GodotMethod!(LinkButton.UnderlineMode) _GODOT_get_underline_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_underline_mode") = _GODOT_get_underline_mode;
	LinkButton.UnderlineMode get_underline_mode() const
	{
		_GODOT_get_underline_mode.bind("LinkButton", "get_underline_mode");
		return ptrcall!(LinkButton.UnderlineMode)(_GODOT_get_underline_mode, _godot_object);
	}
}
