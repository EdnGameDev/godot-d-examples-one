module godot.theme;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.texture;
import godot.stylebox;
import godot.font;
@GodotBaseClass struct Theme
{
	static immutable string _GODOT_internal_name = "Theme";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Theme other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Theme opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Theme _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Theme");
		if(constructor is null) return typeof(this).init;
		return cast(Theme)(constructor());
	}
	package(godot) static GodotMethod!(void, String, String, Texture) _GODOT_set_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon") = _GODOT_set_icon;
	void set_icon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in Texture texture)
	{
		_GODOT_set_icon.bind("Theme", "set_icon");
		ptrcall!(void)(_GODOT_set_icon, _godot_object, name, type, texture);
	}
	package(godot) static GodotMethod!(Texture, String, String) _GODOT_get_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon") = _GODOT_get_icon;
	Texture get_icon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_icon.bind("Theme", "get_icon");
		return ptrcall!(Texture)(_GODOT_get_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_icon") = _GODOT_has_icon;
	bool has_icon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_icon.bind("Theme", "has_icon");
		return ptrcall!(bool)(_GODOT_has_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_icon") = _GODOT_clear_icon;
	void clear_icon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_icon.bind("Theme", "clear_icon");
		ptrcall!(void)(_GODOT_clear_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_icon_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_list") = _GODOT_get_icon_list;
	PoolStringArray get_icon_list(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_icon_list.bind("Theme", "get_icon_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_icon_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String, StyleBox) _GODOT_set_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stylebox") = _GODOT_set_stylebox;
	void set_stylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in StyleBox texture)
	{
		_GODOT_set_stylebox.bind("Theme", "set_stylebox");
		ptrcall!(void)(_GODOT_set_stylebox, _godot_object, name, type, texture);
	}
	package(godot) static GodotMethod!(StyleBox, String, String) _GODOT_get_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox") = _GODOT_get_stylebox;
	StyleBox get_stylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_stylebox.bind("Theme", "get_stylebox");
		return ptrcall!(StyleBox)(_GODOT_get_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_stylebox") = _GODOT_has_stylebox;
	bool has_stylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_stylebox.bind("Theme", "has_stylebox");
		return ptrcall!(bool)(_GODOT_has_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_stylebox") = _GODOT_clear_stylebox;
	void clear_stylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_stylebox.bind("Theme", "clear_stylebox");
		ptrcall!(void)(_GODOT_clear_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_stylebox_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox_list") = _GODOT_get_stylebox_list;
	PoolStringArray get_stylebox_list(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_stylebox_list.bind("Theme", "get_stylebox_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_stylebox_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_stylebox_types;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox_types") = _GODOT_get_stylebox_types;
	PoolStringArray get_stylebox_types() const
	{
		_GODOT_get_stylebox_types.bind("Theme", "get_stylebox_types");
		return ptrcall!(PoolStringArray)(_GODOT_get_stylebox_types, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, String, Font) _GODOT_set_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_font") = _GODOT_set_font;
	void set_font(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in Font font)
	{
		_GODOT_set_font.bind("Theme", "set_font");
		ptrcall!(void)(_GODOT_set_font, _godot_object, name, type, font);
	}
	package(godot) static GodotMethod!(Font, String, String) _GODOT_get_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font") = _GODOT_get_font;
	Font get_font(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_font.bind("Theme", "get_font");
		return ptrcall!(Font)(_GODOT_get_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_font") = _GODOT_has_font;
	bool has_font(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_font.bind("Theme", "has_font");
		return ptrcall!(bool)(_GODOT_has_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_font") = _GODOT_clear_font;
	void clear_font(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_font.bind("Theme", "clear_font");
		ptrcall!(void)(_GODOT_clear_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_font_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font_list") = _GODOT_get_font_list;
	PoolStringArray get_font_list(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_font_list.bind("Theme", "get_font_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_font_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in Color color)
	{
		_GODOT_set_color.bind("Theme", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, name, type, color);
	}
	package(godot) static GodotMethod!(Color, String, String) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_color.bind("Theme", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_color") = _GODOT_has_color;
	bool has_color(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_color.bind("Theme", "has_color");
		return ptrcall!(bool)(_GODOT_has_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_color") = _GODOT_clear_color;
	void clear_color(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_color.bind("Theme", "clear_color");
		ptrcall!(void)(_GODOT_clear_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_color_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color_list") = _GODOT_get_color_list;
	PoolStringArray get_color_list(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_color_list.bind("Theme", "get_color_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_color_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String, int) _GODOT_set_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant") = _GODOT_set_constant;
	void set_constant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in int constant)
	{
		_GODOT_set_constant.bind("Theme", "set_constant");
		ptrcall!(void)(_GODOT_set_constant, _godot_object, name, type, constant);
	}
	package(godot) static GodotMethod!(int, String, String) _GODOT_get_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant") = _GODOT_get_constant;
	int get_constant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_constant.bind("Theme", "get_constant");
		return ptrcall!(int)(_GODOT_get_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_constant") = _GODOT_has_constant;
	bool has_constant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_constant.bind("Theme", "has_constant");
		return ptrcall!(bool)(_GODOT_has_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_constant") = _GODOT_clear_constant;
	void clear_constant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_constant.bind("Theme", "clear_constant");
		ptrcall!(void)(_GODOT_clear_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_constant_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_list") = _GODOT_get_constant_list;
	PoolStringArray get_constant_list(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_constant_list.bind("Theme", "get_constant_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_constant_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, Font) _GODOT_set_default_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_font") = _GODOT_set_default_font;
	void set_default_font(in Font font)
	{
		_GODOT_set_default_font.bind("Theme", "set_default_font");
		ptrcall!(void)(_GODOT_set_default_font, _godot_object, font);
	}
	package(godot) static GodotMethod!(Font) _GODOT_get_default_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_font") = _GODOT_get_default_font;
	Font get_default_font() const
	{
		_GODOT_get_default_font.bind("Theme", "get_default_font");
		return ptrcall!(Font)(_GODOT_get_default_font, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_type_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_type_list") = _GODOT_get_type_list;
	PoolStringArray get_type_list(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_type_list.bind("Theme", "get_type_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_type_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void) _GODOT__emit_theme_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_emit_theme_changed") = _GODOT__emit_theme_changed;
	void _emit_theme_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_emit_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_copy_default_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy_default_theme") = _GODOT_copy_default_theme;
	void copy_default_theme()
	{
		_GODOT_copy_default_theme.bind("Theme", "copy_default_theme");
		ptrcall!(void)(_GODOT_copy_default_theme, _godot_object);
	}
}
