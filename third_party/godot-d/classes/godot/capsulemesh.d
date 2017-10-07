module godot.capsulemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct CapsuleMesh
{
	static immutable string _GODOT_internal_name = "CapsuleMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CapsuleMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CapsuleMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CapsuleMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CapsuleMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CapsuleMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	void set_radius(in float radius)
	{
		_GODOT_set_radius.bind("CapsuleMesh", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	float get_radius() const
	{
		_GODOT_get_radius.bind("CapsuleMesh", "get_radius");
		return ptrcall!(float)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_mid_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mid_height") = _GODOT_set_mid_height;
	void set_mid_height(in float mid_height)
	{
		_GODOT_set_mid_height.bind("CapsuleMesh", "set_mid_height");
		ptrcall!(void)(_GODOT_set_mid_height, _godot_object, mid_height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_mid_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mid_height") = _GODOT_get_mid_height;
	float get_mid_height() const
	{
		_GODOT_get_mid_height.bind("CapsuleMesh", "get_mid_height");
		return ptrcall!(float)(_GODOT_get_mid_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_segments") = _GODOT_set_radial_segments;
	void set_radial_segments(in int segments)
	{
		_GODOT_set_radial_segments.bind("CapsuleMesh", "set_radial_segments");
		ptrcall!(void)(_GODOT_set_radial_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_segments") = _GODOT_get_radial_segments;
	int get_radial_segments() const
	{
		_GODOT_get_radial_segments.bind("CapsuleMesh", "get_radial_segments");
		return ptrcall!(int)(_GODOT_get_radial_segments, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rings") = _GODOT_set_rings;
	void set_rings(in int rings)
	{
		_GODOT_set_rings.bind("CapsuleMesh", "set_rings");
		ptrcall!(void)(_GODOT_set_rings, _godot_object, rings);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rings") = _GODOT_get_rings;
	int get_rings() const
	{
		_GODOT_get_rings.bind("CapsuleMesh", "get_rings");
		return ptrcall!(int)(_GODOT_get_rings, _godot_object);
	}
}
