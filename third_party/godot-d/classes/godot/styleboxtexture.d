module godot.styleboxtexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.stylebox;
import godot.resource;
@GodotBaseClass struct StyleBoxTexture
{
	static immutable string _GODOT_internal_name = "StyleBoxTexture";
public:
	union { godot_object _godot_object; StyleBox base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StyleBoxTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StyleBoxTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StyleBoxTexture");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxTexture)(constructor());
	}
	enum AxisStretchMode : int
	{
		AXIS_STRETCH_MODE_TILE_FIT = 2,
		AXIS_STRETCH_MODE_STRETCH = 0,
		AXIS_STRETCH_MODE_TILE = 1,
	}
	enum int AXIS_STRETCH_MODE_TILE_FIT = 2;
	enum int AXIS_STRETCH_MODE_STRETCH = 0;
	enum int AXIS_STRETCH_MODE_TILE = 1;
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Resource texture)
	{
		_GODOT_set_texture.bind("StyleBoxTexture", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Resource get_texture() const
	{
		_GODOT_get_texture.bind("StyleBoxTexture", "get_texture");
		return ptrcall!(Resource)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	void set_normal_map(in Resource normal_map)
	{
		_GODOT_set_normal_map.bind("StyleBoxTexture", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, normal_map);
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	Resource get_normal_map() const
	{
		_GODOT_get_normal_map.bind("StyleBoxTexture", "get_normal_map");
		return ptrcall!(Resource)(_GODOT_get_normal_map, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin_size") = _GODOT_set_margin_size;
	void set_margin_size(in int margin, in float size)
	{
		_GODOT_set_margin_size.bind("StyleBoxTexture", "set_margin_size");
		ptrcall!(void)(_GODOT_set_margin_size, _godot_object, margin, size);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin_size") = _GODOT_get_margin_size;
	float get_margin_size(in int margin) const
	{
		_GODOT_get_margin_size.bind("StyleBoxTexture", "get_margin_size");
		return ptrcall!(float)(_GODOT_get_margin_size, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_expand_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_size") = _GODOT_set_expand_margin_size;
	void set_expand_margin_size(in int margin, in float size)
	{
		_GODOT_set_expand_margin_size.bind("StyleBoxTexture", "set_expand_margin_size");
		ptrcall!(void)(_GODOT_set_expand_margin_size, _godot_object, margin, size);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_expand_margin_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_all") = _GODOT_set_expand_margin_all;
	void set_expand_margin_all(in float size)
	{
		_GODOT_set_expand_margin_all.bind("StyleBoxTexture", "set_expand_margin_all");
		ptrcall!(void)(_GODOT_set_expand_margin_all, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, float, float, float, float) _GODOT_set_expand_margin_individual;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_individual") = _GODOT_set_expand_margin_individual;
	void set_expand_margin_individual(in float size_left, in float size_top, in float size_right, in float size_bottom)
	{
		_GODOT_set_expand_margin_individual.bind("StyleBoxTexture", "set_expand_margin_individual");
		ptrcall!(void)(_GODOT_set_expand_margin_individual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_expand_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_margin_size") = _GODOT_get_expand_margin_size;
	float get_expand_margin_size(in int margin) const
	{
		_GODOT_get_expand_margin_size.bind("StyleBoxTexture", "get_expand_margin_size");
		return ptrcall!(float)(_GODOT_get_expand_margin_size, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	void set_region_rect(in Rect2 region)
	{
		_GODOT_set_region_rect.bind("StyleBoxTexture", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, region);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	Rect2 get_region_rect() const
	{
		_GODOT_get_region_rect.bind("StyleBoxTexture", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_center") = _GODOT_set_draw_center;
	void set_draw_center(in bool enable)
	{
		_GODOT_set_draw_center.bind("StyleBoxTexture", "set_draw_center");
		ptrcall!(void)(_GODOT_set_draw_center, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_center_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_center_enabled") = _GODOT_is_draw_center_enabled;
	bool is_draw_center_enabled() const
	{
		_GODOT_is_draw_center_enabled.bind("StyleBoxTexture", "is_draw_center_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_center_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_modulate") = _GODOT_set_modulate;
	void set_modulate(in Color color)
	{
		_GODOT_set_modulate.bind("StyleBoxTexture", "set_modulate");
		ptrcall!(void)(_GODOT_set_modulate, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modulate") = _GODOT_get_modulate;
	Color get_modulate() const
	{
		_GODOT_get_modulate.bind("StyleBoxTexture", "get_modulate");
		return ptrcall!(Color)(_GODOT_get_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_axis_stretch_mode") = _GODOT_set_h_axis_stretch_mode;
	void set_h_axis_stretch_mode(in int mode)
	{
		_GODOT_set_h_axis_stretch_mode.bind("StyleBoxTexture", "set_h_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_h_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(StyleBoxTexture.AxisStretchMode) _GODOT_get_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_axis_stretch_mode") = _GODOT_get_h_axis_stretch_mode;
	StyleBoxTexture.AxisStretchMode get_h_axis_stretch_mode() const
	{
		_GODOT_get_h_axis_stretch_mode.bind("StyleBoxTexture", "get_h_axis_stretch_mode");
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(_GODOT_get_h_axis_stretch_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_axis_stretch_mode") = _GODOT_set_v_axis_stretch_mode;
	void set_v_axis_stretch_mode(in int mode)
	{
		_GODOT_set_v_axis_stretch_mode.bind("StyleBoxTexture", "set_v_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_v_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(StyleBoxTexture.AxisStretchMode) _GODOT_get_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_axis_stretch_mode") = _GODOT_get_v_axis_stretch_mode;
	StyleBoxTexture.AxisStretchMode get_v_axis_stretch_mode() const
	{
		_GODOT_get_v_axis_stretch_mode.bind("StyleBoxTexture", "get_v_axis_stretch_mode");
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(_GODOT_get_v_axis_stretch_mode, _godot_object);
	}
}
