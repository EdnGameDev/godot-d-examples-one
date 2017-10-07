module godot.spheremesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct SphereMesh
{
	static immutable string _GODOT_internal_name = "SphereMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SphereMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SphereMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SphereMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SphereMesh");
		if(constructor is null) return typeof(this).init;
		return cast(SphereMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	void set_radius(in float radius)
	{
		_GODOT_set_radius.bind("SphereMesh", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	float get_radius() const
	{
		_GODOT_get_radius.bind("SphereMesh", "get_radius");
		return ptrcall!(float)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	void set_height(in float height)
	{
		_GODOT_set_height.bind("SphereMesh", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	float get_height() const
	{
		_GODOT_get_height.bind("SphereMesh", "get_height");
		return ptrcall!(float)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_segments") = _GODOT_set_radial_segments;
	void set_radial_segments(in int radial_segments)
	{
		_GODOT_set_radial_segments.bind("SphereMesh", "set_radial_segments");
		ptrcall!(void)(_GODOT_set_radial_segments, _godot_object, radial_segments);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_segments") = _GODOT_get_radial_segments;
	int get_radial_segments() const
	{
		_GODOT_get_radial_segments.bind("SphereMesh", "get_radial_segments");
		return ptrcall!(int)(_GODOT_get_radial_segments, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rings") = _GODOT_set_rings;
	void set_rings(in int rings)
	{
		_GODOT_set_rings.bind("SphereMesh", "set_rings");
		ptrcall!(void)(_GODOT_set_rings, _godot_object, rings);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rings") = _GODOT_get_rings;
	int get_rings() const
	{
		_GODOT_get_rings.bind("SphereMesh", "get_rings");
		return ptrcall!(int)(_GODOT_get_rings, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_is_hemisphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_is_hemisphere") = _GODOT_set_is_hemisphere;
	void set_is_hemisphere(in bool is_hemisphere)
	{
		_GODOT_set_is_hemisphere.bind("SphereMesh", "set_is_hemisphere");
		ptrcall!(void)(_GODOT_set_is_hemisphere, _godot_object, is_hemisphere);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_is_hemisphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_is_hemisphere") = _GODOT_get_is_hemisphere;
	bool get_is_hemisphere() const
	{
		_GODOT_get_is_hemisphere.bind("SphereMesh", "get_is_hemisphere");
		return ptrcall!(bool)(_GODOT_get_is_hemisphere, _godot_object);
	}
}
