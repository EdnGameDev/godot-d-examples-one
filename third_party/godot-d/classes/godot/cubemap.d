module godot.cubemap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.image;
@GodotBaseClass struct CubeMap
{
	static immutable string _GODOT_internal_name = "CubeMap";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CubeMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CubeMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CubeMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CubeMap");
		if(constructor is null) return typeof(this).init;
		return cast(CubeMap)(constructor());
	}
	enum Flags : int
	{
		FLAG_REPEAT = 2,
		FLAGS_DEFAULT = 7,
		FLAG_MIPMAPS = 1,
		FLAG_FILTER = 4,
	}
	enum Side : int
	{
		SIDE_TOP = 3,
		SIDE_RIGHT = 1,
		SIDE_LEFT = 0,
		SIDE_BACK = 5,
		SIDE_BOTTOM = 2,
		SIDE_FRONT = 4,
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
	enum int FLAG_FILTER = 4;
	enum int FLAGS_DEFAULT = 7;
	enum int SIDE_RIGHT = 1;
	enum int SIDE_BACK = 5;
	enum int SIDE_FRONT = 4;
	enum int FLAG_REPEAT = 2;
	enum int SIDE_LEFT = 0;
	enum int SIDE_TOP = 3;
	enum int FLAG_MIPMAPS = 1;
	enum int SIDE_BOTTOM = 2;
	package(godot) static GodotMethod!(int) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	int get_width() const
	{
		_GODOT_get_width.bind("CubeMap", "get_width");
		return ptrcall!(int)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	int get_height() const
	{
		_GODOT_get_height.bind("CubeMap", "get_height");
		return ptrcall!(int)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flags") = _GODOT_set_flags;
	void set_flags(in int flags)
	{
		_GODOT_set_flags.bind("CubeMap", "set_flags");
		ptrcall!(void)(_GODOT_set_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flags") = _GODOT_get_flags;
	int get_flags() const
	{
		_GODOT_get_flags.bind("CubeMap", "get_flags");
		return ptrcall!(int)(_GODOT_get_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Image) _GODOT_set_side;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_side") = _GODOT_set_side;
	void set_side(in int side, in Image image)
	{
		_GODOT_set_side.bind("CubeMap", "set_side");
		ptrcall!(void)(_GODOT_set_side, _godot_object, side, image);
	}
	package(godot) static GodotMethod!(Image, int) _GODOT_get_side;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_side") = _GODOT_get_side;
	Image get_side(in int side) const
	{
		_GODOT_get_side.bind("CubeMap", "get_side");
		return ptrcall!(Image)(_GODOT_get_side, _godot_object, side);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_storage") = _GODOT_set_storage;
	void set_storage(in int mode)
	{
		_GODOT_set_storage.bind("CubeMap", "set_storage");
		ptrcall!(void)(_GODOT_set_storage, _godot_object, mode);
	}
	package(godot) static GodotMethod!(CubeMap.Storage) _GODOT_get_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_storage") = _GODOT_get_storage;
	CubeMap.Storage get_storage() const
	{
		_GODOT_get_storage.bind("CubeMap", "get_storage");
		return ptrcall!(CubeMap.Storage)(_GODOT_get_storage, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lossy_storage_quality") = _GODOT_set_lossy_storage_quality;
	void set_lossy_storage_quality(in float quality)
	{
		_GODOT_set_lossy_storage_quality.bind("CubeMap", "set_lossy_storage_quality");
		ptrcall!(void)(_GODOT_set_lossy_storage_quality, _godot_object, quality);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lossy_storage_quality") = _GODOT_get_lossy_storage_quality;
	float get_lossy_storage_quality() const
	{
		_GODOT_get_lossy_storage_quality.bind("CubeMap", "get_lossy_storage_quality");
		return ptrcall!(float)(_GODOT_get_lossy_storage_quality, _godot_object);
	}
}
