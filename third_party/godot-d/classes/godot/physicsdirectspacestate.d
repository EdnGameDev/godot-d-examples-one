module godot.physicsdirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physicsshapequeryparameters;
@GodotBaseClass struct PhysicsDirectSpaceState
{
	static immutable string _GODOT_internal_name = "PhysicsDirectSpaceState";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PhysicsDirectSpaceState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsDirectSpaceState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectSpaceState)(constructor());
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
	package(godot) static GodotMethod!(Dictionary, Vector3, Vector3, Array, int, int) _GODOT_intersect_ray;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_ray") = _GODOT_intersect_ray;
	Dictionary intersect_ray(in Vector3 from, in Vector3 to, in Array exclude = Array.empty_array, in int collision_layer = 2147483647, in int type_mask = 15)
	{
		_GODOT_intersect_ray.bind("PhysicsDirectSpaceState", "intersect_ray");
		return ptrcall!(Dictionary)(_GODOT_intersect_ray, _godot_object, from, to, exclude, collision_layer, type_mask);
	}
	package(godot) static GodotMethod!(Array, PhysicsShapeQueryParameters, int) _GODOT_intersect_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_shape") = _GODOT_intersect_shape;
	Array intersect_shape(in PhysicsShapeQueryParameters shape, in int max_results = 32)
	{
		_GODOT_intersect_shape.bind("PhysicsDirectSpaceState", "intersect_shape");
		return ptrcall!(Array)(_GODOT_intersect_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Array, PhysicsShapeQueryParameters, Vector3) _GODOT_cast_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "cast_motion") = _GODOT_cast_motion;
	Array cast_motion(in PhysicsShapeQueryParameters shape, in Vector3 motion)
	{
		_GODOT_cast_motion.bind("PhysicsDirectSpaceState", "cast_motion");
		return ptrcall!(Array)(_GODOT_cast_motion, _godot_object, shape, motion);
	}
	package(godot) static GodotMethod!(Array, PhysicsShapeQueryParameters, int) _GODOT_collide_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_shape") = _GODOT_collide_shape;
	Array collide_shape(in PhysicsShapeQueryParameters shape, in int max_results = 32)
	{
		_GODOT_collide_shape.bind("PhysicsDirectSpaceState", "collide_shape");
		return ptrcall!(Array)(_GODOT_collide_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Dictionary, PhysicsShapeQueryParameters) _GODOT_get_rest_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rest_info") = _GODOT_get_rest_info;
	Dictionary get_rest_info(in PhysicsShapeQueryParameters shape)
	{
		_GODOT_get_rest_info.bind("PhysicsDirectSpaceState", "get_rest_info");
		return ptrcall!(Dictionary)(_GODOT_get_rest_info, _godot_object, shape);
	}
}
