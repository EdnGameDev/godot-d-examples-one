module godot.vehiclebody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.physicsbody;
@GodotBaseClass struct VehicleBody
{
	static immutable string _GODOT_internal_name = "VehicleBody";
public:
	union { godot_object _godot_object; PhysicsBody base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VehicleBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VehicleBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VehicleBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VehicleBody");
		if(constructor is null) return typeof(this).init;
		return cast(VehicleBody)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mass") = _GODOT_set_mass;
	void set_mass(in float mass)
	{
		_GODOT_set_mass.bind("VehicleBody", "set_mass");
		ptrcall!(void)(_GODOT_set_mass, _godot_object, mass);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mass") = _GODOT_get_mass;
	float get_mass() const
	{
		_GODOT_get_mass.bind("VehicleBody", "get_mass");
		return ptrcall!(float)(_GODOT_get_mass, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	void set_friction(in float friction)
	{
		_GODOT_set_friction.bind("VehicleBody", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	float get_friction() const
	{
		_GODOT_get_friction.bind("VehicleBody", "get_friction");
		return ptrcall!(float)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_engine_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_engine_force") = _GODOT_set_engine_force;
	void set_engine_force(in float engine_force)
	{
		_GODOT_set_engine_force.bind("VehicleBody", "set_engine_force");
		ptrcall!(void)(_GODOT_set_engine_force, _godot_object, engine_force);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_engine_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_engine_force") = _GODOT_get_engine_force;
	float get_engine_force() const
	{
		_GODOT_get_engine_force.bind("VehicleBody", "get_engine_force");
		return ptrcall!(float)(_GODOT_get_engine_force, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_brake;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_brake") = _GODOT_set_brake;
	void set_brake(in float brake)
	{
		_GODOT_set_brake.bind("VehicleBody", "set_brake");
		ptrcall!(void)(_GODOT_set_brake, _godot_object, brake);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_brake;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_brake") = _GODOT_get_brake;
	float get_brake() const
	{
		_GODOT_get_brake.bind("VehicleBody", "get_brake");
		return ptrcall!(float)(_GODOT_get_brake, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_steering") = _GODOT_set_steering;
	void set_steering(in float steering)
	{
		_GODOT_set_steering.bind("VehicleBody", "set_steering");
		ptrcall!(void)(_GODOT_set_steering, _godot_object, steering);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_steering") = _GODOT_get_steering;
	float get_steering() const
	{
		_GODOT_get_steering.bind("VehicleBody", "get_steering");
		return ptrcall!(float)(_GODOT_get_steering, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	Vector3 get_linear_velocity() const
	{
		_GODOT_get_linear_velocity.bind("VehicleBody", "get_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_linear_velocity, _godot_object);
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
}
