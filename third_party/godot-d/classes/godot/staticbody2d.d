module godot.staticbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
@GodotBaseClass struct StaticBody2D
{
	static immutable string _GODOT_internal_name = "StaticBody2D";
public:
	union { godot_object _godot_object; PhysicsBody2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StaticBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StaticBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StaticBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_linear_velocity") = _GODOT_set_constant_linear_velocity;
	void set_constant_linear_velocity(in Vector2 vel)
	{
		_GODOT_set_constant_linear_velocity.bind("StaticBody2D", "set_constant_linear_velocity");
		ptrcall!(void)(_GODOT_set_constant_linear_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_angular_velocity") = _GODOT_set_constant_angular_velocity;
	void set_constant_angular_velocity(in float vel)
	{
		_GODOT_set_constant_angular_velocity.bind("StaticBody2D", "set_constant_angular_velocity");
		ptrcall!(void)(_GODOT_set_constant_angular_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_linear_velocity") = _GODOT_get_constant_linear_velocity;
	Vector2 get_constant_linear_velocity() const
	{
		_GODOT_get_constant_linear_velocity.bind("StaticBody2D", "get_constant_linear_velocity");
		return ptrcall!(Vector2)(_GODOT_get_constant_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_angular_velocity") = _GODOT_get_constant_angular_velocity;
	float get_constant_angular_velocity() const
	{
		_GODOT_get_constant_angular_velocity.bind("StaticBody2D", "get_constant_angular_velocity");
		return ptrcall!(float)(_GODOT_get_constant_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	void set_friction(in float friction)
	{
		_GODOT_set_friction.bind("StaticBody2D", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	float get_friction() const
	{
		_GODOT_get_friction.bind("StaticBody2D", "get_friction");
		return ptrcall!(float)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	void set_bounce(in float bounce)
	{
		_GODOT_set_bounce.bind("StaticBody2D", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	float get_bounce() const
	{
		_GODOT_get_bounce.bind("StaticBody2D", "get_bounce");
		return ptrcall!(float)(_GODOT_get_bounce, _godot_object);
	}
}
