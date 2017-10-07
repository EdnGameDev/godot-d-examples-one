module godot.dynamicfont;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.font;
import godot.dynamicfontdata;
@GodotBaseClass struct DynamicFont
{
	static immutable string _GODOT_internal_name = "DynamicFont";
public:
	union { godot_object _godot_object; Font base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in DynamicFont other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DynamicFont opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DynamicFont _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("DynamicFont");
		if(constructor is null) return typeof(this).init;
		return cast(DynamicFont)(constructor());
	}
	enum SpacingType : int
	{
		SPACING_CHAR = 2,
		SPACING_SPACE = 3,
		SPACING_TOP = 0,
		SPACING_BOTTOM = 1,
	}
	enum int SPACING_CHAR = 2;
	enum int SPACING_SPACE = 3;
	enum int SPACING_TOP = 0;
	enum int SPACING_BOTTOM = 1;
	package(godot) static GodotMethod!(void, DynamicFontData) _GODOT_set_font_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_font_data") = _GODOT_set_font_data;
	void set_font_data(in DynamicFontData data)
	{
		_GODOT_set_font_data.bind("DynamicFont", "set_font_data");
		ptrcall!(void)(_GODOT_set_font_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(DynamicFontData) _GODOT_get_font_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font_data") = _GODOT_get_font_data;
	DynamicFontData get_font_data() const
	{
		_GODOT_get_font_data.bind("DynamicFont", "get_font_data");
		return ptrcall!(DynamicFontData)(_GODOT_get_font_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in int data)
	{
		_GODOT_set_size.bind("DynamicFont", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, data);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	int get_size() const
	{
		_GODOT_get_size.bind("DynamicFont", "get_size");
		return ptrcall!(int)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_mipmaps") = _GODOT_set_use_mipmaps;
	void set_use_mipmaps(in bool enable)
	{
		_GODOT_set_use_mipmaps.bind("DynamicFont", "set_use_mipmaps");
		ptrcall!(void)(_GODOT_set_use_mipmaps, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_mipmaps") = _GODOT_get_use_mipmaps;
	bool get_use_mipmaps() const
	{
		_GODOT_get_use_mipmaps.bind("DynamicFont", "get_use_mipmaps");
		return ptrcall!(bool)(_GODOT_get_use_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_filter") = _GODOT_set_use_filter;
	void set_use_filter(in bool enable)
	{
		_GODOT_set_use_filter.bind("DynamicFont", "set_use_filter");
		ptrcall!(void)(_GODOT_set_use_filter, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_filter") = _GODOT_get_use_filter;
	bool get_use_filter() const
	{
		_GODOT_get_use_filter.bind("DynamicFont", "get_use_filter");
		return ptrcall!(bool)(_GODOT_get_use_filter, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_spacing;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spacing") = _GODOT_set_spacing;
	void set_spacing(in int type, in int value)
	{
		_GODOT_set_spacing.bind("DynamicFont", "set_spacing");
		ptrcall!(void)(_GODOT_set_spacing, _godot_object, type, value);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_spacing;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_spacing") = _GODOT_get_spacing;
	int get_spacing(in int type) const
	{
		_GODOT_get_spacing.bind("DynamicFont", "get_spacing");
		return ptrcall!(int)(_GODOT_get_spacing, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, DynamicFontData) _GODOT_add_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_fallback") = _GODOT_add_fallback;
	void add_fallback(in DynamicFontData data)
	{
		_GODOT_add_fallback.bind("DynamicFont", "add_fallback");
		ptrcall!(void)(_GODOT_add_fallback, _godot_object, data);
	}
	package(godot) static GodotMethod!(void, int, DynamicFontData) _GODOT_set_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fallback") = _GODOT_set_fallback;
	void set_fallback(in int idx, in DynamicFontData data)
	{
		_GODOT_set_fallback.bind("DynamicFont", "set_fallback");
		ptrcall!(void)(_GODOT_set_fallback, _godot_object, idx, data);
	}
	package(godot) static GodotMethod!(DynamicFontData, int) _GODOT_get_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback") = _GODOT_get_fallback;
	DynamicFontData get_fallback(in int idx) const
	{
		_GODOT_get_fallback.bind("DynamicFont", "get_fallback");
		return ptrcall!(DynamicFontData)(_GODOT_get_fallback, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_fallback") = _GODOT_remove_fallback;
	void remove_fallback(in int idx)
	{
		_GODOT_remove_fallback.bind("DynamicFont", "remove_fallback");
		ptrcall!(void)(_GODOT_remove_fallback, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_fallback_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback_count") = _GODOT_get_fallback_count;
	int get_fallback_count() const
	{
		_GODOT_get_fallback_count.bind("DynamicFont", "get_fallback_count");
		return ptrcall!(int)(_GODOT_get_fallback_count, _godot_object);
	}
}
