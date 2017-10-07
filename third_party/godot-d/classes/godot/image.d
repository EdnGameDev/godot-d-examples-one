module godot.image;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Image
{
	static immutable string _GODOT_internal_name = "Image";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Image other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Image opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Image _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Image");
		if(constructor is null) return typeof(this).init;
		return cast(Image)(constructor());
	}
	enum AlphaMode : int
	{
		ALPHA_NONE = 0,
		ALPHA_BLEND = 2,
		ALPHA_BIT = 1,
	}
	enum CompressSource : int
	{
		COMPRESS_SOURCE_SRGB = 1,
		COMPRESS_SOURCE_NORMAL = 2,
		COMPRESS_SOURCE_GENERIC = 0,
	}
	enum Interpolation : int
	{
		INTERPOLATE_CUBIC = 2,
		INTERPOLATE_NEAREST = 0,
		INTERPOLATE_BILINEAR = 1,
	}
	enum CompressMode : int
	{
		COMPRESS_ETC = 3,
		COMPRESS_PVRTC2 = 1,
		COMPRESS_S3TC = 0,
		COMPRESS_PVRTC4 = 2,
		COMPRESS_ETC2 = 4,
	}
	enum Format : int
	{
		FORMAT_RGBAH = 15,
		FORMAT_RGBE9995 = 16,
		FORMAT_ETC2_RG11S = 33,
		FORMAT_DXT3 = 18,
		FORMAT_RGBA5551 = 7,
		FORMAT_RGTC_R = 20,
		FORMAT_PVRTC4A = 28,
		FORMAT_ETC2_R11 = 30,
		FORMAT_DXT1 = 17,
		FORMAT_RGH = 13,
		FORMAT_LA8 = 1,
		FORMAT_ETC2_R11S = 31,
		FORMAT_ETC2_RG11 = 32,
		FORMAT_RGTC_RG = 21,
		FORMAT_RGBAF = 11,
		FORMAT_DXT5 = 19,
		FORMAT_PVRTC2A = 26,
		FORMAT_ETC = 29,
		FORMAT_RGBH = 14,
		FORMAT_RGF = 9,
		FORMAT_L8 = 0,
		FORMAT_MAX = 37,
		FORMAT_RH = 12,
		FORMAT_RGB8 = 4,
		FORMAT_ETC2_RGB8 = 34,
		FORMAT_BPTC_RGBA = 22,
		FORMAT_ETC2_RGBA8 = 35,
		FORMAT_ETC2_RGB8A1 = 36,
		FORMAT_R8 = 2,
		FORMAT_BPTC_RGBFU = 24,
		FORMAT_BPTC_RGBF = 23,
		FORMAT_RGBA4444 = 6,
		FORMAT_RGBA8 = 5,
		FORMAT_PVRTC4 = 27,
		FORMAT_RG8 = 3,
		FORMAT_RF = 8,
		FORMAT_RGBF = 10,
		FORMAT_PVRTC2 = 25,
	}
	enum int FORMAT_RGBAH = 15;
	enum int FORMAT_RGBE9995 = 16;
	enum int FORMAT_ETC2_RG11S = 33;
	enum int FORMAT_DXT3 = 18;
	enum int FORMAT_RGBA5551 = 7;
	enum int FORMAT_RGTC_R = 20;
	enum int COMPRESS_S3TC = 0;
	enum int FORMAT_PVRTC4A = 28;
	enum int FORMAT_ETC2_R11 = 30;
	enum int INTERPOLATE_BILINEAR = 1;
	enum int ALPHA_NONE = 0;
	enum int ALPHA_BLEND = 2;
	enum int COMPRESS_PVRTC2 = 1;
	enum int FORMAT_DXT1 = 17;
	enum int FORMAT_RGH = 13;
	enum int FORMAT_LA8 = 1;
	enum int FORMAT_ETC2_R11S = 31;
	enum int FORMAT_ETC2_RG11 = 32;
	enum int FORMAT_RGTC_RG = 21;
	enum int FORMAT_RGBAF = 11;
	enum int ALPHA_BIT = 1;
	enum int FORMAT_DXT5 = 19;
	enum int FORMAT_PVRTC2A = 26;
	enum int INTERPOLATE_CUBIC = 2;
	enum int FORMAT_ETC = 29;
	enum int COMPRESS_ETC = 3;
	enum int FORMAT_RGBH = 14;
	enum int COMPRESS_PVRTC4 = 2;
	enum int FORMAT_RGF = 9;
	enum int FORMAT_L8 = 0;
	enum int FORMAT_MAX = 37;
	enum int FORMAT_RH = 12;
	enum int INTERPOLATE_NEAREST = 0;
	enum int COMPRESS_SOURCE_GENERIC = 0;
	enum int FORMAT_RGB8 = 4;
	enum int FORMAT_ETC2_RGB8 = 34;
	enum int FORMAT_BPTC_RGBA = 22;
	enum int FORMAT_ETC2_RGBA8 = 35;
	enum int FORMAT_ETC2_RGB8A1 = 36;
	enum int FORMAT_R8 = 2;
	enum int FORMAT_BPTC_RGBFU = 24;
	enum int FORMAT_BPTC_RGBF = 23;
	enum int COMPRESS_ETC2 = 4;
	enum int FORMAT_RGBA4444 = 6;
	enum int FORMAT_RGBA8 = 5;
	enum int FORMAT_PVRTC4 = 27;
	enum int COMPRESS_SOURCE_SRGB = 1;
	enum int COMPRESS_SOURCE_NORMAL = 2;
	enum int FORMAT_RG8 = 3;
	enum int FORMAT_RF = 8;
	enum int FORMAT_RGBF = 10;
	enum int FORMAT_PVRTC2 = 25;
	package(godot) static GodotMethod!(int) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	int get_width() const
	{
		_GODOT_get_width.bind("Image", "get_width");
		return ptrcall!(int)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	int get_height() const
	{
		_GODOT_get_height.bind("Image", "get_height");
		return ptrcall!(int)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("Image", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_mipmaps") = _GODOT_has_mipmaps;
	bool has_mipmaps() const
	{
		_GODOT_has_mipmaps.bind("Image", "has_mipmaps");
		return ptrcall!(bool)(_GODOT_has_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(Image.Format) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	Image.Format get_format() const
	{
		_GODOT_get_format.bind("Image", "get_format");
		return ptrcall!(Image.Format)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	PoolByteArray get_data() const
	{
		_GODOT_get_data.bind("Image", "get_data");
		return ptrcall!(PoolByteArray)(_GODOT_get_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_convert;
	package(godot) alias _GODOT_methodBindInfo(string name : "convert") = _GODOT_convert;
	void convert(in int format)
	{
		_GODOT_convert.bind("Image", "convert");
		ptrcall!(void)(_GODOT_convert, _godot_object, format);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_mipmap_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mipmap_offset") = _GODOT_get_mipmap_offset;
	int get_mipmap_offset(in int mipmap) const
	{
		_GODOT_get_mipmap_offset.bind("Image", "get_mipmap_offset");
		return ptrcall!(int)(_GODOT_get_mipmap_offset, _godot_object, mipmap);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_resize_to_po2;
	package(godot) alias _GODOT_methodBindInfo(string name : "resize_to_po2") = _GODOT_resize_to_po2;
	void resize_to_po2(in bool square = false)
	{
		_GODOT_resize_to_po2.bind("Image", "resize_to_po2");
		ptrcall!(void)(_GODOT_resize_to_po2, _godot_object, square);
	}
	package(godot) static GodotMethod!(void, int, int, int) _GODOT_resize;
	package(godot) alias _GODOT_methodBindInfo(string name : "resize") = _GODOT_resize;
	void resize(in int width, in int height, in int interpolation = 1)
	{
		_GODOT_resize.bind("Image", "resize");
		ptrcall!(void)(_GODOT_resize, _godot_object, width, height, interpolation);
	}
	package(godot) static GodotMethod!(void) _GODOT_shrink_x2;
	package(godot) alias _GODOT_methodBindInfo(string name : "shrink_x2") = _GODOT_shrink_x2;
	void shrink_x2()
	{
		_GODOT_shrink_x2.bind("Image", "shrink_x2");
		ptrcall!(void)(_GODOT_shrink_x2, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_expand_x2_hq2x;
	package(godot) alias _GODOT_methodBindInfo(string name : "expand_x2_hq2x") = _GODOT_expand_x2_hq2x;
	void expand_x2_hq2x()
	{
		_GODOT_expand_x2_hq2x.bind("Image", "expand_x2_hq2x");
		ptrcall!(void)(_GODOT_expand_x2_hq2x, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_crop;
	package(godot) alias _GODOT_methodBindInfo(string name : "crop") = _GODOT_crop;
	void crop(in int width, in int height)
	{
		_GODOT_crop.bind("Image", "crop");
		ptrcall!(void)(_GODOT_crop, _godot_object, width, height);
	}
	package(godot) static GodotMethod!(void) _GODOT_flip_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "flip_x") = _GODOT_flip_x;
	void flip_x()
	{
		_GODOT_flip_x.bind("Image", "flip_x");
		ptrcall!(void)(_GODOT_flip_x, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_flip_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "flip_y") = _GODOT_flip_y;
	void flip_y()
	{
		_GODOT_flip_y.bind("Image", "flip_y");
		ptrcall!(void)(_GODOT_flip_y, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_generate_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_mipmaps") = _GODOT_generate_mipmaps;
	GodotError generate_mipmaps()
	{
		_GODOT_generate_mipmaps.bind("Image", "generate_mipmaps");
		return ptrcall!(GodotError)(_GODOT_generate_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_mipmaps") = _GODOT_clear_mipmaps;
	void clear_mipmaps()
	{
		_GODOT_clear_mipmaps.bind("Image", "clear_mipmaps");
		ptrcall!(void)(_GODOT_clear_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, bool, int) _GODOT_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "create") = _GODOT_create;
	void create(in int width, in int height, in bool use_mipmaps, in int format)
	{
		_GODOT_create.bind("Image", "create");
		ptrcall!(void)(_GODOT_create, _godot_object, width, height, use_mipmaps, format);
	}
	package(godot) static GodotMethod!(void, int, int, bool, int, PoolByteArray) _GODOT_create_from_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_data") = _GODOT_create_from_data;
	void create_from_data(in int width, in int height, in bool use_mipmaps, in int format, in PoolByteArray data)
	{
		_GODOT_create_from_data.bind("Image", "create_from_data");
		ptrcall!(void)(_GODOT_create_from_data, _godot_object, width, height, use_mipmaps, format, data);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_empty;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_empty") = _GODOT_is_empty;
	bool is_empty() const
	{
		_GODOT_is_empty.bind("Image", "is_empty");
		return ptrcall!(bool)(_GODOT_is_empty, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	GodotError load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("Image", "load");
		return ptrcall!(GodotError)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_save_png;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_png") = _GODOT_save_png;
	GodotError save_png(StringArg0)(in StringArg0 path) const
	{
		_GODOT_save_png.bind("Image", "save_png");
		return ptrcall!(GodotError)(_GODOT_save_png, _godot_object, path);
	}
	package(godot) static GodotMethod!(Image.AlphaMode) _GODOT_detect_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "detect_alpha") = _GODOT_detect_alpha;
	Image.AlphaMode detect_alpha() const
	{
		_GODOT_detect_alpha.bind("Image", "detect_alpha");
		return ptrcall!(Image.AlphaMode)(_GODOT_detect_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_invisible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_invisible") = _GODOT_is_invisible;
	bool is_invisible() const
	{
		_GODOT_is_invisible.bind("Image", "is_invisible");
		return ptrcall!(bool)(_GODOT_is_invisible, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, int, int, float) _GODOT_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "compress") = _GODOT_compress;
	GodotError compress(in int mode, in int source, in float lossy_quality)
	{
		_GODOT_compress.bind("Image", "compress");
		return ptrcall!(GodotError)(_GODOT_compress, _godot_object, mode, source, lossy_quality);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_decompress;
	package(godot) alias _GODOT_methodBindInfo(string name : "decompress") = _GODOT_decompress;
	GodotError decompress()
	{
		_GODOT_decompress.bind("Image", "decompress");
		return ptrcall!(GodotError)(_GODOT_decompress, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_compressed") = _GODOT_is_compressed;
	bool is_compressed() const
	{
		_GODOT_is_compressed.bind("Image", "is_compressed");
		return ptrcall!(bool)(_GODOT_is_compressed, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_fix_alpha_edges;
	package(godot) alias _GODOT_methodBindInfo(string name : "fix_alpha_edges") = _GODOT_fix_alpha_edges;
	void fix_alpha_edges()
	{
		_GODOT_fix_alpha_edges.bind("Image", "fix_alpha_edges");
		ptrcall!(void)(_GODOT_fix_alpha_edges, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_premultiply_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "premultiply_alpha") = _GODOT_premultiply_alpha;
	void premultiply_alpha()
	{
		_GODOT_premultiply_alpha.bind("Image", "premultiply_alpha");
		ptrcall!(void)(_GODOT_premultiply_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_srgb_to_linear;
	package(godot) alias _GODOT_methodBindInfo(string name : "srgb_to_linear") = _GODOT_srgb_to_linear;
	void srgb_to_linear()
	{
		_GODOT_srgb_to_linear.bind("Image", "srgb_to_linear");
		ptrcall!(void)(_GODOT_srgb_to_linear, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_normalmap_to_xy;
	package(godot) alias _GODOT_methodBindInfo(string name : "normalmap_to_xy") = _GODOT_normalmap_to_xy;
	void normalmap_to_xy()
	{
		_GODOT_normalmap_to_xy.bind("Image", "normalmap_to_xy");
		ptrcall!(void)(_GODOT_normalmap_to_xy, _godot_object);
	}
	package(godot) static GodotMethod!(void, Image, Rect2, Vector2) _GODOT_blit_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "blit_rect") = _GODOT_blit_rect;
	void blit_rect(in Image src, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blit_rect.bind("Image", "blit_rect");
		ptrcall!(void)(_GODOT_blit_rect, _godot_object, src, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Image, Image, Rect2, Vector2) _GODOT_blit_rect_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "blit_rect_mask") = _GODOT_blit_rect_mask;
	void blit_rect_mask(in Image src, in Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blit_rect_mask.bind("Image", "blit_rect_mask");
		ptrcall!(void)(_GODOT_blit_rect_mask, _godot_object, src, mask, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Image, Rect2, Vector2) _GODOT_blend_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend_rect") = _GODOT_blend_rect;
	void blend_rect(in Image src, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blend_rect.bind("Image", "blend_rect");
		ptrcall!(void)(_GODOT_blend_rect, _godot_object, src, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Image, Image, Rect2, Vector2) _GODOT_blend_rect_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend_rect_mask") = _GODOT_blend_rect_mask;
	void blend_rect_mask(in Image src, in Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blend_rect_mask.bind("Image", "blend_rect_mask");
		ptrcall!(void)(_GODOT_blend_rect_mask, _godot_object, src, mask, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_fill;
	package(godot) alias _GODOT_methodBindInfo(string name : "fill") = _GODOT_fill;
	void fill(in Color color)
	{
		_GODOT_fill.bind("Image", "fill");
		ptrcall!(void)(_GODOT_fill, _godot_object, color);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_used_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_rect") = _GODOT_get_used_rect;
	Rect2 get_used_rect() const
	{
		_GODOT_get_used_rect.bind("Image", "get_used_rect");
		return ptrcall!(Rect2)(_GODOT_get_used_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Image, Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	Image get_rect(in Rect2 rect) const
	{
		_GODOT_get_rect.bind("Image", "get_rect");
		return ptrcall!(Image)(_GODOT_get_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_copy_from;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy_from") = _GODOT_copy_from;
	void copy_from(in Image src)
	{
		_GODOT_copy_from.bind("Image", "copy_from");
		ptrcall!(void)(_GODOT_copy_from, _godot_object, src);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Dictionary _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	package(godot) static GodotMethod!(void) _GODOT_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "lock") = _GODOT_lock;
	void lock()
	{
		_GODOT_lock.bind("Image", "lock");
		ptrcall!(void)(_GODOT_lock, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unlock;
	package(godot) alias _GODOT_methodBindInfo(string name : "unlock") = _GODOT_unlock;
	void unlock()
	{
		_GODOT_unlock.bind("Image", "unlock");
		ptrcall!(void)(_GODOT_unlock, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, Color) _GODOT_set_pixel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pixel") = _GODOT_set_pixel;
	void set_pixel(in int x, in int y, in Color color)
	{
		_GODOT_set_pixel.bind("Image", "set_pixel");
		ptrcall!(void)(_GODOT_set_pixel, _godot_object, x, y, color);
	}
	package(godot) static GodotMethod!(Color, int, int) _GODOT_get_pixel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pixel") = _GODOT_get_pixel;
	Color get_pixel(in int x, in int y) const
	{
		_GODOT_get_pixel.bind("Image", "get_pixel");
		return ptrcall!(Color)(_GODOT_get_pixel, _godot_object, x, y);
	}
}
