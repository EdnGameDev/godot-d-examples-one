module godot.imagetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.image;
@GodotBaseClass struct ImageTexture
{
	static immutable string _GODOT_internal_name = "ImageTexture";
public:
	union { godot_object _godot_object; Texture base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ImageTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ImageTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ImageTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ImageTexture");
		if(constructor is null) return typeof(this).init;
		return cast(ImageTexture)(constructor());
	}
	enum Storage : int
	{
		STORAGE_COMPRESS_LOSSY = 1,
		STORAGE_RAW = 0,
		STORAGE_COMPRESS_LOSSLESS = 2,
	}
	enum int STORAGE_COMPRESS_LOSSY = 1;
	enum int STORAGE_RAW = 0;
	enum int STORAGE_COMPRESS_LOSSLESS = 2;
	package(godot) static GodotMethod!(void, int, int, int, int) _GODOT_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "create") = _GODOT_create;
	void create(in int width, in int height, in int format, in int flags = 7)
	{
		_GODOT_create.bind("ImageTexture", "create");
		ptrcall!(void)(_GODOT_create, _godot_object, width, height, format, flags);
	}
	package(godot) static GodotMethod!(void, Image, int) _GODOT_create_from_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_image") = _GODOT_create_from_image;
	void create_from_image(in Image image, in int flags = 7)
	{
		_GODOT_create_from_image.bind("ImageTexture", "create_from_image");
		ptrcall!(void)(_GODOT_create_from_image, _godot_object, image, flags);
	}
	package(godot) static GodotMethod!(Image.Format) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	Image.Format get_format() const
	{
		_GODOT_get_format.bind("ImageTexture", "get_format");
		return ptrcall!(Image.Format)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	void load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("ImageTexture", "load");
		ptrcall!(void)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_data") = _GODOT_set_data;
	void set_data(in Image image)
	{
		_GODOT_set_data.bind("ImageTexture", "set_data");
		ptrcall!(void)(_GODOT_set_data, _godot_object, image);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_storage") = _GODOT_set_storage;
	void set_storage(in int mode)
	{
		_GODOT_set_storage.bind("ImageTexture", "set_storage");
		ptrcall!(void)(_GODOT_set_storage, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ImageTexture.Storage) _GODOT_get_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_storage") = _GODOT_get_storage;
	ImageTexture.Storage get_storage() const
	{
		_GODOT_get_storage.bind("ImageTexture", "get_storage");
		return ptrcall!(ImageTexture.Storage)(_GODOT_get_storage, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lossy_storage_quality") = _GODOT_set_lossy_storage_quality;
	void set_lossy_storage_quality(in float quality)
	{
		_GODOT_set_lossy_storage_quality.bind("ImageTexture", "set_lossy_storage_quality");
		ptrcall!(void)(_GODOT_set_lossy_storage_quality, _godot_object, quality);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lossy_storage_quality") = _GODOT_get_lossy_storage_quality;
	float get_lossy_storage_quality() const
	{
		_GODOT_get_lossy_storage_quality.bind("ImageTexture", "get_lossy_storage_quality");
		return ptrcall!(float)(_GODOT_get_lossy_storage_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size_override") = _GODOT_set_size_override;
	void set_size_override(in Vector2 size)
	{
		_GODOT_set_size_override.bind("ImageTexture", "set_size_override");
		ptrcall!(void)(_GODOT_set_size_override, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT__reload_hook;
	package(godot) alias _GODOT_methodBindInfo(string name : "_reload_hook") = _GODOT__reload_hook;
	void _reload_hook(in RID rid)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rid);
		String _GODOT_method_name = String("_reload_hook");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
