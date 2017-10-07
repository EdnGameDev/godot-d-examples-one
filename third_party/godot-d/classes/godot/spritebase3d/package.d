module godot.spritebase3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.geometryinstance;
@GodotBaseClass struct SpriteBase3D
{
	static immutable string _GODOT_internal_name = "SpriteBase3D";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SpriteBase3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpriteBase3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpriteBase3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SpriteBase3D");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteBase3D)(constructor());
	}
	enum DrawFlags : int
	{
		FLAG_SHADED = 1,
		FLAG_TRANSPARENT = 0,
		FLAG_DOUBLE_SIDED = 2,
		FLAG_MAX = 3,
	}
	enum AlphaCutMode : int
	{
		ALPHA_CUT_OPAQUE_PREPASS = 2,
		ALPHA_CUT_DISCARD = 1,
		ALPHA_CUT_DISABLED = 0,
	}
	enum int FLAG_TRANSPARENT = 0;
	enum int FLAG_MAX = 3;
	enum int ALPHA_CUT_OPAQUE_PREPASS = 2;
	enum int ALPHA_CUT_DISCARD = 1;
	enum int FLAG_SHADED = 1;
	enum int FLAG_DOUBLE_SIDED = 2;
	enum int ALPHA_CUT_DISABLED = 0;
	package(godot) static GodotMethod!(void, bool) _GODOT_set_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_centered") = _GODOT_set_centered;
	void set_centered(in bool centered)
	{
		_GODOT_set_centered.bind("SpriteBase3D", "set_centered");
		ptrcall!(void)(_GODOT_set_centered, _godot_object, centered);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_centered") = _GODOT_is_centered;
	bool is_centered() const
	{
		_GODOT_is_centered.bind("SpriteBase3D", "is_centered");
		return ptrcall!(bool)(_GODOT_is_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("SpriteBase3D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("SpriteBase3D", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_h") = _GODOT_set_flip_h;
	void set_flip_h(in bool flip_h)
	{
		_GODOT_set_flip_h.bind("SpriteBase3D", "set_flip_h");
		ptrcall!(void)(_GODOT_set_flip_h, _godot_object, flip_h);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_h") = _GODOT_is_flipped_h;
	bool is_flipped_h() const
	{
		_GODOT_is_flipped_h.bind("SpriteBase3D", "is_flipped_h");
		return ptrcall!(bool)(_GODOT_is_flipped_h, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_v") = _GODOT_set_flip_v;
	void set_flip_v(in bool flip_v)
	{
		_GODOT_set_flip_v.bind("SpriteBase3D", "set_flip_v");
		ptrcall!(void)(_GODOT_set_flip_v, _godot_object, flip_v);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_v") = _GODOT_is_flipped_v;
	bool is_flipped_v() const
	{
		_GODOT_is_flipped_v.bind("SpriteBase3D", "is_flipped_v");
		return ptrcall!(bool)(_GODOT_is_flipped_v, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_modulate") = _GODOT_set_modulate;
	void set_modulate(in Color modulate)
	{
		_GODOT_set_modulate.bind("SpriteBase3D", "set_modulate");
		ptrcall!(void)(_GODOT_set_modulate, _godot_object, modulate);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modulate") = _GODOT_get_modulate;
	Color get_modulate() const
	{
		_GODOT_get_modulate.bind("SpriteBase3D", "get_modulate");
		return ptrcall!(Color)(_GODOT_get_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_opacity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_opacity") = _GODOT_set_opacity;
	void set_opacity(in float opacity)
	{
		_GODOT_set_opacity.bind("SpriteBase3D", "set_opacity");
		ptrcall!(void)(_GODOT_set_opacity, _godot_object, opacity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_opacity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_opacity") = _GODOT_get_opacity;
	float get_opacity() const
	{
		_GODOT_get_opacity.bind("SpriteBase3D", "get_opacity");
		return ptrcall!(float)(_GODOT_get_opacity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pixel_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pixel_size") = _GODOT_set_pixel_size;
	void set_pixel_size(in float pixel_size)
	{
		_GODOT_set_pixel_size.bind("SpriteBase3D", "set_pixel_size");
		ptrcall!(void)(_GODOT_set_pixel_size, _godot_object, pixel_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pixel_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pixel_size") = _GODOT_get_pixel_size;
	float get_pixel_size() const
	{
		_GODOT_get_pixel_size.bind("SpriteBase3D", "get_pixel_size");
		return ptrcall!(float)(_GODOT_get_pixel_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis") = _GODOT_set_axis;
	void set_axis(in int axis)
	{
		_GODOT_set_axis.bind("SpriteBase3D", "set_axis");
		ptrcall!(void)(_GODOT_set_axis, _godot_object, axis);
	}
	package(godot) static GodotMethod!(Vector3.Axis) _GODOT_get_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis") = _GODOT_get_axis;
	Vector3.Axis get_axis() const
	{
		_GODOT_get_axis.bind("SpriteBase3D", "get_axis");
		return ptrcall!(Vector3.Axis)(_GODOT_get_axis, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_draw_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_flag") = _GODOT_set_draw_flag;
	void set_draw_flag(in int flag, in bool enabled)
	{
		_GODOT_set_draw_flag.bind("SpriteBase3D", "set_draw_flag");
		ptrcall!(void)(_GODOT_set_draw_flag, _godot_object, flag, enabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_draw_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_flag") = _GODOT_get_draw_flag;
	bool get_draw_flag(in int flag) const
	{
		_GODOT_get_draw_flag.bind("SpriteBase3D", "get_draw_flag");
		return ptrcall!(bool)(_GODOT_get_draw_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_alpha_cut_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alpha_cut_mode") = _GODOT_set_alpha_cut_mode;
	void set_alpha_cut_mode(in int mode)
	{
		_GODOT_set_alpha_cut_mode.bind("SpriteBase3D", "set_alpha_cut_mode");
		ptrcall!(void)(_GODOT_set_alpha_cut_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(SpriteBase3D.AlphaCutMode) _GODOT_get_alpha_cut_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alpha_cut_mode") = _GODOT_get_alpha_cut_mode;
	SpriteBase3D.AlphaCutMode get_alpha_cut_mode() const
	{
		_GODOT_get_alpha_cut_mode.bind("SpriteBase3D", "get_alpha_cut_mode");
		return ptrcall!(SpriteBase3D.AlphaCutMode)(_GODOT_get_alpha_cut_mode, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_item_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_rect") = _GODOT_get_item_rect;
	Rect2 get_item_rect() const
	{
		_GODOT_get_item_rect.bind("SpriteBase3D", "get_item_rect");
		return ptrcall!(Rect2)(_GODOT_get_item_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__queue_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_queue_update") = _GODOT__queue_update;
	void _queue_update()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_queue_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__im_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_im_update") = _GODOT__im_update;
	void _im_update()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_im_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
