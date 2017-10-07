module godot.atlastexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.texture;
@GodotBaseClass struct AtlasTexture
{
	static immutable string _GODOT_internal_name = "AtlasTexture";
public:
	union { godot_object _godot_object; Texture base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AtlasTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AtlasTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AtlasTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AtlasTexture");
		if(constructor is null) return typeof(this).init;
		return cast(AtlasTexture)(constructor());
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_atlas;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_atlas") = _GODOT_set_atlas;
	void set_atlas(in Texture atlas)
	{
		_GODOT_set_atlas.bind("AtlasTexture", "set_atlas");
		ptrcall!(void)(_GODOT_set_atlas, _godot_object, atlas);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_atlas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_atlas") = _GODOT_get_atlas;
	Texture get_atlas() const
	{
		_GODOT_get_atlas.bind("AtlasTexture", "get_atlas");
		return ptrcall!(Texture)(_GODOT_get_atlas, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region") = _GODOT_set_region;
	void set_region(in Rect2 region)
	{
		_GODOT_set_region.bind("AtlasTexture", "set_region");
		ptrcall!(void)(_GODOT_set_region, _godot_object, region);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region") = _GODOT_get_region;
	Rect2 get_region() const
	{
		_GODOT_get_region.bind("AtlasTexture", "get_region");
		return ptrcall!(Rect2)(_GODOT_get_region, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	void set_margin(in Rect2 margin)
	{
		_GODOT_set_margin.bind("AtlasTexture", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	Rect2 get_margin() const
	{
		_GODOT_get_margin.bind("AtlasTexture", "get_margin");
		return ptrcall!(Rect2)(_GODOT_get_margin, _godot_object);
	}
}
