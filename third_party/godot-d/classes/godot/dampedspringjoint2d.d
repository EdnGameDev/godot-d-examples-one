module godot.dampedspringjoint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint2d;
@GodotBaseClass struct DampedSpringJoint2D
{
	static immutable string _GODOT_internal_name = "DampedSpringJoint2D";
public:
	union { godot_object _godot_object; Joint2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in DampedSpringJoint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DampedSpringJoint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DampedSpringJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("DampedSpringJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(DampedSpringJoint2D)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	void set_length(in float length)
	{
		_GODOT_set_length.bind("DampedSpringJoint2D", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	float get_length() const
	{
		_GODOT_get_length.bind("DampedSpringJoint2D", "get_length");
		return ptrcall!(float)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rest_length") = _GODOT_set_rest_length;
	void set_rest_length(in float rest_length)
	{
		_GODOT_set_rest_length.bind("DampedSpringJoint2D", "set_rest_length");
		ptrcall!(void)(_GODOT_set_rest_length, _godot_object, rest_length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rest_length") = _GODOT_get_rest_length;
	float get_rest_length() const
	{
		_GODOT_get_rest_length.bind("DampedSpringJoint2D", "get_rest_length");
		return ptrcall!(float)(_GODOT_get_rest_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stiffness") = _GODOT_set_stiffness;
	void set_stiffness(in float stiffness)
	{
		_GODOT_set_stiffness.bind("DampedSpringJoint2D", "set_stiffness");
		ptrcall!(void)(_GODOT_set_stiffness, _godot_object, stiffness);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stiffness") = _GODOT_get_stiffness;
	float get_stiffness() const
	{
		_GODOT_get_stiffness.bind("DampedSpringJoint2D", "get_stiffness");
		return ptrcall!(float)(_GODOT_get_stiffness, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping") = _GODOT_set_damping;
	void set_damping(in float damping)
	{
		_GODOT_set_damping.bind("DampedSpringJoint2D", "set_damping");
		ptrcall!(void)(_GODOT_set_damping, _godot_object, damping);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping") = _GODOT_get_damping;
	float get_damping() const
	{
		_GODOT_get_damping.bind("DampedSpringJoint2D", "get_damping");
		return ptrcall!(float)(_GODOT_get_damping, _godot_object);
	}
}
