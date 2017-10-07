module godot.ninepatchrect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
@GodotBaseClass struct NinePatchRect
{
	static immutable string _GODOT_internal_name = "NinePatchRect";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NinePatchRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NinePatchRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NinePatchRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NinePatchRect");
		if(constructor is null) return typeof(this).init;
		return cast(NinePatchRect)(constructor());
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
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("NinePatchRect", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("NinePatchRect", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_patch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_patch_margin") = _GODOT_set_patch_margin;
	void set_patch_margin(in int margin, in int value)
	{
		_GODOT_set_patch_margin.bind("NinePatchRect", "set_patch_margin");
		ptrcall!(void)(_GODOT_set_patch_margin, _godot_object, margin, value);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_patch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_patch_margin") = _GODOT_get_patch_margin;
	int get_patch_margin(in int margin) const
	{
		_GODOT_get_patch_margin.bind("NinePatchRect", "get_patch_margin");
		return ptrcall!(int)(_GODOT_get_patch_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	void set_region_rect(in Rect2 rect)
	{
		_GODOT_set_region_rect.bind("NinePatchRect", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	Rect2 get_region_rect() const
	{
		_GODOT_get_region_rect.bind("NinePatchRect", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_center") = _GODOT_set_draw_center;
	void set_draw_center(in bool draw_center)
	{
		_GODOT_set_draw_center.bind("NinePatchRect", "set_draw_center");
		ptrcall!(void)(_GODOT_set_draw_center, _godot_object, draw_center);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_center_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_center_enabled") = _GODOT_is_draw_center_enabled;
	bool is_draw_center_enabled() const
	{
		_GODOT_is_draw_center_enabled.bind("NinePatchRect", "is_draw_center_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_center_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_axis_stretch_mode") = _GODOT_set_h_axis_stretch_mode;
	void set_h_axis_stretch_mode(in int mode)
	{
		_GODOT_set_h_axis_stretch_mode.bind("NinePatchRect", "set_h_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_h_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NinePatchRect.AxisStretchMode) _GODOT_get_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_axis_stretch_mode") = _GODOT_get_h_axis_stretch_mode;
	NinePatchRect.AxisStretchMode get_h_axis_stretch_mode() const
	{
		_GODOT_get_h_axis_stretch_mode.bind("NinePatchRect", "get_h_axis_stretch_mode");
		return ptrcall!(NinePatchRect.AxisStretchMode)(_GODOT_get_h_axis_stretch_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_axis_stretch_mode") = _GODOT_set_v_axis_stretch_mode;
	void set_v_axis_stretch_mode(in int mode)
	{
		_GODOT_set_v_axis_stretch_mode.bind("NinePatchRect", "set_v_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_v_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NinePatchRect.AxisStretchMode) _GODOT_get_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_axis_stretch_mode") = _GODOT_get_v_axis_stretch_mode;
	NinePatchRect.AxisStretchMode get_v_axis_stretch_mode() const
	{
		_GODOT_get_v_axis_stretch_mode.bind("NinePatchRect", "get_v_axis_stretch_mode");
		return ptrcall!(NinePatchRect.AxisStretchMode)(_GODOT_get_v_axis_stretch_mode, _godot_object);
	}
}
