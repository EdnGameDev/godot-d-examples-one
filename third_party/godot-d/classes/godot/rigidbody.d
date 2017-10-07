module godot.rigidbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.physicsbody;
import godot.physicsdirectbodystate;
@GodotBaseClass struct RigidBody
{
	static immutable string _GODOT_internal_name = "RigidBody";
public:
	union { godot_object _godot_object; PhysicsBody base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RigidBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RigidBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RigidBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RigidBody");
		if(constructor is null) return typeof(this).init;
		return cast(RigidBody)(constructor());
	}
	enum Mode : int
	{
		MODE_CHARACTER = 2,
		MODE_KINEMATIC = 3,
		MODE_STATIC = 1,
		MODE_RIGID = 0,
	}
	enum AxisLock : int
	{
		AXIS_LOCK_X = 1,
		AXIS_LOCK_Y = 2,
		AXIS_LOCK_DISABLED = 0,
		AXIS_LOCK_Z = 3,
	}
	enum int AXIS_LOCK_DISABLED = 0;
	enum int MODE_STATIC = 1;
	enum int MODE_RIGID = 0;
	enum int AXIS_LOCK_X = 1;
	enum int AXIS_LOCK_Y = 2;
	enum int MODE_KINEMATIC = 3;
	enum int AXIS_LOCK_Z = 3;
	enum int MODE_CHARACTER = 2;
	package(godot) static GodotMethod!(void, PhysicsDirectBodyState) _GODOT__integrate_forces;
	package(godot) alias _GODOT_methodBindInfo(string name : "_integrate_forces") = _GODOT__integrate_forces;
	void _integrate_forces(in PhysicsDirectBodyState state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_integrate_forces");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	void set_mode(in int mode)
	{
		_GODOT_set_mode.bind("RigidBody", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(RigidBody.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	RigidBody.Mode get_mode() const
	{
		_GODOT_get_mode.bind("RigidBody", "get_mode");
		return ptrcall!(RigidBody.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mass") = _GODOT_set_mass;
	void set_mass(in float mass)
	{
		_GODOT_set_mass.bind("RigidBody", "set_mass");
		ptrcall!(void)(_GODOT_set_mass, _godot_object, mass);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mass") = _GODOT_get_mass;
	float get_mass() const
	{
		_GODOT_get_mass.bind("RigidBody", "get_mass");
		return ptrcall!(float)(_GODOT_get_mass, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_weight") = _GODOT_set_weight;
	void set_weight(in float weight)
	{
		_GODOT_set_weight.bind("RigidBody", "set_weight");
		ptrcall!(void)(_GODOT_set_weight, _godot_object, weight);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_weight") = _GODOT_get_weight;
	float get_weight() const
	{
		_GODOT_get_weight.bind("RigidBody", "get_weight");
		return ptrcall!(float)(_GODOT_get_weight, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	void set_friction(in float friction)
	{
		_GODOT_set_friction.bind("RigidBody", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	float get_friction() const
	{
		_GODOT_get_friction.bind("RigidBody", "get_friction");
		return ptrcall!(float)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	void set_bounce(in float bounce)
	{
		_GODOT_set_bounce.bind("RigidBody", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	float get_bounce() const
	{
		_GODOT_get_bounce.bind("RigidBody", "get_bounce");
		return ptrcall!(float)(_GODOT_get_bounce, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_velocity") = _GODOT_set_linear_velocity;
	void set_linear_velocity(in Vector3 linear_velocity)
	{
		_GODOT_set_linear_velocity.bind("RigidBody", "set_linear_velocity");
		ptrcall!(void)(_GODOT_set_linear_velocity, _godot_object, linear_velocity);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	Vector3 get_linear_velocity() const
	{
		_GODOT_get_linear_velocity.bind("RigidBody", "get_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_velocity") = _GODOT_set_angular_velocity;
	void set_angular_velocity(in Vector3 angular_velocity)
	{
		_GODOT_set_angular_velocity.bind("RigidBody", "set_angular_velocity");
		ptrcall!(void)(_GODOT_set_angular_velocity, _godot_object, angular_velocity);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_velocity") = _GODOT_get_angular_velocity;
	Vector3 get_angular_velocity() const
	{
		_GODOT_get_angular_velocity.bind("RigidBody", "get_angular_velocity");
		return ptrcall!(Vector3)(_GODOT_get_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_gravity_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_scale") = _GODOT_set_gravity_scale;
	void set_gravity_scale(in float gravity_scale)
	{
		_GODOT_set_gravity_scale.bind("RigidBody", "set_gravity_scale");
		ptrcall!(void)(_GODOT_set_gravity_scale, _godot_object, gravity_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_gravity_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_scale") = _GODOT_get_gravity_scale;
	float get_gravity_scale() const
	{
		_GODOT_get_gravity_scale.bind("RigidBody", "get_gravity_scale");
		return ptrcall!(float)(_GODOT_get_gravity_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_damp") = _GODOT_set_linear_damp;
	void set_linear_damp(in float linear_damp)
	{
		_GODOT_set_linear_damp.bind("RigidBody", "set_linear_damp");
		ptrcall!(void)(_GODOT_set_linear_damp, _godot_object, linear_damp);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_damp") = _GODOT_get_linear_damp;
	float get_linear_damp() const
	{
		_GODOT_get_linear_damp.bind("RigidBody", "get_linear_damp");
		return ptrcall!(float)(_GODOT_get_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_damp") = _GODOT_set_angular_damp;
	void set_angular_damp(in float angular_damp)
	{
		_GODOT_set_angular_damp.bind("RigidBody", "set_angular_damp");
		ptrcall!(void)(_GODOT_set_angular_damp, _godot_object, angular_damp);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_damp") = _GODOT_get_angular_damp;
	float get_angular_damp() const
	{
		_GODOT_get_angular_damp.bind("RigidBody", "get_angular_damp");
		return ptrcall!(float)(_GODOT_get_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_contacts_reported") = _GODOT_set_max_contacts_reported;
	void set_max_contacts_reported(in int amount)
	{
		_GODOT_set_max_contacts_reported.bind("RigidBody", "set_max_contacts_reported");
		ptrcall!(void)(_GODOT_set_max_contacts_reported, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_contacts_reported") = _GODOT_get_max_contacts_reported;
	int get_max_contacts_reported() const
	{
		_GODOT_get_max_contacts_reported.bind("RigidBody", "get_max_contacts_reported");
		return ptrcall!(int)(_GODOT_get_max_contacts_reported, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_custom_integrator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_custom_integrator") = _GODOT_set_use_custom_integrator;
	void set_use_custom_integrator(in bool enable)
	{
		_GODOT_set_use_custom_integrator.bind("RigidBody", "set_use_custom_integrator");
		ptrcall!(void)(_GODOT_set_use_custom_integrator, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_custom_integrator;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_custom_integrator") = _GODOT_is_using_custom_integrator;
	bool is_using_custom_integrator()
	{
		_GODOT_is_using_custom_integrator.bind("RigidBody", "is_using_custom_integrator");
		return ptrcall!(bool)(_GODOT_is_using_custom_integrator, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_contact_monitor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_contact_monitor") = _GODOT_set_contact_monitor;
	void set_contact_monitor(in bool enabled)
	{
		_GODOT_set_contact_monitor.bind("RigidBody", "set_contact_monitor");
		ptrcall!(void)(_GODOT_set_contact_monitor, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_contact_monitor_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_contact_monitor_enabled") = _GODOT_is_contact_monitor_enabled;
	bool is_contact_monitor_enabled() const
	{
		_GODOT_is_contact_monitor_enabled.bind("RigidBody", "is_contact_monitor_enabled");
		return ptrcall!(bool)(_GODOT_is_contact_monitor_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_continuous_collision_detection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_continuous_collision_detection") = _GODOT_set_use_continuous_collision_detection;
	void set_use_continuous_collision_detection(in bool enable)
	{
		_GODOT_set_use_continuous_collision_detection.bind("RigidBody", "set_use_continuous_collision_detection");
		ptrcall!(void)(_GODOT_set_use_continuous_collision_detection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_continuous_collision_detection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_continuous_collision_detection") = _GODOT_is_using_continuous_collision_detection;
	bool is_using_continuous_collision_detection() const
	{
		_GODOT_is_using_continuous_collision_detection.bind("RigidBody", "is_using_continuous_collision_detection");
		return ptrcall!(bool)(_GODOT_is_using_continuous_collision_detection, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_velocity") = _GODOT_set_axis_velocity;
	void set_axis_velocity(in Vector3 axis_velocity)
	{
		_GODOT_set_axis_velocity.bind("RigidBody", "set_axis_velocity");
		ptrcall!(void)(_GODOT_set_axis_velocity, _godot_object, axis_velocity);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3) _GODOT_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_impulse") = _GODOT_apply_impulse;
	void apply_impulse(in Vector3 position, in Vector3 impulse)
	{
		_GODOT_apply_impulse.bind("RigidBody", "apply_impulse");
		ptrcall!(void)(_GODOT_apply_impulse, _godot_object, position, impulse);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sleeping") = _GODOT_set_sleeping;
	void set_sleeping(in bool sleeping)
	{
		_GODOT_set_sleeping.bind("RigidBody", "set_sleeping");
		ptrcall!(void)(_GODOT_set_sleeping, _godot_object, sleeping);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sleeping") = _GODOT_is_sleeping;
	bool is_sleeping() const
	{
		_GODOT_is_sleeping.bind("RigidBody", "is_sleeping");
		return ptrcall!(bool)(_GODOT_is_sleeping, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_can_sleep;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_can_sleep") = _GODOT_set_can_sleep;
	void set_can_sleep(in bool able_to_sleep)
	{
		_GODOT_set_can_sleep.bind("RigidBody", "set_can_sleep");
		ptrcall!(void)(_GODOT_set_can_sleep, _godot_object, able_to_sleep);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_able_to_sleep;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_able_to_sleep") = _GODOT_is_able_to_sleep;
	bool is_able_to_sleep() const
	{
		_GODOT_is_able_to_sleep.bind("RigidBody", "is_able_to_sleep");
		return ptrcall!(bool)(_GODOT_is_able_to_sleep, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__direct_state_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_direct_state_changed") = _GODOT__direct_state_changed;
	void _direct_state_changed(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__body_enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_enter_tree") = _GODOT__body_enter_tree;
	void _body_enter_tree(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__body_exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_exit_tree") = _GODOT__body_exit_tree;
	void _body_exit_tree(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_lock") = _GODOT_set_axis_lock;
	void set_axis_lock(in int axis_lock)
	{
		_GODOT_set_axis_lock.bind("RigidBody", "set_axis_lock");
		ptrcall!(void)(_GODOT_set_axis_lock, _godot_object, axis_lock);
	}
	package(godot) static GodotMethod!(RigidBody.AxisLock) _GODOT_get_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis_lock") = _GODOT_get_axis_lock;
	RigidBody.AxisLock get_axis_lock() const
	{
		_GODOT_get_axis_lock.bind("RigidBody", "get_axis_lock");
		return ptrcall!(RigidBody.AxisLock)(_GODOT_get_axis_lock, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_colliding_bodies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_colliding_bodies") = _GODOT_get_colliding_bodies;
	Array get_colliding_bodies() const
	{
		_GODOT_get_colliding_bodies.bind("RigidBody", "get_colliding_bodies");
		return ptrcall!(Array)(_GODOT_get_colliding_bodies, _godot_object);
	}
}
