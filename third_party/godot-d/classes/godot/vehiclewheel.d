module godot.vehiclewheel;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct VehicleWheel
{
	static immutable string _GODOT_internal_name = "VehicleWheel";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VehicleWheel other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VehicleWheel opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VehicleWheel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VehicleWheel");
		if(constructor is null) return typeof(this).init;
		return cast(VehicleWheel)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	void set_radius(in float length)
	{
		_GODOT_set_radius.bind("VehicleWheel", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	float get_radius() const
	{
		_GODOT_get_radius.bind("VehicleWheel", "get_radius");
		return ptrcall!(float)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_suspension_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_rest_length") = _GODOT_set_suspension_rest_length;
	void set_suspension_rest_length(in float length)
	{
		_GODOT_set_suspension_rest_length.bind("VehicleWheel", "set_suspension_rest_length");
		ptrcall!(void)(_GODOT_set_suspension_rest_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_suspension_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_rest_length") = _GODOT_get_suspension_rest_length;
	float get_suspension_rest_length() const
	{
		_GODOT_get_suspension_rest_length.bind("VehicleWheel", "get_suspension_rest_length");
		return ptrcall!(float)(_GODOT_get_suspension_rest_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_suspension_travel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_travel") = _GODOT_set_suspension_travel;
	void set_suspension_travel(in float length)
	{
		_GODOT_set_suspension_travel.bind("VehicleWheel", "set_suspension_travel");
		ptrcall!(void)(_GODOT_set_suspension_travel, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_suspension_travel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_travel") = _GODOT_get_suspension_travel;
	float get_suspension_travel() const
	{
		_GODOT_get_suspension_travel.bind("VehicleWheel", "get_suspension_travel");
		return ptrcall!(float)(_GODOT_get_suspension_travel, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_suspension_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_stiffness") = _GODOT_set_suspension_stiffness;
	void set_suspension_stiffness(in float length)
	{
		_GODOT_set_suspension_stiffness.bind("VehicleWheel", "set_suspension_stiffness");
		ptrcall!(void)(_GODOT_set_suspension_stiffness, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_suspension_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_stiffness") = _GODOT_get_suspension_stiffness;
	float get_suspension_stiffness() const
	{
		_GODOT_get_suspension_stiffness.bind("VehicleWheel", "get_suspension_stiffness");
		return ptrcall!(float)(_GODOT_get_suspension_stiffness, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_suspension_max_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_max_force") = _GODOT_set_suspension_max_force;
	void set_suspension_max_force(in float length)
	{
		_GODOT_set_suspension_max_force.bind("VehicleWheel", "set_suspension_max_force");
		ptrcall!(void)(_GODOT_set_suspension_max_force, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_suspension_max_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_max_force") = _GODOT_get_suspension_max_force;
	float get_suspension_max_force() const
	{
		_GODOT_get_suspension_max_force.bind("VehicleWheel", "get_suspension_max_force");
		return ptrcall!(float)(_GODOT_get_suspension_max_force, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_damping_compression;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping_compression") = _GODOT_set_damping_compression;
	void set_damping_compression(in float length)
	{
		_GODOT_set_damping_compression.bind("VehicleWheel", "set_damping_compression");
		ptrcall!(void)(_GODOT_set_damping_compression, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_damping_compression;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping_compression") = _GODOT_get_damping_compression;
	float get_damping_compression() const
	{
		_GODOT_get_damping_compression.bind("VehicleWheel", "get_damping_compression");
		return ptrcall!(float)(_GODOT_get_damping_compression, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_damping_relaxation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping_relaxation") = _GODOT_set_damping_relaxation;
	void set_damping_relaxation(in float length)
	{
		_GODOT_set_damping_relaxation.bind("VehicleWheel", "set_damping_relaxation");
		ptrcall!(void)(_GODOT_set_damping_relaxation, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_damping_relaxation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping_relaxation") = _GODOT_get_damping_relaxation;
	float get_damping_relaxation() const
	{
		_GODOT_get_damping_relaxation.bind("VehicleWheel", "get_damping_relaxation");
		return ptrcall!(float)(_GODOT_get_damping_relaxation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_as_traction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_as_traction") = _GODOT_set_use_as_traction;
	void set_use_as_traction(in bool enable)
	{
		_GODOT_set_use_as_traction.bind("VehicleWheel", "set_use_as_traction");
		ptrcall!(void)(_GODOT_set_use_as_traction, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_used_as_traction;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_used_as_traction") = _GODOT_is_used_as_traction;
	bool is_used_as_traction() const
	{
		_GODOT_is_used_as_traction.bind("VehicleWheel", "is_used_as_traction");
		return ptrcall!(bool)(_GODOT_is_used_as_traction, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_as_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_as_steering") = _GODOT_set_use_as_steering;
	void set_use_as_steering(in bool enable)
	{
		_GODOT_set_use_as_steering.bind("VehicleWheel", "set_use_as_steering");
		ptrcall!(void)(_GODOT_set_use_as_steering, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_used_as_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_used_as_steering") = _GODOT_is_used_as_steering;
	bool is_used_as_steering() const
	{
		_GODOT_is_used_as_steering.bind("VehicleWheel", "is_used_as_steering");
		return ptrcall!(bool)(_GODOT_is_used_as_steering, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_friction_slip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction_slip") = _GODOT_set_friction_slip;
	void set_friction_slip(in float length)
	{
		_GODOT_set_friction_slip.bind("VehicleWheel", "set_friction_slip");
		ptrcall!(void)(_GODOT_set_friction_slip, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_friction_slip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction_slip") = _GODOT_get_friction_slip;
	float get_friction_slip() const
	{
		_GODOT_get_friction_slip.bind("VehicleWheel", "get_friction_slip");
		return ptrcall!(float)(_GODOT_get_friction_slip, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_in_contact;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_contact") = _GODOT_is_in_contact;
	bool is_in_contact() const
	{
		_GODOT_is_in_contact.bind("VehicleWheel", "is_in_contact");
		return ptrcall!(bool)(_GODOT_is_in_contact, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_roll_influence;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_roll_influence") = _GODOT_set_roll_influence;
	void set_roll_influence(in float roll_influence)
	{
		_GODOT_set_roll_influence.bind("VehicleWheel", "set_roll_influence");
		ptrcall!(void)(_GODOT_set_roll_influence, _godot_object, roll_influence);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_roll_influence;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_roll_influence") = _GODOT_get_roll_influence;
	float get_roll_influence() const
	{
		_GODOT_get_roll_influence.bind("VehicleWheel", "get_roll_influence");
		return ptrcall!(float)(_GODOT_get_roll_influence, _godot_object);
	}
}
