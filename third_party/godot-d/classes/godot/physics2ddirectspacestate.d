module godot.physics2ddirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physics2dshapequeryparameters;
@GodotBaseClass struct Physics2DDirectSpaceState
{
	static immutable string _GODOT_internal_name = "Physics2DDirectSpaceState";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DDirectSpaceState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectSpaceState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectSpaceState)(constructor());
	}
	enum ObjectTypeMask : int
	{
		TYPE_MASK_KINEMATIC_BODY = 2,
		TYPE_MASK_CHARACTER_BODY = 8,
		TYPE_MASK_AREA = 16,
		TYPE_MASK_COLLISION = 15,
		TYPE_MASK_RIGID_BODY = 4,
		TYPE_MASK_STATIC_BODY = 1,
	}
	enum int TYPE_MASK_KINEMATIC_BODY = 2;
	enum int TYPE_MASK_CHARACTER_BODY = 8;
	enum int TYPE_MASK_AREA = 16;
	enum int TYPE_MASK_COLLISION = 15;
	enum int TYPE_MASK_RIGID_BODY = 4;
	enum int TYPE_MASK_STATIC_BODY = 1;
	package(godot) static GodotMethod!(Array, Vector2, int, Array, int, int) _GODOT_intersect_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_point") = _GODOT_intersect_point;
	Array intersect_point(in Vector2 point, in int max_results = 32, in Array exclude = Array.empty_array, in int collision_layer = 2147483647, in int type_mask = 15)
	{
		_GODOT_intersect_point.bind("Physics2DDirectSpaceState", "intersect_point");
		return ptrcall!(Array)(_GODOT_intersect_point, _godot_object, point, max_results, exclude, collision_layer, type_mask);
	}
	package(godot) static GodotMethod!(Dictionary, Vector2, Vector2, Array, int, int) _GODOT_intersect_ray;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_ray") = _GODOT_intersect_ray;
	Dictionary intersect_ray(in Vector2 from, in Vector2 to, in Array exclude = Array.empty_array, in int collision_layer = 2147483647, in int type_mask = 15)
	{
		_GODOT_intersect_ray.bind("Physics2DDirectSpaceState", "intersect_ray");
		return ptrcall!(Dictionary)(_GODOT_intersect_ray, _godot_object, from, to, exclude, collision_layer, type_mask);
	}
	package(godot) static GodotMethod!(Array, Physics2DShapeQueryParameters, int) _GODOT_intersect_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_shape") = _GODOT_intersect_shape;
	Array intersect_shape(in Physics2DShapeQueryParameters shape, in int max_results = 32)
	{
		_GODOT_intersect_shape.bind("Physics2DDirectSpaceState", "intersect_shape");
		return ptrcall!(Array)(_GODOT_intersect_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Array, Physics2DShapeQueryParameters) _GODOT_cast_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "cast_motion") = _GODOT_cast_motion;
	Array cast_motion(in Physics2DShapeQueryParameters shape)
	{
		_GODOT_cast_motion.bind("Physics2DDirectSpaceState", "cast_motion");
		return ptrcall!(Array)(_GODOT_cast_motion, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Array, Physics2DShapeQueryParameters, int) _GODOT_collide_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_shape") = _GODOT_collide_shape;
	Array collide_shape(in Physics2DShapeQueryParameters shape, in int max_results = 32)
	{
		_GODOT_collide_shape.bind("Physics2DDirectSpaceState", "collide_shape");
		return ptrcall!(Array)(_GODOT_collide_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Dictionary, Physics2DShapeQueryParameters) _GODOT_get_rest_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rest_info") = _GODOT_get_rest_info;
	Dictionary get_rest_info(in Physics2DShapeQueryParameters shape)
	{
		_GODOT_get_rest_info.bind("Physics2DDirectSpaceState", "get_rest_info");
		return ptrcall!(Dictionary)(_GODOT_get_rest_info, _godot_object, shape);
	}
}
