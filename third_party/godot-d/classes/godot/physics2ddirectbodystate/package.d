module godot.physics2ddirectbodystate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physics2ddirectspacestate;
@GodotBaseClass struct Physics2DDirectBodyState
{
	static immutable string _GODOT_internal_name = "Physics2DDirectBodyState";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DDirectBodyState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectBodyState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectBodyState)(constructor());
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_total_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_gravity") = _GODOT_get_total_gravity;
	Vector2 get_total_gravity() const
	{
		_GODOT_get_total_gravity.bind("Physics2DDirectBodyState", "get_total_gravity");
		return ptrcall!(Vector2)(_GODOT_get_total_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_total_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_linear_damp") = _GODOT_get_total_linear_damp;
	float get_total_linear_damp() const
	{
		_GODOT_get_total_linear_damp.bind("Physics2DDirectBodyState", "get_total_linear_damp");
		return ptrcall!(float)(_GODOT_get_total_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_total_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_angular_damp") = _GODOT_get_total_angular_damp;
	float get_total_angular_damp() const
	{
		_GODOT_get_total_angular_damp.bind("Physics2DDirectBodyState", "get_total_angular_damp");
		return ptrcall!(float)(_GODOT_get_total_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_inverse_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inverse_mass") = _GODOT_get_inverse_mass;
	float get_inverse_mass() const
	{
		_GODOT_get_inverse_mass.bind("Physics2DDirectBodyState", "get_inverse_mass");
		return ptrcall!(float)(_GODOT_get_inverse_mass, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_inverse_inertia;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inverse_inertia") = _GODOT_get_inverse_inertia;
	float get_inverse_inertia() const
	{
		_GODOT_get_inverse_inertia.bind("Physics2DDirectBodyState", "get_inverse_inertia");
		return ptrcall!(float)(_GODOT_get_inverse_inertia, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_velocity") = _GODOT_set_linear_velocity;
	void set_linear_velocity(in Vector2 velocity)
	{
		_GODOT_set_linear_velocity.bind("Physics2DDirectBodyState", "set_linear_velocity");
		ptrcall!(void)(_GODOT_set_linear_velocity, _godot_object, velocity);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	Vector2 get_linear_velocity() const
	{
		_GODOT_get_linear_velocity.bind("Physics2DDirectBodyState", "get_linear_velocity");
		return ptrcall!(Vector2)(_GODOT_get_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_velocity") = _GODOT_set_angular_velocity;
	void set_angular_velocity(in float velocity)
	{
		_GODOT_set_angular_velocity.bind("Physics2DDirectBodyState", "set_angular_velocity");
		ptrcall!(void)(_GODOT_set_angular_velocity, _godot_object, velocity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_velocity") = _GODOT_get_angular_velocity;
	float get_angular_velocity() const
	{
		_GODOT_get_angular_velocity.bind("Physics2DDirectBodyState", "get_angular_velocity");
		return ptrcall!(float)(_GODOT_get_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	void set_transform(in Transform2D transform)
	{
		_GODOT_set_transform.bind("Physics2DDirectBodyState", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform2D get_transform() const
	{
		_GODOT_get_transform.bind("Physics2DDirectBodyState", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sleep_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sleep_state") = _GODOT_set_sleep_state;
	void set_sleep_state(in bool enabled)
	{
		_GODOT_set_sleep_state.bind("Physics2DDirectBodyState", "set_sleep_state");
		ptrcall!(void)(_GODOT_set_sleep_state, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sleeping") = _GODOT_is_sleeping;
	bool is_sleeping() const
	{
		_GODOT_is_sleeping.bind("Physics2DDirectBodyState", "is_sleeping");
		return ptrcall!(bool)(_GODOT_is_sleeping, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_contact_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_count") = _GODOT_get_contact_count;
	int get_contact_count() const
	{
		_GODOT_get_contact_count.bind("Physics2DDirectBodyState", "get_contact_count");
		return ptrcall!(int)(_GODOT_get_contact_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_contact_local_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_position") = _GODOT_get_contact_local_position;
	Vector2 get_contact_local_position(in int contact_idx) const
	{
		_GODOT_get_contact_local_position.bind("Physics2DDirectBodyState", "get_contact_local_position");
		return ptrcall!(Vector2)(_GODOT_get_contact_local_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_contact_local_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_normal") = _GODOT_get_contact_local_normal;
	Vector2 get_contact_local_normal(in int contact_idx) const
	{
		_GODOT_get_contact_local_normal.bind("Physics2DDirectBodyState", "get_contact_local_normal");
		return ptrcall!(Vector2)(_GODOT_get_contact_local_normal, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_contact_local_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_shape") = _GODOT_get_contact_local_shape;
	int get_contact_local_shape(in int contact_idx) const
	{
		_GODOT_get_contact_local_shape.bind("Physics2DDirectBodyState", "get_contact_local_shape");
		return ptrcall!(int)(_GODOT_get_contact_local_shape, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(RID, int) _GODOT_get_contact_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider") = _GODOT_get_contact_collider;
	RID get_contact_collider(in int contact_idx) const
	{
		_GODOT_get_contact_collider.bind("Physics2DDirectBodyState", "get_contact_collider");
		return ptrcall!(RID)(_GODOT_get_contact_collider, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_contact_collider_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_position") = _GODOT_get_contact_collider_position;
	Vector2 get_contact_collider_position(in int contact_idx) const
	{
		_GODOT_get_contact_collider_position.bind("Physics2DDirectBodyState", "get_contact_collider_position");
		return ptrcall!(Vector2)(_GODOT_get_contact_collider_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_contact_collider_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_id") = _GODOT_get_contact_collider_id;
	int get_contact_collider_id(in int contact_idx) const
	{
		_GODOT_get_contact_collider_id.bind("Physics2DDirectBodyState", "get_contact_collider_id");
		return ptrcall!(int)(_GODOT_get_contact_collider_id, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(GodotObject, int) _GODOT_get_contact_collider_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_object") = _GODOT_get_contact_collider_object;
	GodotObject get_contact_collider_object(in int contact_idx) const
	{
		_GODOT_get_contact_collider_object.bind("Physics2DDirectBodyState", "get_contact_collider_object");
		return ptrcall!(GodotObject)(_GODOT_get_contact_collider_object, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_contact_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_shape") = _GODOT_get_contact_collider_shape;
	int get_contact_collider_shape(in int contact_idx) const
	{
		_GODOT_get_contact_collider_shape.bind("Physics2DDirectBodyState", "get_contact_collider_shape");
		return ptrcall!(int)(_GODOT_get_contact_collider_shape, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_contact_collider_shape_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_shape_metadata") = _GODOT_get_contact_collider_shape_metadata;
	Variant get_contact_collider_shape_metadata(in int contact_idx) const
	{
		_GODOT_get_contact_collider_shape_metadata.bind("Physics2DDirectBodyState", "get_contact_collider_shape_metadata");
		return ptrcall!(Variant)(_GODOT_get_contact_collider_shape_metadata, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_contact_collider_velocity_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_velocity_at_position") = _GODOT_get_contact_collider_velocity_at_position;
	Vector2 get_contact_collider_velocity_at_position(in int contact_idx) const
	{
		_GODOT_get_contact_collider_velocity_at_position.bind("Physics2DDirectBodyState", "get_contact_collider_velocity_at_position");
		return ptrcall!(Vector2)(_GODOT_get_contact_collider_velocity_at_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	float get_step() const
	{
		_GODOT_get_step.bind("Physics2DDirectBodyState", "get_step");
		return ptrcall!(float)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_integrate_forces;
	package(godot) alias _GODOT_methodBindInfo(string name : "integrate_forces") = _GODOT_integrate_forces;
	void integrate_forces()
	{
		_GODOT_integrate_forces.bind("Physics2DDirectBodyState", "integrate_forces");
		ptrcall!(void)(_GODOT_integrate_forces, _godot_object);
	}
	package(godot) static GodotMethod!(Physics2DDirectSpaceState) _GODOT_get_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_state") = _GODOT_get_space_state;
	Physics2DDirectSpaceState get_space_state()
	{
		_GODOT_get_space_state.bind("Physics2DDirectBodyState", "get_space_state");
		return ptrcall!(Physics2DDirectSpaceState)(_GODOT_get_space_state, _godot_object);
	}
}
