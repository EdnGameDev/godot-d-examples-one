module godot.styleboxflat;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.stylebox;
@GodotBaseClass struct StyleBoxFlat
{
	static immutable string _GODOT_internal_name = "StyleBoxFlat";
public:
	union { godot_object _godot_object; StyleBox base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StyleBoxFlat other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxFlat opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StyleBoxFlat _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StyleBoxFlat");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxFlat)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bg_color") = _GODOT_set_bg_color;
	void set_bg_color(in Color color)
	{
		_GODOT_set_bg_color.bind("StyleBoxFlat", "set_bg_color");
		ptrcall!(void)(_GODOT_set_bg_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bg_color") = _GODOT_get_bg_color;
	Color get_bg_color() const
	{
		_GODOT_get_bg_color.bind("StyleBoxFlat", "get_bg_color");
		return ptrcall!(Color)(_GODOT_get_bg_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_border_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_color") = _GODOT_set_border_color;
	void set_border_color(in Color color)
	{
		_GODOT_set_border_color.bind("StyleBoxFlat", "set_border_color");
		ptrcall!(void)(_GODOT_set_border_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_border_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_color") = _GODOT_get_border_color;
	Color get_border_color() const
	{
		_GODOT_get_border_color.bind("StyleBoxFlat", "get_border_color");
		return ptrcall!(Color)(_GODOT_get_border_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_border_width_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_width_all") = _GODOT_set_border_width_all;
	void set_border_width_all(in int width)
	{
		_GODOT_set_border_width_all.bind("StyleBoxFlat", "set_border_width_all");
		ptrcall!(void)(_GODOT_set_border_width_all, _godot_object, width);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_border_width_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_width_min") = _GODOT_get_border_width_min;
	int get_border_width_min() const
	{
		_GODOT_get_border_width_min.bind("StyleBoxFlat", "get_border_width_min");
		return ptrcall!(int)(_GODOT_get_border_width_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_border_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_width") = _GODOT_set_border_width;
	void set_border_width(in int margin, in int width)
	{
		_GODOT_set_border_width.bind("StyleBoxFlat", "set_border_width");
		ptrcall!(void)(_GODOT_set_border_width, _godot_object, margin, width);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_border_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_width") = _GODOT_get_border_width;
	int get_border_width(in int margin) const
	{
		_GODOT_get_border_width.bind("StyleBoxFlat", "get_border_width");
		return ptrcall!(int)(_GODOT_get_border_width, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_border_blend;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_blend") = _GODOT_set_border_blend;
	void set_border_blend(in bool blend)
	{
		_GODOT_set_border_blend.bind("StyleBoxFlat", "set_border_blend");
		ptrcall!(void)(_GODOT_set_border_blend, _godot_object, blend);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_border_blend;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_blend") = _GODOT_get_border_blend;
	bool get_border_blend() const
	{
		_GODOT_get_border_blend.bind("StyleBoxFlat", "get_border_blend");
		return ptrcall!(bool)(_GODOT_get_border_blend, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, int, int) _GODOT_set_corner_radius_individual;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_radius_individual") = _GODOT_set_corner_radius_individual;
	void set_corner_radius_individual(in int radius_top_left, in int radius_top_right, in int radius_botton_right, in int radius_bottom_left)
	{
		_GODOT_set_corner_radius_individual.bind("StyleBoxFlat", "set_corner_radius_individual");
		ptrcall!(void)(_GODOT_set_corner_radius_individual, _godot_object, radius_top_left, radius_top_right, radius_botton_right, radius_bottom_left);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_corner_radius_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_radius_all") = _GODOT_set_corner_radius_all;
	void set_corner_radius_all(in int radius)
	{
		_GODOT_set_corner_radius_all.bind("StyleBoxFlat", "set_corner_radius_all");
		ptrcall!(void)(_GODOT_set_corner_radius_all, _godot_object, radius);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_corner_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_radius") = _GODOT_set_corner_radius;
	void set_corner_radius(in int corner, in int radius)
	{
		_GODOT_set_corner_radius.bind("StyleBoxFlat", "set_corner_radius");
		ptrcall!(void)(_GODOT_set_corner_radius, _godot_object, corner, radius);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_corner_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_corner_radius") = _GODOT_get_corner_radius;
	int get_corner_radius(in int corner) const
	{
		_GODOT_get_corner_radius.bind("StyleBoxFlat", "get_corner_radius");
		return ptrcall!(int)(_GODOT_get_corner_radius, _godot_object, corner);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_expand_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin") = _GODOT_set_expand_margin;
	void set_expand_margin(in int margin, in float size)
	{
		_GODOT_set_expand_margin.bind("StyleBoxFlat", "set_expand_margin");
		ptrcall!(void)(_GODOT_set_expand_margin, _godot_object, margin, size);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_expand_margin_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_all") = _GODOT_set_expand_margin_all;
	void set_expand_margin_all(in float size)
	{
		_GODOT_set_expand_margin_all.bind("StyleBoxFlat", "set_expand_margin_all");
		ptrcall!(void)(_GODOT_set_expand_margin_all, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, float, float, float, float) _GODOT_set_expand_margin_individual;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_individual") = _GODOT_set_expand_margin_individual;
	void set_expand_margin_individual(in float size_left, in float size_top, in float size_right, in float size_bottom)
	{
		_GODOT_set_expand_margin_individual.bind("StyleBoxFlat", "set_expand_margin_individual");
		ptrcall!(void)(_GODOT_set_expand_margin_individual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_expand_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_margin") = _GODOT_get_expand_margin;
	float get_expand_margin(in int margin) const
	{
		_GODOT_get_expand_margin.bind("StyleBoxFlat", "get_expand_margin");
		return ptrcall!(float)(_GODOT_get_expand_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_center") = _GODOT_set_draw_center;
	void set_draw_center(in bool draw_center)
	{
		_GODOT_set_draw_center.bind("StyleBoxFlat", "set_draw_center");
		ptrcall!(void)(_GODOT_set_draw_center, _godot_object, draw_center);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_center_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_center_enabled") = _GODOT_is_draw_center_enabled;
	bool is_draw_center_enabled() const
	{
		_GODOT_is_draw_center_enabled.bind("StyleBoxFlat", "is_draw_center_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_center_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_color") = _GODOT_set_shadow_color;
	void set_shadow_color(in Color color)
	{
		_GODOT_set_shadow_color.bind("StyleBoxFlat", "set_shadow_color");
		ptrcall!(void)(_GODOT_set_shadow_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_color") = _GODOT_get_shadow_color;
	Color get_shadow_color() const
	{
		_GODOT_get_shadow_color.bind("StyleBoxFlat", "get_shadow_color");
		return ptrcall!(Color)(_GODOT_get_shadow_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_size") = _GODOT_set_shadow_size;
	void set_shadow_size(in int size)
	{
		_GODOT_set_shadow_size.bind("StyleBoxFlat", "set_shadow_size");
		ptrcall!(void)(_GODOT_set_shadow_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_shadow_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_size") = _GODOT_get_shadow_size;
	int get_shadow_size() const
	{
		_GODOT_get_shadow_size.bind("StyleBoxFlat", "get_shadow_size");
		return ptrcall!(int)(_GODOT_get_shadow_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_anti_aliased;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anti_aliased") = _GODOT_set_anti_aliased;
	void set_anti_aliased(in bool anti_aliased)
	{
		_GODOT_set_anti_aliased.bind("StyleBoxFlat", "set_anti_aliased");
		ptrcall!(void)(_GODOT_set_anti_aliased, _godot_object, anti_aliased);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_anti_aliased;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_anti_aliased") = _GODOT_is_anti_aliased;
	bool is_anti_aliased() const
	{
		_GODOT_is_anti_aliased.bind("StyleBoxFlat", "is_anti_aliased");
		return ptrcall!(bool)(_GODOT_is_anti_aliased, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_aa_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_aa_size") = _GODOT_set_aa_size;
	void set_aa_size(in int size)
	{
		_GODOT_set_aa_size.bind("StyleBoxFlat", "set_aa_size");
		ptrcall!(void)(_GODOT_set_aa_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_aa_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aa_size") = _GODOT_get_aa_size;
	int get_aa_size() const
	{
		_GODOT_get_aa_size.bind("StyleBoxFlat", "get_aa_size");
		return ptrcall!(int)(_GODOT_get_aa_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_corner_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_detail") = _GODOT_set_corner_detail;
	void set_corner_detail(in int detail)
	{
		_GODOT_set_corner_detail.bind("StyleBoxFlat", "set_corner_detail");
		ptrcall!(void)(_GODOT_set_corner_detail, _godot_object, detail);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_corner_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_corner_detail") = _GODOT_get_corner_detail;
	int get_corner_detail() const
	{
		_GODOT_get_corner_detail.bind("StyleBoxFlat", "get_corner_detail");
		return ptrcall!(int)(_GODOT_get_corner_detail, _godot_object);
	}
}
