module godot.panoramasky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.sky;
import godot.texture;
@GodotBaseClass struct PanoramaSky
{
	static immutable string _GODOT_internal_name = "PanoramaSky";
public:
	union { godot_object _godot_object; Sky base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PanoramaSky other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PanoramaSky opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PanoramaSky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PanoramaSky");
		if(constructor is null) return typeof(this).init;
		return cast(PanoramaSky)(constructor());
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_panorama;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_panorama") = _GODOT_set_panorama;
	void set_panorama(in Texture texture)
	{
		_GODOT_set_panorama.bind("PanoramaSky", "set_panorama");
		ptrcall!(void)(_GODOT_set_panorama, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_panorama;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_panorama") = _GODOT_get_panorama;
	Texture get_panorama() const
	{
		_GODOT_get_panorama.bind("PanoramaSky", "get_panorama");
		return ptrcall!(Texture)(_GODOT_get_panorama, _godot_object);
	}
}
