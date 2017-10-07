module godot.geometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
@GodotBaseClass struct GeometrySingleton
{
	static immutable string _GODOT_internal_name = "_Geometry";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_Geometry";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GeometrySingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GeometrySingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GeometrySingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Geometry");
		if(constructor is null) return typeof(this).init;
		return cast(GeometrySingleton)(constructor());
	}
	package(godot) static GodotMethod!(Array, Vector3) _GODOT_build_box_planes;
	package(godot) alias _GODOT_methodBindInfo(string name : "build_box_planes") = _GODOT_build_box_planes;
	Array build_box_planes(in Vector3 extents)
	{
		_GODOT_build_box_planes.bind("_Geometry", "build_box_planes");
		return ptrcall!(Array)(_GODOT_build_box_planes, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Array, float, float, int, int) _GODOT_build_cylinder_planes;
	package(godot) alias _GODOT_methodBindInfo(string name : "build_cylinder_planes") = _GODOT_build_cylinder_planes;
	Array build_cylinder_planes(in float radius, in float height, in int sides, in int axis = 2)
	{
		_GODOT_build_cylinder_planes.bind("_Geometry", "build_cylinder_planes");
		return ptrcall!(Array)(_GODOT_build_cylinder_planes, _godot_object, radius, height, sides, axis);
	}
	package(godot) static GodotMethod!(Array, float, float, int, int, int) _GODOT_build_capsule_planes;
	package(godot) alias _GODOT_methodBindInfo(string name : "build_capsule_planes") = _GODOT_build_capsule_planes;
	Array build_capsule_planes(in float radius, in float height, in int sides, in int lats, in int axis = 2)
	{
		_GODOT_build_capsule_planes.bind("_Geometry", "build_capsule_planes");
		return ptrcall!(Array)(_GODOT_build_capsule_planes, _godot_object, radius, height, sides, lats, axis);
	}
	package(godot) static GodotMethod!(float, Vector2, Vector2, Vector2, float) _GODOT_segment_intersects_circle;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_circle") = _GODOT_segment_intersects_circle;
	float segment_intersects_circle(in Vector2 segment_from, in Vector2 segment_to, in Vector2 circle_position, in float circle_radius)
	{
		_GODOT_segment_intersects_circle.bind("_Geometry", "segment_intersects_circle");
		return ptrcall!(float)(_GODOT_segment_intersects_circle, _godot_object, segment_from, segment_to, circle_position, circle_radius);
	}
	package(godot) static GodotMethod!(Variant, Vector2, Vector2, Vector2, Vector2) _GODOT_segment_intersects_segment_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_segment_2d") = _GODOT_segment_intersects_segment_2d;
	Variant segment_intersects_segment_2d(in Vector2 from_a, in Vector2 to_a, in Vector2 from_b, in Vector2 to_b)
	{
		_GODOT_segment_intersects_segment_2d.bind("_Geometry", "segment_intersects_segment_2d");
		return ptrcall!(Variant)(_GODOT_segment_intersects_segment_2d, _godot_object, from_a, to_a, from_b, to_b);
	}
	package(godot) static GodotMethod!(PoolVector2Array, Vector2, Vector2, Vector2, Vector2) _GODOT_get_closest_points_between_segments_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_points_between_segments_2d") = _GODOT_get_closest_points_between_segments_2d;
	PoolVector2Array get_closest_points_between_segments_2d(in Vector2 p1, in Vector2 q1, in Vector2 p2, in Vector2 q2)
	{
		_GODOT_get_closest_points_between_segments_2d.bind("_Geometry", "get_closest_points_between_segments_2d");
		return ptrcall!(PoolVector2Array)(_GODOT_get_closest_points_between_segments_2d, _godot_object, p1, q1, p2, q2);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, Vector3) _GODOT_get_closest_points_between_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_points_between_segments") = _GODOT_get_closest_points_between_segments;
	PoolVector3Array get_closest_points_between_segments(in Vector3 p1, in Vector3 p2, in Vector3 q1, in Vector3 q2)
	{
		_GODOT_get_closest_points_between_segments.bind("_Geometry", "get_closest_points_between_segments");
		return ptrcall!(PoolVector3Array)(_GODOT_get_closest_points_between_segments, _godot_object, p1, p2, q1, q2);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, Vector2, Vector2) _GODOT_get_closest_point_to_segment_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment_2d") = _GODOT_get_closest_point_to_segment_2d;
	Vector2 get_closest_point_to_segment_2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		_GODOT_get_closest_point_to_segment_2d.bind("_Geometry", "get_closest_point_to_segment_2d");
		return ptrcall!(Vector2)(_GODOT_get_closest_point_to_segment_2d, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, Vector3) _GODOT_get_closest_point_to_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment") = _GODOT_get_closest_point_to_segment;
	Vector3 get_closest_point_to_segment(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		_GODOT_get_closest_point_to_segment.bind("_Geometry", "get_closest_point_to_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, Vector2, Vector2) _GODOT_get_closest_point_to_segment_uncapped_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment_uncapped_2d") = _GODOT_get_closest_point_to_segment_uncapped_2d;
	Vector2 get_closest_point_to_segment_uncapped_2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		_GODOT_get_closest_point_to_segment_uncapped_2d.bind("_Geometry", "get_closest_point_to_segment_uncapped_2d");
		return ptrcall!(Vector2)(_GODOT_get_closest_point_to_segment_uncapped_2d, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, Vector3) _GODOT_get_closest_point_to_segment_uncapped;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment_uncapped") = _GODOT_get_closest_point_to_segment_uncapped;
	Vector3 get_closest_point_to_segment_uncapped(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		_GODOT_get_closest_point_to_segment_uncapped.bind("_Geometry", "get_closest_point_to_segment_uncapped");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment_uncapped, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(int, Vector3) _GODOT_get_uv84_normal_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv84_normal_bit") = _GODOT_get_uv84_normal_bit;
	int get_uv84_normal_bit(in Vector3 normal)
	{
		_GODOT_get_uv84_normal_bit.bind("_Geometry", "get_uv84_normal_bit");
		return ptrcall!(int)(_GODOT_get_uv84_normal_bit, _godot_object, normal);
	}
	package(godot) static GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) _GODOT_ray_intersects_triangle;
	package(godot) alias _GODOT_methodBindInfo(string name : "ray_intersects_triangle") = _GODOT_ray_intersects_triangle;
	Variant ray_intersects_triangle(in Vector3 from, in Vector3 dir, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		_GODOT_ray_intersects_triangle.bind("_Geometry", "ray_intersects_triangle");
		return ptrcall!(Variant)(_GODOT_ray_intersects_triangle, _godot_object, from, dir, a, b, c);
	}
	package(godot) static GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) _GODOT_segment_intersects_triangle;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_triangle") = _GODOT_segment_intersects_triangle;
	Variant segment_intersects_triangle(in Vector3 from, in Vector3 to, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		_GODOT_segment_intersects_triangle.bind("_Geometry", "segment_intersects_triangle");
		return ptrcall!(Variant)(_GODOT_segment_intersects_triangle, _godot_object, from, to, a, b, c);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, float) _GODOT_segment_intersects_sphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_sphere") = _GODOT_segment_intersects_sphere;
	PoolVector3Array segment_intersects_sphere(in Vector3 from, in Vector3 to, in Vector3 sphere_position, in float sphere_radius)
	{
		_GODOT_segment_intersects_sphere.bind("_Geometry", "segment_intersects_sphere");
		return ptrcall!(PoolVector3Array)(_GODOT_segment_intersects_sphere, _godot_object, from, to, sphere_position, sphere_radius);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, float, float) _GODOT_segment_intersects_cylinder;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_cylinder") = _GODOT_segment_intersects_cylinder;
	PoolVector3Array segment_intersects_cylinder(in Vector3 from, in Vector3 to, in float height, in float radius)
	{
		_GODOT_segment_intersects_cylinder.bind("_Geometry", "segment_intersects_cylinder");
		return ptrcall!(PoolVector3Array)(_GODOT_segment_intersects_cylinder, _godot_object, from, to, height, radius);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, Array) _GODOT_segment_intersects_convex;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_convex") = _GODOT_segment_intersects_convex;
	PoolVector3Array segment_intersects_convex(in Vector3 from, in Vector3 to, in Array planes)
	{
		_GODOT_segment_intersects_convex.bind("_Geometry", "segment_intersects_convex");
		return ptrcall!(PoolVector3Array)(_GODOT_segment_intersects_convex, _godot_object, from, to, planes);
	}
	package(godot) static GodotMethod!(bool, Vector2, Vector2, Vector2, Vector2) _GODOT_point_is_inside_triangle;
	package(godot) alias _GODOT_methodBindInfo(string name : "point_is_inside_triangle") = _GODOT_point_is_inside_triangle;
	bool point_is_inside_triangle(in Vector2 point, in Vector2 a, in Vector2 b, in Vector2 c) const
	{
		_GODOT_point_is_inside_triangle.bind("_Geometry", "point_is_inside_triangle");
		return ptrcall!(bool)(_GODOT_point_is_inside_triangle, _godot_object, point, a, b, c);
	}
	package(godot) static GodotMethod!(PoolIntArray, PoolVector2Array) _GODOT_triangulate_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "triangulate_polygon") = _GODOT_triangulate_polygon;
	PoolIntArray triangulate_polygon(in PoolVector2Array polygon)
	{
		_GODOT_triangulate_polygon.bind("_Geometry", "triangulate_polygon");
		return ptrcall!(PoolIntArray)(_GODOT_triangulate_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(Dictionary, PoolVector2Array) _GODOT_make_atlas;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_atlas") = _GODOT_make_atlas;
	Dictionary make_atlas(in PoolVector2Array sizes)
	{
		_GODOT_make_atlas.bind("_Geometry", "make_atlas");
		return ptrcall!(Dictionary)(_GODOT_make_atlas, _godot_object, sizes);
	}
}
@property pragma(inline, true)
GeometrySingleton Geometry()
{
	return GeometrySingleton._GODOT_singleton();
}
