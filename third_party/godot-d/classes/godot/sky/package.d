module godot.sky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct Sky
{
	static immutable string _GODOT_internal_name = "Sky";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Sky other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sky opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Sky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Sky");
		if(constructor is null) return typeof(this).init;
		return cast(Sky)(constructor());
	}
	enum RadianceSize : int
	{
		RADIANCE_SIZE_1024 = 5,
		RADIANCE_SIZE_32 = 0,
		RADIANCE_SIZE_512 = 4,
		RADIANCE_SIZE_64 = 1,
		RADIANCE_SIZE_128 = 2,
		RADIANCE_SIZE_2048 = 6,
		RADIANCE_SIZE_256 = 3,
		RADIANCE_SIZE_MAX = 7,
	}
	enum int RADIANCE_SIZE_1024 = 5;
	enum int RADIANCE_SIZE_32 = 0;
	enum int RADIANCE_SIZE_512 = 4;
	enum int RADIANCE_SIZE_64 = 1;
	enum int RADIANCE_SIZE_128 = 2;
	enum int RADIANCE_SIZE_2048 = 6;
	enum int RADIANCE_SIZE_256 = 3;
	enum int RADIANCE_SIZE_MAX = 7;
	package(godot) static GodotMethod!(void, int) _GODOT_set_radiance_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radiance_size") = _GODOT_set_radiance_size;
	void set_radiance_size(in int size)
	{
		_GODOT_set_radiance_size.bind("Sky", "set_radiance_size");
		ptrcall!(void)(_GODOT_set_radiance_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Sky.RadianceSize) _GODOT_get_radiance_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radiance_size") = _GODOT_get_radiance_size;
	Sky.RadianceSize get_radiance_size() const
	{
		_GODOT_get_radiance_size.bind("Sky", "get_radiance_size");
		return ptrcall!(Sky.RadianceSize)(_GODOT_get_radiance_size, _godot_object);
	}
}
