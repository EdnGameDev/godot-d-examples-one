module godot.physics2dserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physics2ddirectspacestate;
import godot.physics2dtestmotionresult;
@GodotBaseClass struct Physics2DServerSingleton
{
	static immutable string _GODOT_internal_name = "Physics2DServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Physics2DServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DServer");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DServerSingleton)(constructor());
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
	enum DampedStringParam : int
	{
		DAMPED_STRING_STIFFNESS = 1,
		DAMPED_STRING_REST_LENGTH = 0,
		DAMPED_STRING_DAMPING = 2,
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
		SHAPE_LINE = 0,
		SHAPE_CIRCLE = 3,
		SHAPE_RECTANGLE = 4,
		SHAPE_SEGMENT = 2,
		SHAPE_CUSTOM = 8,
		SHAPE_CONCAVE_POLYGON = 7,
		SHAPE_CAPSULE = 5,
		SHAPE_CONVEX_POLYGON = 6,
	}
	enum SpaceParameter : int
	{
		SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2,
		SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 3,
		SPACE_PARAM_BODY_TIME_TO_SLEEP = 5,
		SPACE_PARAM_CONTACT_MAX_SEPARATION = 1,
		SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 6,
		SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0,
		SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 4,
	}
	enum JointType : int
	{
		JOINT_GROOVE = 1,
		JOINT_PIN = 0,
		JOINT_DAMPED_SPRING = 2,
	}
	enum CCDMode : int
	{
		CCD_MODE_CAST_RAY = 1,
		CCD_MODE_CAST_SHAPE = 2,
		CCD_MODE_DISABLED = 0,
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
		BODY_PARAM_GRAVITY_SCALE = 4,
		BODY_PARAM_MASS = 2,
		BODY_PARAM_INERTIA = 3,
		BODY_PARAM_LINEAR_DAMP = 5,
		BODY_PARAM_MAX = 7,
		BODY_PARAM_FRICTION = 1,
		BODY_PARAM_ANGULAR_DAMP = 6,
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
	enum int AREA_SPACE_OVERRIDE_REPLACE = 3;
	enum int BODY_PARAM_BOUNCE = 0;
	enum int BODY_STATE_SLEEPING = 3;
	enum int AREA_PARAM_GRAVITY_IS_POINT = 2;
	enum int CCD_MODE_CAST_SHAPE = 2;
	enum int BODY_MODE_RIGID = 2;
	enum int DAMPED_STRING_DAMPING = 2;
	enum int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
	enum int AREA_BODY_ADDED = 0;
	enum int BODY_STATE_LINEAR_VELOCITY = 1;
	enum int AREA_BODY_REMOVED = 1;
	enum int JOINT_PIN = 0;
	enum int BODY_PARAM_GRAVITY_SCALE = 4;
	enum int AREA_SPACE_OVERRIDE_COMBINE = 1;
	enum int SHAPE_LINE = 0;
	enum int AREA_PARAM_LINEAR_DAMP = 5;
	enum int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
	enum int SHAPE_SEGMENT = 2;
	enum int CCD_MODE_DISABLED = 0;
	enum int AREA_PARAM_ANGULAR_DAMP = 6;
	enum int INFO_COLLISION_PAIRS = 1;
	enum int SHAPE_CAPSULE = 5;
	enum int JOINT_DAMPED_SPRING = 2;
	enum int BODY_PARAM_MAX = 7;
	enum int BODY_PARAM_ANGULAR_DAMP = 6;
	enum int SHAPE_CONVEX_POLYGON = 6;
	enum int SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 4;
	enum int BODY_MODE_KINEMATIC = 1;
	enum int AREA_PARAM_GRAVITY = 0;
	enum int AREA_SPACE_OVERRIDE_DISABLED = 0;
	enum int JOINT_GROOVE = 1;
	enum int DAMPED_STRING_STIFFNESS = 1;
	enum int SHAPE_RECTANGLE = 4;
	enum int BODY_PARAM_INERTIA = 3;
	enum int SHAPE_CUSTOM = 8;
	enum int BODY_PARAM_LINEAR_DAMP = 5;
	enum int CCD_MODE_CAST_RAY = 1;
	enum int BODY_STATE_CAN_SLEEP = 4;
	enum int BODY_STATE_TRANSFORM = 0;
	enum int BODY_PARAM_FRICTION = 1;
	enum int AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4;
	enum int INFO_ACTIVE_OBJECTS = 0;
	enum int AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2;
	enum int BODY_MODE_STATIC = 0;
	enum int BODY_MODE_CHARACTER = 3;
	enum int SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2;
	enum int SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 3;
	enum int BODY_PARAM_MASS = 2;
	enum int SPACE_PARAM_BODY_TIME_TO_SLEEP = 5;
	enum int SHAPE_CIRCLE = 3;
	enum int DAMPED_STRING_REST_LENGTH = 0;
	enum int SPACE_PARAM_CONTACT_MAX_SEPARATION = 1;
	enum int SHAPE_CONCAVE_POLYGON = 7;
	enum int AREA_PARAM_GRAVITY_VECTOR = 1;
	enum int AREA_PARAM_PRIORITY = 7;
	enum int SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 6;
	enum int SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0;
	enum int BODY_STATE_ANGULAR_VELOCITY = 2;
	enum int INFO_ISLAND_COUNT = 2;
	package(godot) static GodotMethod!(RID, int) _GODOT_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_create") = _GODOT_shape_create;
	RID shape_create(in int type)
	{
		_GODOT_shape_create.bind("Physics2DServer", "shape_create");
		return ptrcall!(RID)(_GODOT_shape_create, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, RID, Variant) _GODOT_shape_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_set_data") = _GODOT_shape_set_data;
	void shape_set_data(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		_GODOT_shape_set_data.bind("Physics2DServer", "shape_set_data");
		ptrcall!(void)(_GODOT_shape_set_data, _godot_object, shape, data);
	}
	package(godot) static GodotMethod!(Physics2DServer.ShapeType, RID) _GODOT_shape_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_type") = _GODOT_shape_get_type;
	Physics2DServer.ShapeType shape_get_type(in RID shape) const
	{
		_GODOT_shape_get_type.bind("Physics2DServer", "shape_get_type");
		return ptrcall!(Physics2DServer.ShapeType)(_GODOT_shape_get_type, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Variant, RID) _GODOT_shape_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_data") = _GODOT_shape_get_data;
	Variant shape_get_data(in RID shape) const
	{
		_GODOT_shape_get_data.bind("Physics2DServer", "shape_get_data");
		return ptrcall!(Variant)(_GODOT_shape_get_data, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_space_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_create") = _GODOT_space_create;
	RID space_create()
	{
		_GODOT_space_create.bind("Physics2DServer", "space_create");
		return ptrcall!(RID)(_GODOT_space_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_space_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_active") = _GODOT_space_set_active;
	void space_set_active(in RID space, in bool active)
	{
		_GODOT_space_set_active.bind("Physics2DServer", "space_set_active");
		ptrcall!(void)(_GODOT_space_set_active, _godot_object, space, active);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_space_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_is_active") = _GODOT_space_is_active;
	bool space_is_active(in RID space) const
	{
		_GODOT_space_is_active.bind("Physics2DServer", "space_is_active");
		return ptrcall!(bool)(_GODOT_space_is_active, _godot_object, space);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_space_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_param") = _GODOT_space_set_param;
	void space_set_param(in RID space, in int param, in float value)
	{
		_GODOT_space_set_param.bind("Physics2DServer", "space_set_param");
		ptrcall!(void)(_GODOT_space_set_param, _godot_object, space, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_space_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_param") = _GODOT_space_get_param;
	float space_get_param(in RID space, in int param) const
	{
		_GODOT_space_get_param.bind("Physics2DServer", "space_get_param");
		return ptrcall!(float)(_GODOT_space_get_param, _godot_object, space, param);
	}
	package(godot) static GodotMethod!(Physics2DDirectSpaceState, RID) _GODOT_space_get_direct_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_direct_state") = _GODOT_space_get_direct_state;
	Physics2DDirectSpaceState space_get_direct_state(in RID space)
	{
		_GODOT_space_get_direct_state.bind("Physics2DServer", "space_get_direct_state");
		return ptrcall!(Physics2DDirectSpaceState)(_GODOT_space_get_direct_state, _godot_object, space);
	}
	package(godot) static GodotMethod!(RID) _GODOT_area_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_create") = _GODOT_area_create;
	RID area_create()
	{
		_GODOT_area_create.bind("Physics2DServer", "area_create");
		return ptrcall!(RID)(_GODOT_area_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_area_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space") = _GODOT_area_set_space;
	void area_set_space(in RID area, in RID space)
	{
		_GODOT_area_set_space.bind("Physics2DServer", "area_set_space");
		ptrcall!(void)(_GODOT_area_set_space, _godot_object, area, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_area_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space") = _GODOT_area_get_space;
	RID area_get_space(in RID area) const
	{
		_GODOT_area_get_space.bind("Physics2DServer", "area_get_space");
		return ptrcall!(RID)(_GODOT_area_get_space, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_set_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space_override_mode") = _GODOT_area_set_space_override_mode;
	void area_set_space_override_mode(in RID area, in int mode)
	{
		_GODOT_area_set_space_override_mode.bind("Physics2DServer", "area_set_space_override_mode");
		ptrcall!(void)(_GODOT_area_set_space_override_mode, _godot_object, area, mode);
	}
	package(godot) static GodotMethod!(Physics2DServer.AreaSpaceOverrideMode, RID) _GODOT_area_get_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space_override_mode") = _GODOT_area_get_space_override_mode;
	Physics2DServer.AreaSpaceOverrideMode area_get_space_override_mode(in RID area) const
	{
		_GODOT_area_get_space_override_mode.bind("Physics2DServer", "area_get_space_override_mode");
		return ptrcall!(Physics2DServer.AreaSpaceOverrideMode)(_GODOT_area_get_space_override_mode, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform2D) _GODOT_area_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_add_shape") = _GODOT_area_add_shape;
	void area_add_shape(in RID area, in RID shape, in Transform2D transform = Transform2D.init)
	{
		_GODOT_area_add_shape.bind("Physics2DServer", "area_add_shape");
		ptrcall!(void)(_GODOT_area_add_shape, _godot_object, area, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, int, RID) _GODOT_area_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape") = _GODOT_area_set_shape;
	void area_set_shape(in RID area, in int shape_idx, in RID shape)
	{
		_GODOT_area_set_shape.bind("Physics2DServer", "area_set_shape");
		ptrcall!(void)(_GODOT_area_set_shape, _godot_object, area, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, int, Transform2D) _GODOT_area_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape_transform") = _GODOT_area_set_shape_transform;
	void area_set_shape_transform(in RID area, in int shape_idx, in Transform2D transform)
	{
		_GODOT_area_set_shape_transform.bind("Physics2DServer", "area_set_shape_transform");
		ptrcall!(void)(_GODOT_area_set_shape_transform, _godot_object, area, shape_idx, transform);
	}
	package(godot) static GodotMethod!(void, RID, int, bool) _GODOT_area_set_shape_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape_disabled") = _GODOT_area_set_shape_disabled;
	void area_set_shape_disabled(in RID area, in int shape_idx, in bool disable)
	{
		_GODOT_area_set_shape_disabled.bind("Physics2DServer", "area_set_shape_disabled");
		ptrcall!(void)(_GODOT_area_set_shape_disabled, _godot_object, area, shape_idx, disable);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_area_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_count") = _GODOT_area_get_shape_count;
	int area_get_shape_count(in RID area) const
	{
		_GODOT_area_get_shape_count.bind("Physics2DServer", "area_get_shape_count");
		return ptrcall!(int)(_GODOT_area_get_shape_count, _godot_object, area);
	}
	package(godot) static GodotMethod!(RID, RID, int) _GODOT_area_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape") = _GODOT_area_get_shape;
	RID area_get_shape(in RID area, in int shape_idx) const
	{
		_GODOT_area_get_shape.bind("Physics2DServer", "area_get_shape");
		return ptrcall!(RID)(_GODOT_area_get_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(Transform2D, RID, int) _GODOT_area_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_transform") = _GODOT_area_get_shape_transform;
	Transform2D area_get_shape_transform(in RID area, in int shape_idx) const
	{
		_GODOT_area_get_shape_transform.bind("Physics2DServer", "area_get_shape_transform");
		return ptrcall!(Transform2D)(_GODOT_area_get_shape_transform, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_remove_shape") = _GODOT_area_remove_shape;
	void area_remove_shape(in RID area, in int shape_idx)
	{
		_GODOT_area_remove_shape.bind("Physics2DServer", "area_remove_shape");
		ptrcall!(void)(_GODOT_area_remove_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_area_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_clear_shapes") = _GODOT_area_clear_shapes;
	void area_clear_shapes(in RID area)
	{
		_GODOT_area_clear_shapes.bind("Physics2DServer", "area_clear_shapes");
		ptrcall!(void)(_GODOT_area_clear_shapes, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_layer") = _GODOT_area_set_collision_layer;
	void area_set_collision_layer(in RID area, in int layer)
	{
		_GODOT_area_set_collision_layer.bind("Physics2DServer", "area_set_collision_layer");
		ptrcall!(void)(_GODOT_area_set_collision_layer, _godot_object, area, layer);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_mask") = _GODOT_area_set_collision_mask;
	void area_set_collision_mask(in RID area, in int mask)
	{
		_GODOT_area_set_collision_mask.bind("Physics2DServer", "area_set_collision_mask");
		ptrcall!(void)(_GODOT_area_set_collision_mask, _godot_object, area, mask);
	}
	package(godot) static GodotMethod!(void, RID, int, Variant) _GODOT_area_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_param") = _GODOT_area_set_param;
	void area_set_param(VariantArg2)(in RID area, in int param, in VariantArg2 value)
	{
		_GODOT_area_set_param.bind("Physics2DServer", "area_set_param");
		ptrcall!(void)(_GODOT_area_set_param, _godot_object, area, param, value);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_area_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_transform") = _GODOT_area_set_transform;
	void area_set_transform(in RID area, in Transform2D transform)
	{
		_GODOT_area_set_transform.bind("Physics2DServer", "area_set_transform");
		ptrcall!(void)(_GODOT_area_set_transform, _godot_object, area, transform);
	}
	package(godot) static GodotMethod!(Variant, RID, int) _GODOT_area_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_param") = _GODOT_area_get_param;
	Variant area_get_param(in RID area, in int param) const
	{
		_GODOT_area_get_param.bind("Physics2DServer", "area_get_param");
		return ptrcall!(Variant)(_GODOT_area_get_param, _godot_object, area, param);
	}
	package(godot) static GodotMethod!(Transform2D, RID) _GODOT_area_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_transform") = _GODOT_area_get_transform;
	Transform2D area_get_transform(in RID area) const
	{
		_GODOT_area_get_transform.bind("Physics2DServer", "area_get_transform");
		return ptrcall!(Transform2D)(_GODOT_area_get_transform, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_area_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_attach_object_instance_id") = _GODOT_area_attach_object_instance_id;
	void area_attach_object_instance_id(in RID area, in int id)
	{
		_GODOT_area_attach_object_instance_id.bind("Physics2DServer", "area_attach_object_instance_id");
		ptrcall!(void)(_GODOT_area_attach_object_instance_id, _godot_object, area, id);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_area_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_object_instance_id") = _GODOT_area_get_object_instance_id;
	int area_get_object_instance_id(in RID area) const
	{
		_GODOT_area_get_object_instance_id.bind("Physics2DServer", "area_get_object_instance_id");
		return ptrcall!(int)(_GODOT_area_get_object_instance_id, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String) _GODOT_area_set_monitor_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_monitor_callback") = _GODOT_area_set_monitor_callback;
	void area_set_monitor_callback(StringArg2)(in RID area, in GodotObject receiver, in StringArg2 method)
	{
		_GODOT_area_set_monitor_callback.bind("Physics2DServer", "area_set_monitor_callback");
		ptrcall!(void)(_GODOT_area_set_monitor_callback, _godot_object, area, receiver, method);
	}
	package(godot) static GodotMethod!(RID, int, bool) _GODOT_body_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_create") = _GODOT_body_create;
	RID body_create(in int mode = 2, in bool init_sleeping = false)
	{
		_GODOT_body_create.bind("Physics2DServer", "body_create");
		return ptrcall!(RID)(_GODOT_body_create, _godot_object, mode, init_sleeping);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_space") = _GODOT_body_set_space;
	void body_set_space(in RID _body, in RID space)
	{
		_GODOT_body_set_space.bind("Physics2DServer", "body_set_space");
		ptrcall!(void)(_GODOT_body_set_space, _godot_object, _body, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_body_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_space") = _GODOT_body_get_space;
	RID body_get_space(in RID _body) const
	{
		_GODOT_body_get_space.bind("Physics2DServer", "body_get_space");
		return ptrcall!(RID)(_GODOT_body_get_space, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_mode") = _GODOT_body_set_mode;
	void body_set_mode(in RID _body, in int mode)
	{
		_GODOT_body_set_mode.bind("Physics2DServer", "body_set_mode");
		ptrcall!(void)(_GODOT_body_set_mode, _godot_object, _body, mode);
	}
	package(godot) static GodotMethod!(Physics2DServer.BodyMode, RID) _GODOT_body_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_mode") = _GODOT_body_get_mode;
	Physics2DServer.BodyMode body_get_mode(in RID _body) const
	{
		_GODOT_body_get_mode.bind("Physics2DServer", "body_get_mode");
		return ptrcall!(Physics2DServer.BodyMode)(_GODOT_body_get_mode, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform2D) _GODOT_body_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_shape") = _GODOT_body_add_shape;
	void body_add_shape(in RID _body, in RID shape, in Transform2D transform = Transform2D.init)
	{
		_GODOT_body_add_shape.bind("Physics2DServer", "body_add_shape");
		ptrcall!(void)(_GODOT_body_add_shape, _godot_object, _body, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, int, RID) _GODOT_body_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape") = _GODOT_body_set_shape;
	void body_set_shape(in RID _body, in int shape_idx, in RID shape)
	{
		_GODOT_body_set_shape.bind("Physics2DServer", "body_set_shape");
		ptrcall!(void)(_GODOT_body_set_shape, _godot_object, _body, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, int, Transform2D) _GODOT_body_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_transform") = _GODOT_body_set_shape_transform;
	void body_set_shape_transform(in RID _body, in int shape_idx, in Transform2D transform)
	{
		_GODOT_body_set_shape_transform.bind("Physics2DServer", "body_set_shape_transform");
		ptrcall!(void)(_GODOT_body_set_shape_transform, _godot_object, _body, shape_idx, transform);
	}
	package(godot) static GodotMethod!(void, RID, int, Variant) _GODOT_body_set_shape_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_metadata") = _GODOT_body_set_shape_metadata;
	void body_set_shape_metadata(VariantArg2)(in RID _body, in int shape_idx, in VariantArg2 metadata)
	{
		_GODOT_body_set_shape_metadata.bind("Physics2DServer", "body_set_shape_metadata");
		ptrcall!(void)(_GODOT_body_set_shape_metadata, _godot_object, _body, shape_idx, metadata);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_count") = _GODOT_body_get_shape_count;
	int body_get_shape_count(in RID _body) const
	{
		_GODOT_body_get_shape_count.bind("Physics2DServer", "body_get_shape_count");
		return ptrcall!(int)(_GODOT_body_get_shape_count, _godot_object, _body);
	}
	package(godot) static GodotMethod!(RID, RID, int) _GODOT_body_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape") = _GODOT_body_get_shape;
	RID body_get_shape(in RID _body, in int shape_idx) const
	{
		_GODOT_body_get_shape.bind("Physics2DServer", "body_get_shape");
		return ptrcall!(RID)(_GODOT_body_get_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(Transform2D, RID, int) _GODOT_body_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_transform") = _GODOT_body_get_shape_transform;
	Transform2D body_get_shape_transform(in RID _body, in int shape_idx) const
	{
		_GODOT_body_get_shape_transform.bind("Physics2DServer", "body_get_shape_transform");
		return ptrcall!(Transform2D)(_GODOT_body_get_shape_transform, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(Variant, RID, int) _GODOT_body_get_shape_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_metadata") = _GODOT_body_get_shape_metadata;
	Variant body_get_shape_metadata(in RID _body, in int shape_idx) const
	{
		_GODOT_body_get_shape_metadata.bind("Physics2DServer", "body_get_shape_metadata");
		return ptrcall!(Variant)(_GODOT_body_get_shape_metadata, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_shape") = _GODOT_body_remove_shape;
	void body_remove_shape(in RID _body, in int shape_idx)
	{
		_GODOT_body_remove_shape.bind("Physics2DServer", "body_remove_shape");
		ptrcall!(void)(_GODOT_body_remove_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_body_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_clear_shapes") = _GODOT_body_clear_shapes;
	void body_clear_shapes(in RID _body)
	{
		_GODOT_body_clear_shapes.bind("Physics2DServer", "body_clear_shapes");
		ptrcall!(void)(_GODOT_body_clear_shapes, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int, bool) _GODOT_body_set_shape_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_disabled") = _GODOT_body_set_shape_disabled;
	void body_set_shape_disabled(in RID _body, in int shape_idx, in bool disable)
	{
		_GODOT_body_set_shape_disabled.bind("Physics2DServer", "body_set_shape_disabled");
		ptrcall!(void)(_GODOT_body_set_shape_disabled, _godot_object, _body, shape_idx, disable);
	}
	package(godot) static GodotMethod!(void, RID, int, bool) _GODOT_body_set_shape_as_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_as_one_way_collision") = _GODOT_body_set_shape_as_one_way_collision;
	void body_set_shape_as_one_way_collision(in RID _body, in int shape_idx, in bool enable)
	{
		_GODOT_body_set_shape_as_one_way_collision.bind("Physics2DServer", "body_set_shape_as_one_way_collision");
		ptrcall!(void)(_GODOT_body_set_shape_as_one_way_collision, _godot_object, _body, shape_idx, enable);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_attach_object_instance_id") = _GODOT_body_attach_object_instance_id;
	void body_attach_object_instance_id(in RID _body, in int id)
	{
		_GODOT_body_attach_object_instance_id.bind("Physics2DServer", "body_attach_object_instance_id");
		ptrcall!(void)(_GODOT_body_attach_object_instance_id, _godot_object, _body, id);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_object_instance_id") = _GODOT_body_get_object_instance_id;
	int body_get_object_instance_id(in RID _body) const
	{
		_GODOT_body_get_object_instance_id.bind("Physics2DServer", "body_get_object_instance_id");
		return ptrcall!(int)(_GODOT_body_get_object_instance_id, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_continuous_collision_detection_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_continuous_collision_detection_mode") = _GODOT_body_set_continuous_collision_detection_mode;
	void body_set_continuous_collision_detection_mode(in RID _body, in int mode)
	{
		_GODOT_body_set_continuous_collision_detection_mode.bind("Physics2DServer", "body_set_continuous_collision_detection_mode");
		ptrcall!(void)(_GODOT_body_set_continuous_collision_detection_mode, _godot_object, _body, mode);
	}
	package(godot) static GodotMethod!(Physics2DServer.CCDMode, RID) _GODOT_body_get_continuous_collision_detection_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_continuous_collision_detection_mode") = _GODOT_body_get_continuous_collision_detection_mode;
	Physics2DServer.CCDMode body_get_continuous_collision_detection_mode(in RID _body) const
	{
		_GODOT_body_get_continuous_collision_detection_mode.bind("Physics2DServer", "body_get_continuous_collision_detection_mode");
		return ptrcall!(Physics2DServer.CCDMode)(_GODOT_body_get_continuous_collision_detection_mode, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_layer") = _GODOT_body_set_collision_layer;
	void body_set_collision_layer(in RID _body, in int layer)
	{
		_GODOT_body_set_collision_layer.bind("Physics2DServer", "body_set_collision_layer");
		ptrcall!(void)(_GODOT_body_set_collision_layer, _godot_object, _body, layer);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_layer") = _GODOT_body_get_collision_layer;
	int body_get_collision_layer(in RID _body) const
	{
		_GODOT_body_get_collision_layer.bind("Physics2DServer", "body_get_collision_layer");
		return ptrcall!(int)(_GODOT_body_get_collision_layer, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_mask") = _GODOT_body_set_collision_mask;
	void body_set_collision_mask(in RID _body, in int mask)
	{
		_GODOT_body_set_collision_mask.bind("Physics2DServer", "body_set_collision_mask");
		ptrcall!(void)(_GODOT_body_set_collision_mask, _godot_object, _body, mask);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_mask") = _GODOT_body_get_collision_mask;
	int body_get_collision_mask(in RID _body) const
	{
		_GODOT_body_get_collision_mask.bind("Physics2DServer", "body_get_collision_mask");
		return ptrcall!(int)(_GODOT_body_get_collision_mask, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_body_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_param") = _GODOT_body_set_param;
	void body_set_param(in RID _body, in int param, in float value)
	{
		_GODOT_body_set_param.bind("Physics2DServer", "body_set_param");
		ptrcall!(void)(_GODOT_body_set_param, _godot_object, _body, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_body_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_param") = _GODOT_body_get_param;
	float body_get_param(in RID _body, in int param) const
	{
		_GODOT_body_get_param.bind("Physics2DServer", "body_get_param");
		return ptrcall!(float)(_GODOT_body_get_param, _godot_object, _body, param);
	}
	package(godot) static GodotMethod!(void, RID, int, Variant) _GODOT_body_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_state") = _GODOT_body_set_state;
	void body_set_state(VariantArg2)(in RID _body, in int state, in VariantArg2 value)
	{
		_GODOT_body_set_state.bind("Physics2DServer", "body_set_state");
		ptrcall!(void)(_GODOT_body_set_state, _godot_object, _body, state, value);
	}
	package(godot) static GodotMethod!(Variant, RID, int) _GODOT_body_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_state") = _GODOT_body_get_state;
	Variant body_get_state(in RID _body, in int state) const
	{
		_GODOT_body_get_state.bind("Physics2DServer", "body_get_state");
		return ptrcall!(Variant)(_GODOT_body_get_state, _godot_object, _body, state);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Vector2) _GODOT_body_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_apply_impulse") = _GODOT_body_apply_impulse;
	void body_apply_impulse(in RID _body, in Vector2 position, in Vector2 impulse)
	{
		_GODOT_body_apply_impulse.bind("Physics2DServer", "body_apply_impulse");
		ptrcall!(void)(_GODOT_body_apply_impulse, _godot_object, _body, position, impulse);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Vector2) _GODOT_body_add_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_force") = _GODOT_body_add_force;
	void body_add_force(in RID _body, in Vector2 offset, in Vector2 force)
	{
		_GODOT_body_add_force.bind("Physics2DServer", "body_add_force");
		ptrcall!(void)(_GODOT_body_add_force, _godot_object, _body, offset, force);
	}
	package(godot) static GodotMethod!(void, RID, Vector2) _GODOT_body_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_axis_velocity") = _GODOT_body_set_axis_velocity;
	void body_set_axis_velocity(in RID _body, in Vector2 axis_velocity)
	{
		_GODOT_body_set_axis_velocity.bind("Physics2DServer", "body_set_axis_velocity");
		ptrcall!(void)(_GODOT_body_set_axis_velocity, _godot_object, _body, axis_velocity);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_add_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_collision_exception") = _GODOT_body_add_collision_exception;
	void body_add_collision_exception(in RID _body, in RID excepted_body)
	{
		_GODOT_body_add_collision_exception.bind("Physics2DServer", "body_add_collision_exception");
		ptrcall!(void)(_GODOT_body_add_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_remove_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_collision_exception") = _GODOT_body_remove_collision_exception;
	void body_remove_collision_exception(in RID _body, in RID excepted_body)
	{
		_GODOT_body_remove_collision_exception.bind("Physics2DServer", "body_remove_collision_exception");
		ptrcall!(void)(_GODOT_body_remove_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_body_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_max_contacts_reported") = _GODOT_body_set_max_contacts_reported;
	void body_set_max_contacts_reported(in RID _body, in int amount)
	{
		_GODOT_body_set_max_contacts_reported.bind("Physics2DServer", "body_set_max_contacts_reported");
		ptrcall!(void)(_GODOT_body_set_max_contacts_reported, _godot_object, _body, amount);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_body_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_max_contacts_reported") = _GODOT_body_get_max_contacts_reported;
	int body_get_max_contacts_reported(in RID _body) const
	{
		_GODOT_body_get_max_contacts_reported.bind("Physics2DServer", "body_get_max_contacts_reported");
		return ptrcall!(int)(_GODOT_body_get_max_contacts_reported, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_omit_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_omit_force_integration") = _GODOT_body_set_omit_force_integration;
	void body_set_omit_force_integration(in RID _body, in bool enable)
	{
		_GODOT_body_set_omit_force_integration.bind("Physics2DServer", "body_set_omit_force_integration");
		ptrcall!(void)(_GODOT_body_set_omit_force_integration, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_omitting_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_omitting_force_integration") = _GODOT_body_is_omitting_force_integration;
	bool body_is_omitting_force_integration(in RID _body) const
	{
		_GODOT_body_is_omitting_force_integration.bind("Physics2DServer", "body_is_omitting_force_integration");
		return ptrcall!(bool)(_GODOT_body_is_omitting_force_integration, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String, Variant) _GODOT_body_set_force_integration_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_force_integration_callback") = _GODOT_body_set_force_integration_callback;
	void body_set_force_integration_callback(StringArg2, VariantArg3)(in RID _body, in GodotObject receiver, in StringArg2 method, in VariantArg3 userdata = Variant.nil)
	{
		_GODOT_body_set_force_integration_callback.bind("Physics2DServer", "body_set_force_integration_callback");
		ptrcall!(void)(_GODOT_body_set_force_integration_callback, _godot_object, _body, receiver, method, userdata);
	}
	package(godot) static GodotMethod!(bool, RID, Transform2D, Vector2, float, Physics2DTestMotionResult) _GODOT_body_test_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_test_motion") = _GODOT_body_test_motion;
	bool body_test_motion(in RID _body, in Transform2D from, in Vector2 motion, in float margin = 0.08, in Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		_GODOT_body_test_motion.bind("Physics2DServer", "body_test_motion");
		return ptrcall!(bool)(_GODOT_body_test_motion, _godot_object, _body, from, motion, margin, result);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_set_param") = _GODOT_joint_set_param;
	void joint_set_param(in RID joint, in int param, in float value)
	{
		_GODOT_joint_set_param.bind("Physics2DServer", "joint_set_param");
		ptrcall!(void)(_GODOT_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_param") = _GODOT_joint_get_param;
	float joint_get_param(in RID joint, in int param) const
	{
		_GODOT_joint_get_param.bind("Physics2DServer", "joint_get_param");
		return ptrcall!(float)(_GODOT_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(RID, Vector2, RID, RID) _GODOT_pin_joint_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_create") = _GODOT_pin_joint_create;
	RID pin_joint_create(in Vector2 anchor, in RID body_a, in RID body_b = RID.init)
	{
		_GODOT_pin_joint_create.bind("Physics2DServer", "pin_joint_create");
		return ptrcall!(RID)(_GODOT_pin_joint_create, _godot_object, anchor, body_a, body_b);
	}
	package(godot) static GodotMethod!(RID, Vector2, Vector2, Vector2, RID, RID) _GODOT_groove_joint_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "groove_joint_create") = _GODOT_groove_joint_create;
	RID groove_joint_create(in Vector2 groove1_a, in Vector2 groove2_a, in Vector2 anchor_b, in RID body_a = RID.init, in RID body_b = RID.init)
	{
		_GODOT_groove_joint_create.bind("Physics2DServer", "groove_joint_create");
		return ptrcall!(RID)(_GODOT_groove_joint_create, _godot_object, groove1_a, groove2_a, anchor_b, body_a, body_b);
	}
	package(godot) static GodotMethod!(RID, Vector2, Vector2, RID, RID) _GODOT_damped_spring_joint_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "damped_spring_joint_create") = _GODOT_damped_spring_joint_create;
	RID damped_spring_joint_create(in Vector2 anchor_a, in Vector2 anchor_b, in RID body_a, in RID body_b = RID.init)
	{
		_GODOT_damped_spring_joint_create.bind("Physics2DServer", "damped_spring_joint_create");
		return ptrcall!(RID)(_GODOT_damped_spring_joint_create, _godot_object, anchor_a, anchor_b, body_a, body_b);
	}
	package(godot) static GodotMethod!(void, RID, int, float) _GODOT_damped_string_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "damped_string_joint_set_param") = _GODOT_damped_string_joint_set_param;
	void damped_string_joint_set_param(in RID joint, in int param, in float value)
	{
		_GODOT_damped_string_joint_set_param.bind("Physics2DServer", "damped_string_joint_set_param");
		ptrcall!(void)(_GODOT_damped_string_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(float, RID, int) _GODOT_damped_string_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "damped_string_joint_get_param") = _GODOT_damped_string_joint_get_param;
	float damped_string_joint_get_param(in RID joint, in int param) const
	{
		_GODOT_damped_string_joint_get_param.bind("Physics2DServer", "damped_string_joint_get_param");
		return ptrcall!(float)(_GODOT_damped_string_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(Physics2DServer.JointType, RID) _GODOT_joint_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_type") = _GODOT_joint_get_type;
	Physics2DServer.JointType joint_get_type(in RID joint) const
	{
		_GODOT_joint_get_type.bind("Physics2DServer", "joint_get_type");
		return ptrcall!(Physics2DServer.JointType)(_GODOT_joint_get_type, _godot_object, joint);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_free_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "free_rid") = _GODOT_free_rid;
	void free_rid(in RID rid)
	{
		_GODOT_free_rid.bind("Physics2DServer", "free_rid");
		ptrcall!(void)(_GODOT_free_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	void set_active(in bool active)
	{
		_GODOT_set_active.bind("Physics2DServer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_process_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_info") = _GODOT_get_process_info;
	int get_process_info(in int process_info)
	{
		_GODOT_get_process_info.bind("Physics2DServer", "get_process_info");
		return ptrcall!(int)(_GODOT_get_process_info, _godot_object, process_info);
	}
}
@property pragma(inline, true)
Physics2DServerSingleton Physics2DServer()
{
	return Physics2DServerSingleton._GODOT_singleton();
}
