module godot.texture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
import godot.image;
@GodotBaseClass struct Texture
{
	static immutable string _GODOT_internal_name = "Texture";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Texture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Texture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Texture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Texture");
		if(constructor is null) return typeof(this).init;
		return cast(Texture)(constructor());
	}
	enum Flags : int
	{
		FLAG_ANISOTROPIC_FILTER = 8,
		FLAG_FILTER = 4,
		FLAGS_DEFAULT = 7,
		FLAG_CONVERT_TO_LINEAR = 16,
		FLAG_MIRRORED_REPEAT = 32,
		FLAG_REPEAT = 2,
		FLAG_MIPMAPS = 1,
		FLAG_VIDEO_SURFACE = 4096,
	}
	enum int FLAG_ANISOTROPIC_FILTER = 8;
	enum int FLAG_FILTER = 4;
	enum int FLAGS_DEFAULT = 7;
	enum int FLAG_CONVERT_TO_LINEAR = 16;
	enum int FLAG_MIRRORED_REPEAT = 32;
	enum int FLAG_REPEAT = 2;
	enum int FLAG_MIPMAPS = 1;
	enum int FLAG_VIDEO_SURFACE = 4096;
	package(godot) static GodotMethod!(int) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	int get_width() const
	{
		_GODOT_get_width.bind("Texture", "get_width");
		return ptrcall!(int)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	int get_height() const
	{
		_GODOT_get_height.bind("Texture", "get_height");
		return ptrcall!(int)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("Texture", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_alpha") = _GODOT_has_alpha;
	bool has_alpha() const
	{
		_GODOT_has_alpha.bind("Texture", "has_alpha");
		return ptrcall!(bool)(_GODOT_has_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flags") = _GODOT_set_flags;
	void set_flags(in int flags)
	{
		_GODOT_set_flags.bind("Texture", "set_flags");
		ptrcall!(void)(_GODOT_set_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flags") = _GODOT_get_flags;
	int get_flags() const
	{
		_GODOT_get_flags.bind("Texture", "get_flags");
		return ptrcall!(int)(_GODOT_get_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Color, bool, Texture) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	void draw(in RID canvas_item, in Vector2 position, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init) const
	{
		_GODOT_draw.bind("Texture", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, canvas_item, position, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, bool, Color, bool, Texture) _GODOT_draw_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_rect") = _GODOT_draw_rect;
	void draw_rect(in RID canvas_item, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init) const
	{
		_GODOT_draw_rect.bind("Texture", "draw_rect");
		ptrcall!(void)(_GODOT_draw_rect, _godot_object, canvas_item, rect, tile, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, Rect2, Color, bool, Texture, bool) _GODOT_draw_rect_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_rect_region") = _GODOT_draw_rect_region;
	void draw_rect_region(in RID canvas_item, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init, in bool clip_uv = true) const
	{
		_GODOT_draw_rect_region.bind("Texture", "draw_rect_region");
		ptrcall!(void)(_GODOT_draw_rect_region, _godot_object, canvas_item, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	package(godot) static GodotMethod!(Image) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	Image get_data() const
	{
		_GODOT_get_data.bind("Texture", "get_data");
		return ptrcall!(Image)(_GODOT_get_data, _godot_object);
	}
}
