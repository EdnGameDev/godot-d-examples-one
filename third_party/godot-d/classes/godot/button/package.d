module godot.button;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.basebutton;
import godot.texture;
@GodotBaseClass struct Button
{
	static immutable string _GODOT_internal_name = "Button";
public:
	union { godot_object _godot_object; BaseButton base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Button other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Button opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Button _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Button");
		if(constructor is null) return typeof(this).init;
		return cast(Button)(constructor());
	}
	enum TextAlign : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
	}
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("Button", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text() const
	{
		_GODOT_get_text.bind("Button", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_button_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_icon") = _GODOT_set_button_icon;
	void set_button_icon(in Texture texture)
	{
		_GODOT_set_button_icon.bind("Button", "set_button_icon");
		ptrcall!(void)(_GODOT_set_button_icon, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_button_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_icon") = _GODOT_get_button_icon;
	Texture get_button_icon() const
	{
		_GODOT_get_button_icon.bind("Button", "get_button_icon");
		return ptrcall!(Texture)(_GODOT_get_button_icon, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flat;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flat") = _GODOT_set_flat;
	void set_flat(in bool enabled)
	{
		_GODOT_set_flat.bind("Button", "set_flat");
		ptrcall!(void)(_GODOT_set_flat, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_text") = _GODOT_set_clip_text;
	void set_clip_text(in bool enabled)
	{
		_GODOT_set_clip_text.bind("Button", "set_clip_text");
		ptrcall!(void)(_GODOT_set_clip_text, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_clip_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clip_text") = _GODOT_get_clip_text;
	bool get_clip_text() const
	{
		_GODOT_get_clip_text.bind("Button", "get_clip_text");
		return ptrcall!(bool)(_GODOT_get_clip_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text_align") = _GODOT_set_text_align;
	void set_text_align(in int _align)
	{
		_GODOT_set_text_align.bind("Button", "set_text_align");
		ptrcall!(void)(_GODOT_set_text_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(Button.TextAlign) _GODOT_get_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text_align") = _GODOT_get_text_align;
	Button.TextAlign get_text_align() const
	{
		_GODOT_get_text_align.bind("Button", "get_text_align");
		return ptrcall!(Button.TextAlign)(_GODOT_get_text_align, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flat;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flat") = _GODOT_is_flat;
	bool is_flat() const
	{
		_GODOT_is_flat.bind("Button", "is_flat");
		return ptrcall!(bool)(_GODOT_is_flat, _godot_object);
	}
}
