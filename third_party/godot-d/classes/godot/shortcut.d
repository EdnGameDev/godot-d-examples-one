module godot.shortcut;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.inputevent;
@GodotBaseClass struct ShortCut
{
	static immutable string _GODOT_internal_name = "ShortCut";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ShortCut other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ShortCut opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ShortCut _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ShortCut");
		if(constructor is null) return typeof(this).init;
		return cast(ShortCut)(constructor());
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_set_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shortcut") = _GODOT_set_shortcut;
	void set_shortcut(in InputEvent event)
	{
		_GODOT_set_shortcut.bind("ShortCut", "set_shortcut");
		ptrcall!(void)(_GODOT_set_shortcut, _godot_object, event);
	}
	package(godot) static GodotMethod!(InputEvent) _GODOT_get_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shortcut") = _GODOT_get_shortcut;
	InputEvent get_shortcut() const
	{
		_GODOT_get_shortcut.bind("ShortCut", "get_shortcut");
		return ptrcall!(InputEvent)(_GODOT_get_shortcut, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_valid") = _GODOT_is_valid;
	bool is_valid() const
	{
		_GODOT_is_valid.bind("ShortCut", "is_valid");
		return ptrcall!(bool)(_GODOT_is_valid, _godot_object);
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_is_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shortcut") = _GODOT_is_shortcut;
	bool is_shortcut(in InputEvent event) const
	{
		_GODOT_is_shortcut.bind("ShortCut", "is_shortcut");
		return ptrcall!(bool)(_GODOT_is_shortcut, _godot_object, event);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_as_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_text") = _GODOT_get_as_text;
	String get_as_text() const
	{
		_GODOT_get_as_text.bind("ShortCut", "get_as_text");
		return ptrcall!(String)(_GODOT_get_as_text, _godot_object);
	}
}
