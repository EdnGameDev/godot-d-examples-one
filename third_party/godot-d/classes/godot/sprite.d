module godot.sprite;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
@GodotBaseClass struct Sprite
{
	static immutable string _GODOT_internal_name = "Sprite";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Sprite other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sprite opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Sprite _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Sprite");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite)(constructor());
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("Sprite", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("Sprite", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	void set_normal_map(in Texture normal_map)
	{
		_GODOT_set_normal_map.bind("Sprite", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, normal_map);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	Texture get_normal_map() const
	{
		_GODOT_get_normal_map.bind("Sprite", "get_normal_map");
		return ptrcall!(Texture)(_GODOT_get_normal_map, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_centered") = _GODOT_set_centered;
	void set_centered(in bool centered)
	{
		_GODOT_set_centered.bind("Sprite", "set_centered");
		ptrcall!(void)(_GODOT_set_centered, _godot_object, centered);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_centered") = _GODOT_is_centered;
	bool is_centered() const
	{
		_GODOT_is_centered.bind("Sprite", "is_centered");
		return ptrcall!(bool)(_GODOT_is_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("Sprite", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("Sprite", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_h") = _GODOT_set_flip_h;
	void set_flip_h(in bool flip_h)
	{
		_GODOT_set_flip_h.bind("Sprite", "set_flip_h");
		ptrcall!(void)(_GODOT_set_flip_h, _godot_object, flip_h);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_h") = _GODOT_is_flipped_h;
	bool is_flipped_h() const
	{
		_GODOT_is_flipped_h.bind("Sprite", "is_flipped_h");
		return ptrcall!(bool)(_GODOT_is_flipped_h, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_v") = _GODOT_set_flip_v;
	void set_flip_v(in bool flip_v)
	{
		_GODOT_set_flip_v.bind("Sprite", "set_flip_v");
		ptrcall!(void)(_GODOT_set_flip_v, _godot_object, flip_v);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_v") = _GODOT_is_flipped_v;
	bool is_flipped_v() const
	{
		_GODOT_is_flipped_v.bind("Sprite", "is_flipped_v");
		return ptrcall!(bool)(_GODOT_is_flipped_v, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region") = _GODOT_set_region;
	void set_region(in bool enabled)
	{
		_GODOT_set_region.bind("Sprite", "set_region");
		ptrcall!(void)(_GODOT_set_region, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_region") = _GODOT_is_region;
	bool is_region() const
	{
		_GODOT_is_region.bind("Sprite", "is_region");
		return ptrcall!(bool)(_GODOT_is_region, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	void set_region_rect(in Rect2 rect)
	{
		_GODOT_set_region_rect.bind("Sprite", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	Rect2 get_region_rect() const
	{
		_GODOT_get_region_rect.bind("Sprite", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_region_filter_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_filter_clip") = _GODOT_set_region_filter_clip;
	void set_region_filter_clip(in bool enabled)
	{
		_GODOT_set_region_filter_clip.bind("Sprite", "set_region_filter_clip");
		ptrcall!(void)(_GODOT_set_region_filter_clip, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_region_filter_clip_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_region_filter_clip_enabled") = _GODOT_is_region_filter_clip_enabled;
	bool is_region_filter_clip_enabled() const
	{
		_GODOT_is_region_filter_clip_enabled.bind("Sprite", "is_region_filter_clip_enabled");
		return ptrcall!(bool)(_GODOT_is_region_filter_clip_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	void set_frame(in int frame)
	{
		_GODOT_set_frame.bind("Sprite", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	int get_frame() const
	{
		_GODOT_get_frame.bind("Sprite", "get_frame");
		return ptrcall!(int)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vframes") = _GODOT_set_vframes;
	void set_vframes(in int vframes)
	{
		_GODOT_set_vframes.bind("Sprite", "set_vframes");
		ptrcall!(void)(_GODOT_set_vframes, _godot_object, vframes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vframes") = _GODOT_get_vframes;
	int get_vframes() const
	{
		_GODOT_get_vframes.bind("Sprite", "get_vframes");
		return ptrcall!(int)(_GODOT_get_vframes, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hframes") = _GODOT_set_hframes;
	void set_hframes(in int hframes)
	{
		_GODOT_set_hframes.bind("Sprite", "set_hframes");
		ptrcall!(void)(_GODOT_set_hframes, _godot_object, hframes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hframes") = _GODOT_get_hframes;
	int get_hframes() const
	{
		_GODOT_get_hframes.bind("Sprite", "get_hframes");
		return ptrcall!(int)(_GODOT_get_hframes, _godot_object);
	}
}
