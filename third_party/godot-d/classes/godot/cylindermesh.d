module godot.cylindermesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct CylinderMesh
{
	static immutable string _GODOT_internal_name = "CylinderMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CylinderMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CylinderMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CylinderMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CylinderMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CylinderMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_top_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_top_radius") = _GODOT_set_top_radius;
	void set_top_radius(in float radius)
	{
		_GODOT_set_top_radius.bind("CylinderMesh", "set_top_radius");
		ptrcall!(void)(_GODOT_set_top_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_top_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_top_radius") = _GODOT_get_top_radius;
	float get_top_radius() const
	{
		_GODOT_get_top_radius.bind("CylinderMesh", "get_top_radius");
		return ptrcall!(float)(_GODOT_get_top_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bottom_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bottom_radius") = _GODOT_set_bottom_radius;
	void set_bottom_radius(in float radius)
	{
		_GODOT_set_bottom_radius.bind("CylinderMesh", "set_bottom_radius");
		ptrcall!(void)(_GODOT_set_bottom_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bottom_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bottom_radius") = _GODOT_get_bottom_radius;
	float get_bottom_radius() const
	{
		_GODOT_get_bottom_radius.bind("CylinderMesh", "get_bottom_radius");
		return ptrcall!(float)(_GODOT_get_bottom_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	void set_height(in float height)
	{
		_GODOT_set_height.bind("CylinderMesh", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	float get_height() const
	{
		_GODOT_get_height.bind("CylinderMesh", "get_height");
		return ptrcall!(float)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_segments") = _GODOT_set_radial_segments;
	void set_radial_segments(in int segments)
	{
		_GODOT_set_radial_segments.bind("CylinderMesh", "set_radial_segments");
		ptrcall!(void)(_GODOT_set_radial_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_segments") = _GODOT_get_radial_segments;
	int get_radial_segments() const
	{
		_GODOT_get_radial_segments.bind("CylinderMesh", "get_radial_segments");
		return ptrcall!(int)(_GODOT_get_radial_segments, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rings") = _GODOT_set_rings;
	void set_rings(in int rings)
	{
		_GODOT_set_rings.bind("CylinderMesh", "set_rings");
		ptrcall!(void)(_GODOT_set_rings, _godot_object, rings);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rings") = _GODOT_get_rings;
	int get_rings() const
	{
		_GODOT_get_rings.bind("CylinderMesh", "get_rings");
		return ptrcall!(int)(_GODOT_get_rings, _godot_object);
	}
}
