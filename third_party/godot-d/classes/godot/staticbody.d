module godot.staticbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.physicsbody;
@GodotBaseClass struct StaticBody
{
	static immutable string _GODOT_internal_name = "StaticBody";
public:
	union { godot_object _godot_object; PhysicsBody base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StaticBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StaticBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StaticBody");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_linear_velocity") = _GODOT_set_constant_linear_velocity;
	void set_constant_linear_velocity(in Vector3 vel)
	{
		_GODOT_set_constant_linear_velocity.bind("StaticBody", "set_constant_linear_velocity");
		ptrcall!(void)(_GODOT_set_constant_linear_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_angular_velocity") = _GODOT_set_constant_angular_velocity;
	void set_constant_angular_velocity(in Vector3 vel)
	{
		_GODOT_set_constant_angular_velocity.bind("StaticBody", "set_constant_angular_velocity");
		ptrcall!(void)(_GODOT_set_constant_angular_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_linear_velocity") = _GODOT_get_constant_linear_velocity;
	Vector3 get_constant_linear_velocity() const
	{
		_GODOT_get_constant_linear_velocity.bind("StaticBody", "get_constant_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_constant_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_angular_velocity") = _GODOT_get_constant_angular_velocity;
	Vector3 get_constant_angular_velocity() const
	{
		_GODOT_get_constant_angular_velocity.bind("StaticBody", "get_constant_angular_velocity");
		return ptrcall!(Vector3)(_GODOT_get_constant_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	void set_friction(in float friction)
	{
		_GODOT_set_friction.bind("StaticBody", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	float get_friction() const
	{
		_GODOT_get_friction.bind("StaticBody", "get_friction");
		return ptrcall!(float)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	void set_bounce(in float bounce)
	{
		_GODOT_set_bounce.bind("StaticBody", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	float get_bounce() const
	{
		_GODOT_get_bounce.bind("StaticBody", "get_bounce");
		return ptrcall!(float)(_GODOT_get_bounce, _godot_object);
	}
}
