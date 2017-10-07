module godot.physicsserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physicsdirectspacestate;
@GodotBaseClass struct PhysicsServerSingleton
{
	static immutable string _GODOT_internal_name = "PhysicsServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "PhysicsServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PhysicsServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsServer");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsServerSingleton)(constructor());
	}
	enum ProcessInfo : int
	{
		INFO_COLLISION_PAIRS = 1,
		INFO_ISLAND_COUNT = 2,
		INFO_ACTIVE_OBJECTS = 0,
	}
	enum AreaBodyStatus : int
	{
		AREA_BODY_REMOVED = 1,
		AREA_BODY_ADDED = 0,
	}
	enum BodyMode : int
	{
		BODY_MODE_CHARACTER = 3,
		BODY_MODE_STATIC = 0,
		BODY_MODE_RIGID = 2,
		BODY_MODE_KINEMATIC = 1,
	}
	enum ShapeType : int
	{
		SHAPE_PLANE = 0,
		SHAPE_RAY = 1,
		SHAPE_CONCAVE_POLYGON = 6,
		SHAPE_CUSTOM = 8,
		SHAPE_CAPSULE = 4,
		SHAPE_SPHERE = 2,
		SHAPE_BOX = 3,
		SHAPE_HEIGHTMAP = 7,
		SHAPE_CONVEX_POLYGON = 5,
	}
	enum BodyAxisLock : int
	{
		BODY_AXIS_LOCK_Y = 2,
		BODY_AXIS_LOCK_X = 1,
		BODY_AXIS_LOCK_Z = 3,
		BODY_AXIS_LOCK_DISABLED = 0,
	}
	enum PinJointParam : int
	{
		PIN_JOINT_BIAS = 0,
		PIN_JOINT_DAMPING = 1,
		PIN_JOINT_IMPULSE_CLAMP = 2,
	}
	enum SpaceParameter : int
	{
		SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2,
		SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 3,
		SPACE_PARAM_BODY_TIME_TO_SLEEP = 5,
		SPACE_PARAM_CONTACT_MAX_SEPARATION = 1,
		SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 7,
		SPACE_PARAM_BODY_ANGULAR_VELOCITY_DAMP_RATIO = 6,
		SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0,
		SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 4,
	}
	enum ConeTwistJointParam : int
	{
		CONE_TWIST_JOINT_BIAS = 2,
		CONE_TWIST_JOINT_SOFTNESS = 3,
		CONE_TWIST_JOINT_RELAXATION = 4,
		CONE_TWIST_JOINT_SWING_SPAN = 0,
		CONE_TWIST_JOINT_TWIST_SPAN = 1,
	}
	enum JointType : int
	{
		JOINT_6DOF = 4,
		JOINT_CONE_TWIST = 3,
		JOINT_PIN = 0,
		JOINT_SLIDER = 2,
		JOINT_HINGE = 1,
	}
	enum BodyState : int
	{
		BODY_STATE_LINEAR_VELOCITY = 1,
		BODY_STATE_ANGULAR_VELOCITY = 2,
		BODY_STATE_CAN_SLEEP = 4,
		BODY_STATE_TRANSFORM = 0,
		BODY_STATE_SLEEPING = 3,
	}
	enum BodyParameter : int
	{
		BODY_PARAM_BOUNCE = 0,
		BODY_PARAM_GRAVITY_SCALE = 3,
		BODY_PARAM_MASS = 2,
		BODY_PARAM_LINEAR_DAMP = 4,
		BODY_PARAM_MAX = 6,
		BODY_PARAM_FRICTION = 1,
		BODY_PARAM_ANGULAR_DAMP = 5,
	}
	enum G6DOFJointAxisParam : int
	{
		G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT = 13,
		G6DOF_JOINT_ANGULAR_ERP = 11,
		G6DOF_JOINT_ANGULAR_RESTITUTION = 9,
		G6DOF_JOINT_LINEAR_DAMPING = 4,
		G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS = 7,
		G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS = 2,
		G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY = 12,
		G6DOF_JOINT_LINEAR_RESTITUTION = 3,
		G6DOF_JOINT_ANGULAR_DAMPING = 8,
		G6DOF_JOINT_LINEAR_UPPER_LIMIT = 1,
		G6DOF_JOINT_ANGULAR_LOWER_LIMIT = 5,
		G6DOF_JOINT_ANGULAR_FORCE_LIMIT = 10,
		G6DOF_JOINT_ANGULAR_UPPER_LIMIT = 6,
		G6DOF_JOINT_LINEAR_LOWER_LIMIT = 0,
	}
	enum SliderJointParam : int
	{
		SLIDER_JOINT_LINEAR_MOTION_RESTITUTION = 6,
		SLIDER_JOINT_ANGULAR_LIMIT_LOWER = 12,
		SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS = 13,
		SLIDER_JOINT_LINEAR_LIMIT_UPPER = 0,
		SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING = 10,
		SLIDER_JOINT_MAX = 22,
		SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION = 9,
		SLIDER_JOINT_LINEAR_MOTION_SOFTNESS = 5,
		SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS = 16,
		SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS = 19,
		SLIDER_JOINT_ANGULAR_LIMIT_DAMPING = 15,
		SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION = 14,
		SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION = 17,
		SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING = 21,
		SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS = 2,
		SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION = 20,
		SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION = 3,
		SLIDER_JOINT_LINEAR_LIMIT_DAMPING = 4,
		SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS = 8,
		SLIDER_JOINT_LINEAR_LIMIT_LOWER = 1,
		SLIDER_JOINT_ANGULAR_MOTION_DAMPING = 18,
		SLIDER_JOINT_ANGULAR_LIMIT_UPPER = 11,
		SLIDER_JOINT_LINEAR_MOTION_DAMPING = 7,
	}
	enum HingeJointParam : int
	{
		HINGE_JOINT_LIMIT_BIAS = 3,
		HINGE_JOINT_BIAS = 0,
		HINGE_JOINT_LIMIT_RELAXATION = 5,
		HINGE_JOINT_LIMIT_LOWER = 2,
		HINGE_JOINT_MOTOR_TARGET_VELOCITY = 6,
		HINGE_JOINT_LIMIT_SOFTNESS = 4,
		HINGE_JOINT_MOTOR_MAX_IMPULSE = 7,
		HINGE_JOINT_LIMIT_UPPER = 1,
	}
	enum G6DOFJointAxisFlag : int
	{
		G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT = 0,
		G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT = 1,
		G6DOF_JOINT_FLAG_ENABLE_MOTOR = 2,
	}
	enum HingeJointFlag : int
	{
		HINGE_JOINT_FLAG_USE_LIMIT = 0,
		HINGE_JOINT_FLAG_ENABLE_MOTOR = 1,
	}
	enum AreaSpaceOverrideMode : int
	{
		AREA_SPACE_OVERRIDE_COMBINE = 1,
		AREA_SPACE_OVERRIDE_DISABLED = 0,
		AREA_SPACE_OVERRIDE_REPLACE = 3,
		AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4,
		AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2,
	}
	enum AreaParameter : int
	{
		AREA_PARAM_GRAVITY = 0,
		AREA_PARAM_GRAVITY_IS_POINT = 2,
		AREA_PARAM_LINEAR_DAMP = 5,
		AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3,
		AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4,
		AREA_PARAM_GRAVITY_VECTOR = 1,
		AREA_PARAM_ANGULAR_DAMP = 6,
		AREA_PARAM_PRIORITY = 7,
	}
	enum int G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
	enum int SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS = 16;
	enum int BODY_MODE_RIGID = 2;
	enum int G6DOF_JOINT_ANGULAR_FORCE_LIMIT = 10;
	enum int SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
	enum int SLIDER_JOINT_LINEAR_LIMIT_DAMPING = 4;
	enum int SLIDER_JOINT_LINEAR_MOTION_RESTITUTION = 6;
	enum int CONE_TWIST_JOINT_BIAS = 2;
	enum int G6DOF_JOINT_LINEAR_RESTITUTION = 3;
	enum int SHAPE_SPHERE = 2;
	enum int HINGE_JOINT_FLAG_ENABLE_MOTOR = 1;
	enum int SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS = 8;
	enum int JOINT_CONE_TWIST = 3;
	enum int JOINT_6DOF = 4;
	enum int PIN_JOINT_DAMPING = 1;
	enum int HINGE_JOINT_BIAS = 0;
	enum int BODY_PARAM_LINEAR_DAMP = 4;
	enum int BODY_STATE_CAN_SLEEP = 4;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_UPPER = 11;
	enum int HINGE_JOINT_MOTOR_MAX_IMPULSE = 7;
	enum int SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
	enum int BODY_AXIS_LOCK_DISABLED = 0;
	enum int G6DOF_JOINT_ANGULAR_UPPER_LIMIT = 6;
	enum int HINGE_JOINT_LIMIT_BIAS = 3;
	enum int SPACE_PARAM_CONTACT_MAX_SEPARATION = 1;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_DAMPING = 15;
	enum int SHAPE_CONCAVE_POLYGON = 6;
	enum int HINGE_JOINT_LIMIT_RELAXATION = 5;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION = 14;
	enum int SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 7;
	enum int BODY_STATE_ANGULAR_VELOCITY = 2;
	enum int AREA_SPACE_OVERRIDE_REPLACE = 3;
	enum int G6DOF_JOINT_ANGULAR_RESTITUTION = 9;
	enum int SLIDER_JOINT_LINEAR_LIMIT_LOWER = 1;
	enum int JOINT_PIN = 0;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS = 13;
	enum int HINGE_JOINT_FLAG_USE_LIMIT = 0;
	enum int AREA_PARAM_LINEAR_DAMP = 5;
	enum int SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION = 17;
	enum int HINGE_JOINT_MOTOR_TARGET_VELOCITY = 6;
	enum int G6DOF_JOINT_ANGULAR_LOWER_LIMIT = 5;
	enum int SLIDER_JOINT_ANGULAR_MOTION_DAMPING = 18;
	enum int JOINT_HINGE = 1;
	enum int SHAPE_BOX = 3;
	enum int SHAPE_CAPSULE = 4;
	enum int SHAPE_CONVEX_POLYGON = 5;
	enum int BODY_PARAM_MAX = 6;
	enum int JOINT_SLIDER = 2;
	enum int G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT = 13;
	enum int PIN_JOINT_BIAS = 0;
	enum int CONE_TWIST_JOINT_SOFTNESS = 3;
	enum int CONE_TWIST_JOINT_RELAXATION = 4;
	enum int SPACE_PARAM_BODY_ANGULAR_VELOCITY_DAMP_RATIO = 6;
	enum int SHAPE_HEIGHTMAP = 7;
	enum int SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING = 10;
	enum int BODY_MODE_CHARACTER = 3;
	enum int SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 3;
	enum int BODY_PARAM_MASS = 2;
	enum int INFO_ISLAND_COUNT = 2;
	enum int BODY_PARAM_BOUNCE = 0;
	enum int BODY_AXIS_LOCK_Z = 3;
	enum int SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
	enum int BODY_STATE_LINEAR_VELOCITY = 1;
	enum int SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION = 3;
	enum int AREA_BODY_REMOVED = 1;
	enum int BODY_AXIS_LOCK_X = 1;
	enum int BODY_PARAM_GRAVITY_SCALE = 3;
	enum int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
	enum int G6DOF_JOINT_ANGULAR_DAMPING = 8;
	enum int SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 4;
	enum int G6DOF_JOINT_LINEAR_LOWER_LIMIT = 0;
	enum int PIN_JOINT_IMPULSE_CLAMP = 2;
	enum int SLIDER_JOINT_MAX = 22;
	enum int AREA_PARAM_GRAVITY = 0;
	enum int SHAPE_RAY = 1;
	enum int AREA_SPACE_OVERRIDE_DISABLED = 0;
	enum int BODY_PARAM_FRICTION = 1;
	enum int SLIDER_JOINT_LINEAR_MOTION_DAMPING = 7;
	enum int INFO_ACTIVE_OBJECTS = 0;
	enum int AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2;
	enum int SLIDER_JOINT_LINEAR_LIMIT_UPPER = 0;
	enum int G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS = 7;
	enum int SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2;
	enum int BODY_AXIS_LOCK_Y = 2;
	enum int AREA_PARAM_GRAVITY_VECTOR = 1;
	enum int AREA_PARAM_PRIORITY = 7;
	enum int HINGE_JOINT_LIMIT_LOWER = 2;
	enum int G6DOF_JOINT_LINEAR_UPPER_LIMIT = 1;
	enum int HINGE_JOINT_LIMIT_SOFTNESS = 4;
	enum int G6DOF_JOINT_ANGULAR_ERP = 11;
	enum int BODY_STATE_SLEEPING = 3;
	enum int AREA_PARAM_GRAVITY_IS_POINT = 2;
	enum int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
	enum int AREA_BODY_ADDED = 0;
	enum int HINGE_JOINT_LIMIT_UPPER = 1;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_LOWER = 12;
	enum int SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION = 9;
	enum int AREA_SPACE_OVERRIDE_COMBINE = 1;
	enum int INFO_COLLISION_PAIRS = 1;
	enum int AREA_PARAM_ANGULAR_DAMP = 6;
	enum int SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING = 21;
	enum int G6DOF_JOINT_FLAG_ENABLE_MOTOR = 2;
	enum int BODY_PARAM_ANGULAR_DAMP = 5;
	enum int G6DOF_JOINT_LINEAR_DAMPING = 4;
	enum int CONE_TWIST_JOINT_SWING_SPAN = 0;
	enum int BODY_MODE_KINEMATIC = 1;
	enum int SLIDER_JOINT_LINEAR_MOTION_SOFTNESS = 5;
	enum int G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT = 1;
	enum int G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
	enum int SHAPE_CUSTOM = 8;
	enum int CONE_TWIST_JOINT_TWIST_SPAN = 1;
	enum int BODY_STATE_TRANSFORM = 0;
	enum int AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4;
	enum int SHAPE_PLANE = 0;
	enum int BODY_MODE_STATIC = 0;
	enum int SPACE_PARAM_BODY_TIME_TO_SLEEP = 5;
	enum int G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT = 0;
	enum int SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0;
	package(godot) static GodotMethod!(RID, int) _GODOT_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_create") = _GODOT_shape_create;
	RID shape_create(in int type)
	{
		_GODOT_shape_create.bind("PhysicsServer", "shape_create");
		return ptrcall!(RID)(_GODOT_shape_create, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, RID, Variant) _GODOT_shape_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_set_data") = _GODOT_shape_set_data;
	void shape_set_data(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		_GODOT_shape_set_data.bind("PhysicsServer", "shape_set_data");
		ptrcall!(void)(_GODOT_shape_set_data, _godot_object, shape, data);
	}
	package(godot) static GodotMethod!(PhysicsServer.ShapeType, RID) _GODOT_shape_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_type") = _GODOT_shape_get_type;
	PhysicsServer.ShapeType shape_get_type(in RID shape) const
	{
		_GODOT_shape_get_type.bind("PhysicsServer", "shape_get_type");
		return ptrcall!(PhysicsServer.ShapeType)(_GODOT_shape_get_type, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Variant, RID) _GODOT_shape_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_data") = _GODOT_shape_get_data;
	Variant shape_get_data(in RID shape) const
	{
		_GODOT_shape_get_data.bind("PhysicsServer", "shape_get_data");
		return ptrcall!(Variant)(_GODOT_shape_get_data, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_space_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_create") = _GODOT_space_create;
	RID space_create()
	{
		_GODOT_space_create.bind("PhysicsServer", "space_create");
		return ptrcall!(RID)(_GODOT_space_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_space_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_active") = _GODOT_space_set_active;
	void space_set_active(in RID space, in bool active)
	{
		_GODOT_space_set_active.bind("PhysicsServer", "space_set_active");
		ptrcall!(void)(_GODOT_space_set_active, _godot_object, space, active);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_space_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_is_active") = _GODOT_space_is_active;
	bool space_is_active(in RID space) const
	{
		_GODOT_space_is_active.bind("PhysicsServer", "space_is_active");
		return ptrcall!(bool)(_GODOT_space_is_active, _godot_object, space);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_space_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_param") = _GODOT_space_set_param;
	void space_set_param(in RID space, in int param, in float value)
	{
		_GODOT_space_set_param.bind("PhysicsServer", "space_set_param");
		ptrcall!(void)(_GODOT_space_set_param, _godot_object, space, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_space_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_param") = _GODOT_space_get_param;
	float space_get_param(in RID space, in int param) const
	{
		_GODOT_space_get_param.bind("PhysicsServer", "space_get_param");
		return ptrcall!(float)(_GODOT_space_get_param, _godot_object, space, param);
	}
	package(godot) static GodotMethod!(PhysicsDirectSpaceState, RID) _GODOT_space_get_direct_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_direct_state") = _GODOT_space_get_direct_state;
	PhysicsDirectSpaceState space_get_direct_state(in RID space)
	{
		_GODOT_space_get_direct_state.bind("PhysicsServer", "space_get_direct_state");
		return ptrcall!(PhysicsDirectSpaceState)(_GODOT_space_get_direct_state, _godot_object, space);
	}
	package(godot) static GodotMethod!(RID) _GODOT_area_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_create") = _GODOT_area_create;
	RID area_create()
	{
		_GODOT_area_create.bind("PhysicsServer", "area_create");
		return ptrcall!(RID)(_GODOT_area_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_area_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space") = _GODOT_area_set_space;
	void area_set_space(in RID area, in RID space)
	{
		_GODOT_area_set_space.bind("PhysicsServer", "area_set_space");
		ptrcall!(void)(_GODOT_area_set_space, _godot_object, area, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_area_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space") = _GODOT_area_get_space;
	RID area_get_space(in RID area) const
	{
		_GODOT_area_get_space.bind("PhysicsServer", "area_get_space");
		return ptrcall!(RID)(_GODOT_area_get_space, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_set_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space_override_mode") = _GODOT_area_set_space_override_mode;
	void area_set_space_override_mode(in RID area, in int mode)
	{
		_GODOT_area_set_space_override_mode.bind("PhysicsServer", "area_set_space_override_mode");
		ptrcall!(void)(_GODOT_area_set_space_override_mode, _godot_object, area, mode);
	}
	package(godot) static GodotMethod!(PhysicsServer.AreaSpaceOverrideMode, RID) _GODOT_area_get_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space_override_mode") = _GODOT_area_get_space_override_mode;
	PhysicsServer.AreaSpaceOverrideMode area_get_space_override_mode(in RID area) const
	{
		_GODOT_area_get_space_override_mode.bind("PhysicsServer", "area_get_space_override_mode");
		return ptrcall!(PhysicsServer.AreaSpaceOverrideMode)(_GODOT_area_get_space_override_mode, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform) _GODOT_area_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_add_shape") = _GODOT_area_add_shape;
	void area_add_shape(in RID area, in RID shape, in Transform transform = Transform.init)
	{
		_GODOT_area_add_shape.bind("PhysicsServer", "area_add_shape");
		ptrcall!(void)(_GODOT_area_add_shape, _godot_object, area, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, int, RID) _GODOT_area_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape") = _GODOT_area_set_shape;
	void area_set_shape(in RID area, in int shape_idx, in RID shape)
	{
		_GODOT_area_set_shape.bind("PhysicsServer", "area_set_shape");
		ptrcall!(void)(_GODOT_area_set_shape, _godot_object, area, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, int, Transform) _GODOT_area_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape_transform") = _GODOT_area_set_shape_transform;
	void area_set_shape_transform(in RID area, in int shape_idx, in Transform transform)
	{
		_GODOT_area_set_shape_transform.bind("PhysicsServer", "area_set_shape_transform");
		ptrcall!(void)(_GODOT_area_set_shape_transform, _godot_object, area, shape_idx, transform);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_area_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_count") = _GODOT_area_get_shape_count;
	int area_get_shape_count(in RID area) const
	{
		_GODOT_area_get_shape_count.bind("PhysicsServer", "area_get_shape_count");
		return ptrcall!(int)(_GODOT_area_get_shape_count, _godot_object, area);
	}
	package(godot) static GodotMethod!(RID, RID, int) _GODOT_area_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape") = _GODOT_area_get_shape;
	RID area_get_shape(in RID area, in int shape_idx) const
	{
		_GODOT_area_get_shape.bind("PhysicsServer", "area_get_shape");
		return ptrcall!(RID)(_GODOT_area_get_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(Transform, RID, int) _GODOT_area_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_transform") = _GODOT_area_get_shape_transform;
	Transform area_get_shape_transform(in RID area, in int shape_idx) const
	{
		_GODOT_area_get_shape_transform.bind("PhysicsServer", "area_get_shape_transform");
		return ptrcall!(Transform)(_GODOT_area_get_shape_transform, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_remove_shape") = _GODOT_area_remove_shape;
	void area_remove_shape(in RID area, in int shape_idx)
	{
		_GODOT_area_remove_shape.bind("PhysicsServer", "area_remove_shape");
		ptrcall!(void)(_GODOT_area_remove_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_area_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_clear_shapes") = _GODOT_area_clear_shapes;
	void area_clear_shapes(in RID area)
	{
		_GODOT_area_clear_shapes.bind("PhysicsServer", "area_clear_shapes");
		ptrcall!(void)(_GODOT_area_clear_shapes, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_layer") = _GODOT_area_set_collision_layer;
	void area_set_collision_layer(in RID area, in int layer)
	{
		_GODOT_area_set_collision_layer.bind("PhysicsServer", "area_set_collision_layer");
		ptrcall!(void)(_GODOT_area_set_collision_layer, _godot_object, area, layer);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_mask") = _GODOT_area_set_collision_mask;
	void area_set_collision_mask(in RID area, in int mask)
	{
		_GODOT_area_set_collision_mask.bind("PhysicsServer", "area_set_collision_mask");
		ptrcall!(void)(_GODOT_area_set_collision_mask, _godot_object, area, mask);
	}
	package(godot) static GodotMethod!(void, RID, int, Variant) _GODOT_area_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_param") = _GODOT_area_set_param;
	void area_set_param(VariantArg2)(in RID area, in int param, in VariantArg2 value)
	{
		_GODOT_area_set_param.bind("PhysicsServer", "area_set_param");
		ptrcall!(void)(_GODOT_area_set_param, _godot_object, area, param, value);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_area_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_transform") = _GODOT_area_set_transform;
	void area_set_transform(in RID area, in Transform transform)
	{
		_GODOT_area_set_transform.bind("PhysicsServer", "area_set_transform");
		ptrcall!(void)(_GODOT_area_set_transform, _godot_object, area, transform);
	}
	package(godot) static GodotMethod!(Variant, RID, int) _GODOT_area_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_param") = _GODOT_area_get_param;
	Variant area_get_param(in RID area, in int param) const
	{
		_GODOT_area_get_param.bind("PhysicsServer", "area_get_param");
		return ptrcall!(Variant)(_GODOT_area_get_param, _godot_object, area, param);
	}
	package(godot) static GodotMethod!(Transform, RID) _GODOT_area_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_transform") = _GODOT_area_get_transform;
	Transform area_get_transform(in RID area) const
	{
		_GODOT_area_get_transform.bind("PhysicsServer", "area_get_transform");
		return ptrcall!(Transform)(_GODOT_area_get_transform, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_attach_object_instance_id") = _GODOT_area_attach_object_instance_id;
	void area_attach_object_instance_id(in RID area, in int id)
	{
		_GODOT_area_attach_object_instance_id.bind("PhysicsServer", "area_attach_object_instance_id");
		ptrcall!(void)(_GODOT_area_attach_object_instance_id, _godot_object, area, id);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_area_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_object_instance_id") = _GODOT_area_get_object_instance_id;
	int area_get_object_instance_id(in RID area) const
	{
		_GODOT_area_get_object_instance_id.bind("PhysicsServer", "area_get_object_instance_id");
		return ptrcall!(int)(_GODOT_area_get_object_instance_id, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String) _GODOT_area_set_monitor_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_monitor_callback") = _GODOT_area_set_monitor_callback;
	void area_set_monitor_callback(StringArg2)(in RID area, in GodotObject receiver, in StringArg2 method)
	{
		_GODOT_area_set_monitor_callback.bind("PhysicsServer", "area_set_monitor_callback");
		ptrcall!(void)(_GODOT_area_set_monitor_callback, _godot_object, area, receiver, method);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_area_set_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_ray_pickable") = _GODOT_area_set_ray_pickable;
	void area_set_ray_pickable(in RID area, in bool enable)
	{
		_GODOT_area_set_ray_pickable.bind("PhysicsServer", "area_set_ray_pickable");
		ptrcall!(void)(_GODOT_area_set_ray_pickable, _godot_object, area, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_area_is_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_is_ray_pickable") = _GODOT_area_is_ray_pickable;
	bool area_is_ray_pickable(in RID area) const
	{
		_GODOT_area_is_ray_pickable.bind("PhysicsServer", "area_is_ray_pickable");
		return ptrcall!(bool)(_GODOT_area_is_ray_pickable, _godot_object, area);
	}
	package(godot) static GodotMethod!(RID, int, bool) _GODOT_body_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_create") = _GODOT_body_create;
	RID body_create(in int mode = 2, in bool init_sleeping = false)
	{
		_GODOT_body_create.bind("PhysicsServer", "body_create");
		return ptrcall!(RID)(_GODOT_body_create, _godot_object, mode, init_sleeping);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_space") = _GODOT_body_set_space;
	void body_set_space(in RID _body, in RID space)
	{
		_GODOT_body_set_space.bind("PhysicsServer", "body_set_space");
		ptrcall!(void)(_GODOT_body_set_space, _godot_object, _body, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_body_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_space") = _GODOT_body_get_space;
	RID body_get_space(in RID _body) const
	{
		_GODOT_body_get_space.bind("PhysicsServer", "body_get_space");
		return ptrcall!(RID)(_GODOT_body_get_space, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_mode") = _GODOT_body_set_mode;
	void body_set_mode(in RID _body, in int mode)
	{
		_GODOT_body_set_mode.bind("PhysicsServer", "body_set_mode");
		ptrcall!(void)(_GODOT_body_set_mode, _godot_object, _body, mode);
	}
	package(godot) static GodotMethod!(PhysicsServer.BodyMode, RID) _GODOT_body_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_mode") = _GODOT_body_get_mode;
	PhysicsServer.BodyMode body_get_mode(in RID _body) const
	{
		_GODOT_body_get_mode.bind("PhysicsServer", "body_get_mode");
		return ptrcall!(PhysicsServer.BodyMode)(_GODOT_body_get_mode, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_layer") = _GODOT_body_set_collision_layer;
	void body_set_collision_layer(in RID _body, in int layer)
	{
		_GODOT_body_set_collision_layer.bind("PhysicsServer", "body_set_collision_layer");
		ptrcall!(void)(_GODOT_body_set_collision_layer, _godot_object, _body, layer);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_layer") = _GODOT_body_get_collision_layer;
	int body_get_collision_layer(in RID _body) const
	{
		_GODOT_body_get_collision_layer.bind("PhysicsServer", "body_get_collision_layer");
		return ptrcall!(int)(_GODOT_body_get_collision_layer, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_mask") = _GODOT_body_set_collision_mask;
	void body_set_collision_mask(in RID _body, in int mask)
	{
		_GODOT_body_set_collision_mask.bind("PhysicsServer", "body_set_collision_mask");
		ptrcall!(void)(_GODOT_body_set_collision_mask, _godot_object, _body, mask);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_mask") = _GODOT_body_get_collision_mask;
	int body_get_collision_mask(in RID _body) const
	{
		_GODOT_body_get_collision_mask.bind("PhysicsServer", "body_get_collision_mask");
		return ptrcall!(int)(_GODOT_body_get_collision_mask, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform) _GODOT_body_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_shape") = _GODOT_body_add_shape;
	void body_add_shape(in RID _body, in RID shape, in Transform transform = Transform.init)
	{
		_GODOT_body_add_shape.bind("PhysicsServer", "body_add_shape");
		ptrcall!(void)(_GODOT_body_add_shape, _godot_object, _body, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, int, RID) _GODOT_body_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape") = _GODOT_body_set_shape;
	void body_set_shape(in RID _body, in int shape_idx, in RID shape)
	{
		_GODOT_body_set_shape.bind("PhysicsServer", "body_set_shape");
		ptrcall!(void)(_GODOT_body_set_shape, _godot_object, _body, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, int, Transform) _GODOT_body_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_transform") = _GODOT_body_set_shape_transform;
	void body_set_shape_transform(in RID _body, in int shape_idx, in Transform transform)
	{
		_GODOT_body_set_shape_transform.bind("PhysicsServer", "body_set_shape_transform");
		ptrcall!(void)(_GODOT_body_set_shape_transform, _godot_object, _body, shape_idx, transform);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_count") = _GODOT_body_get_shape_count;
	int body_get_shape_count(in RID _body) const
	{
		_GODOT_body_get_shape_count.bind("PhysicsServer", "body_get_shape_count");
		return ptrcall!(int)(_GODOT_body_get_shape_count, _godot_object, _body);
	}
	package(godot) static GodotMethod!(RID, RID, int) _GODOT_body_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape") = _GODOT_body_get_shape;
	RID body_get_shape(in RID _body, in int shape_idx) const
	{
		_GODOT_body_get_shape.bind("PhysicsServer", "body_get_shape");
		return ptrcall!(RID)(_GODOT_body_get_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(Transform, RID, int) _GODOT_body_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_transform") = _GODOT_body_get_shape_transform;
	Transform body_get_shape_transform(in RID _body, in int shape_idx) const
	{
		_GODOT_body_get_shape_transform.bind("PhysicsServer", "body_get_shape_transform");
		return ptrcall!(Transform)(_GODOT_body_get_shape_transform, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_shape") = _GODOT_body_remove_shape;
	void body_remove_shape(in RID _body, in int shape_idx)
	{
		_GODOT_body_remove_shape.bind("PhysicsServer", "body_remove_shape");
		ptrcall!(void)(_GODOT_body_remove_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_body_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_clear_shapes") = _GODOT_body_clear_shapes;
	void body_clear_shapes(in RID _body)
	{
		_GODOT_body_clear_shapes.bind("PhysicsServer", "body_clear_shapes");
		ptrcall!(void)(_GODOT_body_clear_shapes, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_attach_object_instance_id") = _GODOT_body_attach_object_instance_id;
	void body_attach_object_instance_id(in RID _body, in int id)
	{
		_GODOT_body_attach_object_instance_id.bind("PhysicsServer", "body_attach_object_instance_id");
		ptrcall!(void)(_GODOT_body_attach_object_instance_id, _godot_object, _body, id);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_object_instance_id") = _GODOT_body_get_object_instance_id;
	int body_get_object_instance_id(in RID _body) const
	{
		_GODOT_body_get_object_instance_id.bind("PhysicsServer", "body_get_object_instance_id");
		return ptrcall!(int)(_GODOT_body_get_object_instance_id, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_enable_continuous_collision_detection;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_enable_continuous_collision_detection") = _GODOT_body_set_enable_continuous_collision_detection;
	void body_set_enable_continuous_collision_detection(in RID _body, in bool enable)
	{
		_GODOT_body_set_enable_continuous_collision_detection.bind("PhysicsServer", "body_set_enable_continuous_collision_detection");
		ptrcall!(void)(_GODOT_body_set_enable_continuous_collision_detection, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_continuous_collision_detection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_continuous_collision_detection_enabled") = _GODOT_body_is_continuous_collision_detection_enabled;
	bool body_is_continuous_collision_detection_enabled(in RID _body) const
	{
		_GODOT_body_is_continuous_collision_detection_enabled.bind("PhysicsServer", "body_is_continuous_collision_detection_enabled");
		return ptrcall!(bool)(_GODOT_body_is_continuous_collision_detection_enabled, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_body_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_param") = _GODOT_body_set_param;
	void body_set_param(in RID _body, in int param, in float value)
	{
		_GODOT_body_set_param.bind("PhysicsServer", "body_set_param");
		ptrcall!(void)(_GODOT_body_set_param, _godot_object, _body, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_body_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_param") = _GODOT_body_get_param;
	float body_get_param(in RID _body, in int param) const
	{
		_GODOT_body_get_param.bind("PhysicsServer", "body_get_param");
		return ptrcall!(float)(_GODOT_body_get_param, _godot_object, _body, param);
	}
	package(godot) static GodotMethod!(void, RID, int, Variant) _GODOT_body_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_state") = _GODOT_body_set_state;
	void body_set_state(VariantArg2)(in RID _body, in int state, in VariantArg2 value)
	{
		_GODOT_body_set_state.bind("PhysicsServer", "body_set_state");
		ptrcall!(void)(_GODOT_body_set_state, _godot_object, _body, state, value);
	}
	package(godot) static GodotMethod!(Variant, RID, int) _GODOT_body_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_state") = _GODOT_body_get_state;
	Variant body_get_state(in RID _body, in int state) const
	{
		_GODOT_body_get_state.bind("PhysicsServer", "body_get_state");
		return ptrcall!(Variant)(_GODOT_body_get_state, _godot_object, _body, state);
	}
	package(godot) static GodotMethod!(void, RID, Vector3, Vector3) _GODOT_body_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_apply_impulse") = _GODOT_body_apply_impulse;
	void body_apply_impulse(in RID _body, in Vector3 position, in Vector3 impulse)
	{
		_GODOT_body_apply_impulse.bind("PhysicsServer", "body_apply_impulse");
		ptrcall!(void)(_GODOT_body_apply_impulse, _godot_object, _body, position, impulse);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_body_apply_torque_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_apply_torque_impulse") = _GODOT_body_apply_torque_impulse;
	void body_apply_torque_impulse(in RID _body, in Vector3 impulse)
	{
		_GODOT_body_apply_torque_impulse.bind("PhysicsServer", "body_apply_torque_impulse");
		ptrcall!(void)(_GODOT_body_apply_torque_impulse, _godot_object, _body, impulse);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_body_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_axis_velocity") = _GODOT_body_set_axis_velocity;
	void body_set_axis_velocity(in RID _body, in Vector3 axis_velocity)
	{
		_GODOT_body_set_axis_velocity.bind("PhysicsServer", "body_set_axis_velocity");
		ptrcall!(void)(_GODOT_body_set_axis_velocity, _godot_object, _body, axis_velocity);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_axis_lock") = _GODOT_body_set_axis_lock;
	void body_set_axis_lock(in RID _body, in int axis)
	{
		_GODOT_body_set_axis_lock.bind("PhysicsServer", "body_set_axis_lock");
		ptrcall!(void)(_GODOT_body_set_axis_lock, _godot_object, _body, axis);
	}
	package(godot) static GodotMethod!(PhysicsServer.BodyAxisLock, RID) _GODOT_body_get_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_axis_lock") = _GODOT_body_get_axis_lock;
	PhysicsServer.BodyAxisLock body_get_axis_lock(in RID _body) const
	{
		_GODOT_body_get_axis_lock.bind("PhysicsServer", "body_get_axis_lock");
		return ptrcall!(PhysicsServer.BodyAxisLock)(_GODOT_body_get_axis_lock, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_add_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_collision_exception") = _GODOT_body_add_collision_exception;
	void body_add_collision_exception(in RID _body, in RID excepted_body)
	{
		_GODOT_body_add_collision_exception.bind("PhysicsServer", "body_add_collision_exception");
		ptrcall!(void)(_GODOT_body_add_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_remove_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_collision_exception") = _GODOT_body_remove_collision_exception;
	void body_remove_collision_exception(in RID _body, in RID excepted_body)
	{
		_GODOT_body_remove_collision_exception.bind("PhysicsServer", "body_remove_collision_exception");
		ptrcall!(void)(_GODOT_body_remove_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_max_contacts_reported") = _GODOT_body_set_max_contacts_reported;
	void body_set_max_contacts_reported(in RID _body, in int amount)
	{
		_GODOT_body_set_max_contacts_reported.bind("PhysicsServer", "body_set_max_contacts_reported");
		ptrcall!(void)(_GODOT_body_set_max_contacts_reported, _godot_object, _body, amount);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_max_contacts_reported") = _GODOT_body_get_max_contacts_reported;
	int body_get_max_contacts_reported(in RID _body) const
	{
		_GODOT_body_get_max_contacts_reported.bind("PhysicsServer", "body_get_max_contacts_reported");
		return ptrcall!(int)(_GODOT_body_get_max_contacts_reported, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_omit_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_omit_force_integration") = _GODOT_body_set_omit_force_integration;
	void body_set_omit_force_integration(in RID _body, in bool enable)
	{
		_GODOT_body_set_omit_force_integration.bind("PhysicsServer", "body_set_omit_force_integration");
		ptrcall!(void)(_GODOT_body_set_omit_force_integration, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_omitting_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_omitting_force_integration") = _GODOT_body_is_omitting_force_integration;
	bool body_is_omitting_force_integration(in RID _body) const
	{
		_GODOT_body_is_omitting_force_integration.bind("PhysicsServer", "body_is_omitting_force_integration");
		return ptrcall!(bool)(_GODOT_body_is_omitting_force_integration, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String, Variant) _GODOT_body_set_force_integration_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_force_integration_callback") = _GODOT_body_set_force_integration_callback;
	void body_set_force_integration_callback(StringArg2, VariantArg3)(in RID _body, in GodotObject receiver, in StringArg2 method, in VariantArg3 userdata = Variant.nil)
	{
		_GODOT_body_set_force_integration_callback.bind("PhysicsServer", "body_set_force_integration_callback");
		ptrcall!(void)(_GODOT_body_set_force_integration_callback, _godot_object, _body, receiver, method, userdata);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_ray_pickable") = _GODOT_body_set_ray_pickable;
	void body_set_ray_pickable(in RID _body, in bool enable)
	{
		_GODOT_body_set_ray_pickable.bind("PhysicsServer", "body_set_ray_pickable");
		ptrcall!(void)(_GODOT_body_set_ray_pickable, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_ray_pickable") = _GODOT_body_is_ray_pickable;
	bool body_is_ray_pickable(in RID _body) const
	{
		_GODOT_body_is_ray_pickable.bind("PhysicsServer", "body_is_ray_pickable");
		return ptrcall!(bool)(_GODOT_body_is_ray_pickable, _godot_object, _body);
	}
	package(godot) static GodotMethod!(RID, RID, Vector3, RID, Vector3) _GODOT_joint_create_pin;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_pin") = _GODOT_joint_create_pin;
	RID joint_create_pin(in RID body_A, in Vector3 local_A, in RID body_B, in Vector3 local_B)
	{
		_GODOT_joint_create_pin.bind("PhysicsServer", "joint_create_pin");
		return ptrcall!(RID)(_GODOT_joint_create_pin, _godot_object, body_A, local_A, body_B, local_B);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_pin_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_set_param") = _GODOT_pin_joint_set_param;
	void pin_joint_set_param(in RID joint, in int param, in float value)
	{
		_GODOT_pin_joint_set_param.bind("PhysicsServer", "pin_joint_set_param");
		ptrcall!(void)(_GODOT_pin_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_pin_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_get_param") = _GODOT_pin_joint_get_param;
	float pin_joint_get_param(in RID joint, in int param) const
	{
		_GODOT_pin_joint_get_param.bind("PhysicsServer", "pin_joint_get_param");
		return ptrcall!(float)(_GODOT_pin_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_pin_joint_set_local_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_set_local_a") = _GODOT_pin_joint_set_local_a;
	void pin_joint_set_local_a(in RID joint, in Vector3 local_A)
	{
		_GODOT_pin_joint_set_local_a.bind("PhysicsServer", "pin_joint_set_local_a");
		ptrcall!(void)(_GODOT_pin_joint_set_local_a, _godot_object, joint, local_A);
	}
	package(godot) static GodotMethod!(Vector3, RID) _GODOT_pin_joint_get_local_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_get_local_a") = _GODOT_pin_joint_get_local_a;
	Vector3 pin_joint_get_local_a(in RID joint) const
	{
		_GODOT_pin_joint_get_local_a.bind("PhysicsServer", "pin_joint_get_local_a");
		return ptrcall!(Vector3)(_GODOT_pin_joint_get_local_a, _godot_object, joint);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_pin_joint_set_local_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_set_local_b") = _GODOT_pin_joint_set_local_b;
	void pin_joint_set_local_b(in RID joint, in Vector3 local_B)
	{
		_GODOT_pin_joint_set_local_b.bind("PhysicsServer", "pin_joint_set_local_b");
		ptrcall!(void)(_GODOT_pin_joint_set_local_b, _godot_object, joint, local_B);
	}
	package(godot) static GodotMethod!(Vector3, RID) _GODOT_pin_joint_get_local_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_get_local_b") = _GODOT_pin_joint_get_local_b;
	Vector3 pin_joint_get_local_b(in RID joint) const
	{
		_GODOT_pin_joint_get_local_b.bind("PhysicsServer", "pin_joint_get_local_b");
		return ptrcall!(Vector3)(_GODOT_pin_joint_get_local_b, _godot_object, joint);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_hinge;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_hinge") = _GODOT_joint_create_hinge;
	RID joint_create_hinge(in RID body_A, in Transform hinge_A, in RID body_B, in Transform hinge_B)
	{
		_GODOT_joint_create_hinge.bind("PhysicsServer", "joint_create_hinge");
		return ptrcall!(RID)(_GODOT_joint_create_hinge, _godot_object, body_A, hinge_A, body_B, hinge_B);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_hinge_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_set_param") = _GODOT_hinge_joint_set_param;
	void hinge_joint_set_param(in RID joint, in int param, in float value)
	{
		_GODOT_hinge_joint_set_param.bind("PhysicsServer", "hinge_joint_set_param");
		ptrcall!(void)(_GODOT_hinge_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_hinge_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_get_param") = _GODOT_hinge_joint_get_param;
	float hinge_joint_get_param(in RID joint, in int param) const
	{
		_GODOT_hinge_joint_get_param.bind("PhysicsServer", "hinge_joint_get_param");
		return ptrcall!(float)(_GODOT_hinge_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(void, RID, int, bool) _GODOT_hinge_joint_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_set_flag") = _GODOT_hinge_joint_set_flag;
	void hinge_joint_set_flag(in RID joint, in int flag, in bool enabled)
	{
		_GODOT_hinge_joint_set_flag.bind("PhysicsServer", "hinge_joint_set_flag");
		ptrcall!(void)(_GODOT_hinge_joint_set_flag, _godot_object, joint, flag, enabled);
	}
	package(godot) static GodotMethod!(bool, RID, int) _GODOT_hinge_joint_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_get_flag") = _GODOT_hinge_joint_get_flag;
	bool hinge_joint_get_flag(in RID joint, in int flag) const
	{
		_GODOT_hinge_joint_get_flag.bind("PhysicsServer", "hinge_joint_get_flag");
		return ptrcall!(bool)(_GODOT_hinge_joint_get_flag, _godot_object, joint, flag);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_slider;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_slider") = _GODOT_joint_create_slider;
	RID joint_create_slider(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		_GODOT_joint_create_slider.bind("PhysicsServer", "joint_create_slider");
		return ptrcall!(RID)(_GODOT_joint_create_slider, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_slider_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "slider_joint_set_param") = _GODOT_slider_joint_set_param;
	void slider_joint_set_param(in RID joint, in int param, in float value)
	{
		_GODOT_slider_joint_set_param.bind("PhysicsServer", "slider_joint_set_param");
		ptrcall!(void)(_GODOT_slider_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_slider_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "slider_joint_get_param") = _GODOT_slider_joint_get_param;
	float slider_joint_get_param(in RID joint, in int param) const
	{
		_GODOT_slider_joint_get_param.bind("PhysicsServer", "slider_joint_get_param");
		return ptrcall!(float)(_GODOT_slider_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_cone_twist;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_cone_twist") = _GODOT_joint_create_cone_twist;
	RID joint_create_cone_twist(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		_GODOT_joint_create_cone_twist.bind("PhysicsServer", "joint_create_cone_twist");
		return ptrcall!(RID)(_GODOT_joint_create_cone_twist, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_cone_twist_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "cone_twist_joint_set_param") = _GODOT_cone_twist_joint_set_param;
	void cone_twist_joint_set_param(in RID joint, in int param, in float value)
	{
		_GODOT_cone_twist_joint_set_param.bind("PhysicsServer", "cone_twist_joint_set_param");
		ptrcall!(void)(_GODOT_cone_twist_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_cone_twist_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "cone_twist_joint_get_param") = _GODOT_cone_twist_joint_get_param;
	float cone_twist_joint_get_param(in RID joint, in int param) const
	{
		_GODOT_cone_twist_joint_get_param.bind("PhysicsServer", "cone_twist_joint_get_param");
		return ptrcall!(float)(_GODOT_cone_twist_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(PhysicsServer.JointType, RID) _GODOT_joint_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_type") = _GODOT_joint_get_type;
	PhysicsServer.JointType joint_get_type(in RID joint) const
	{
		_GODOT_joint_get_type.bind("PhysicsServer", "joint_get_type");
		return ptrcall!(PhysicsServer.JointType)(_GODOT_joint_get_type, _godot_object, joint);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_joint_set_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_set_solver_priority") = _GODOT_joint_set_solver_priority;
	void joint_set_solver_priority(in RID joint, in int priority)
	{
		_GODOT_joint_set_solver_priority.bind("PhysicsServer", "joint_set_solver_priority");
		ptrcall!(void)(_GODOT_joint_set_solver_priority, _godot_object, joint, priority);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_joint_get_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_solver_priority") = _GODOT_joint_get_solver_priority;
	int joint_get_solver_priority(in RID joint) const
	{
		_GODOT_joint_get_solver_priority.bind("PhysicsServer", "joint_get_solver_priority");
		return ptrcall!(int)(_GODOT_joint_get_solver_priority, _godot_object, joint);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_generic_6dof;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_generic_6dof") = _GODOT_joint_create_generic_6dof;
	RID joint_create_generic_6dof(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		_GODOT_joint_create_generic_6dof.bind("PhysicsServer", "joint_create_generic_6dof");
		return ptrcall!(RID)(_GODOT_joint_create_generic_6dof, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	package(godot) static GodotMethod!(void, RID, int, int, float) _GODOT_generic_6dof_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_set_param") = _GODOT_generic_6dof_joint_set_param;
	void generic_6dof_joint_set_param(in RID joint, in int axis, in int param, in float value)
	{
		_GODOT_generic_6dof_joint_set_param.bind("PhysicsServer", "generic_6dof_joint_set_param");
		ptrcall!(void)(_GODOT_generic_6dof_joint_set_param, _godot_object, joint, axis, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int, int) _GODOT_generic_6dof_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_get_param") = _GODOT_generic_6dof_joint_get_param;
	float generic_6dof_joint_get_param(in RID joint, in int axis, in int param)
	{
		_GODOT_generic_6dof_joint_get_param.bind("PhysicsServer", "generic_6dof_joint_get_param");
		return ptrcall!(float)(_GODOT_generic_6dof_joint_get_param, _godot_object, joint, axis, param);
	}
	package(godot) static GodotMethod!(void, RID, int, int, bool) _GODOT_generic_6dof_joint_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_set_flag") = _GODOT_generic_6dof_joint_set_flag;
	void generic_6dof_joint_set_flag(in RID joint, in int axis, in int flag, in bool enable)
	{
		_GODOT_generic_6dof_joint_set_flag.bind("PhysicsServer", "generic_6dof_joint_set_flag");
		ptrcall!(void)(_GODOT_generic_6dof_joint_set_flag, _godot_object, joint, axis, flag, enable);
	}
	package(godot) static GodotMethod!(bool, RID, int, int) _GODOT_generic_6dof_joint_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_get_flag") = _GODOT_generic_6dof_joint_get_flag;
	bool generic_6dof_joint_get_flag(in RID joint, in int axis, in int flag)
	{
		_GODOT_generic_6dof_joint_get_flag.bind("PhysicsServer", "generic_6dof_joint_get_flag");
		return ptrcall!(bool)(_GODOT_generic_6dof_joint_get_flag, _godot_object, joint, axis, flag);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_free_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "free_rid") = _GODOT_free_rid;
	void free_rid(in RID rid)
	{
		_GODOT_free_rid.bind("PhysicsServer", "free_rid");
		ptrcall!(void)(_GODOT_free_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	void set_active(in bool active)
	{
		_GODOT_set_active.bind("PhysicsServer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_process_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_info") = _GODOT_get_process_info;
	int get_process_info(in int process_info)
	{
		_GODOT_get_process_info.bind("PhysicsServer", "get_process_info");
		return ptrcall!(int)(_GODOT_get_process_info, _godot_object, process_info);
	}
}
@property pragma(inline, true)
PhysicsServerSingleton PhysicsServer()
{
	return PhysicsServerSingleton._GODOT_singleton();
}
