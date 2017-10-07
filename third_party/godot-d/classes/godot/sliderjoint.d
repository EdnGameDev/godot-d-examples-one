module godot.sliderjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct SliderJoint
{
	static immutable string _GODOT_internal_name = "SliderJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SliderJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SliderJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SliderJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SliderJoint");
		if(constructor is null) return typeof(this).init;
		return cast(SliderJoint)(constructor());
	}
	enum Param : int
	{
		PARAM_LINEAR_LIMIT_LOWER = 1,
		PARAM_ANGULAR_LIMIT_RESTITUTION = 14,
		PARAM_ANGULAR_LIMIT_DAMPING = 15,
		PARAM_ANGULAR_LIMIT_SOFTNESS = 13,
		PARAM_LINEAR_MOTION_RESTITUTION = 6,
		PARAM_ANGULAR_ORTHOGONAL_SOFTNESS = 19,
		PARAM_ANGULAR_MOTION_RESTITUTION = 17,
		PARAM_ANGULAR_LIMIT_LOWER = 12,
		PARAM_ANGULAR_ORTHOGONAL_RESTITUTION = 20,
		PARAM_LINEAR_ORTHOGONAL_RESTITUTION = 9,
		PARAM_ANGULAR_MOTION_SOFTNESS = 16,
		PARAM_LINEAR_LIMIT_DAMPING = 4,
		PARAM_LINEAR_ORTHOGONAL_DAMPING = 10,
		PARAM_LINEAR_LIMIT_SOFTNESS = 2,
		PARAM_LINEAR_LIMIT_UPPER = 0,
		PARAM_LINEAR_ORTHOGONAL_SOFTNESS = 8,
		PARAM_LINEAR_LIMIT_RESTITUTION = 3,
		PARAM_ANGULAR_ORTHOGONAL_DAMPING = 21,
		PARAM_ANGULAR_MOTION_DAMPING = 18,
		PARAM_LINEAR_MOTION_DAMPING = 7,
		PARAM_ANGULAR_LIMIT_UPPER = 11,
		PARAM_LINEAR_MOTION_SOFTNESS = 5,
		PARAM_MAX = 22,
	}
	enum int PARAM_LINEAR_LIMIT_LOWER = 1;
	enum int PARAM_ANGULAR_LIMIT_RESTITUTION = 14;
	enum int PARAM_ANGULAR_LIMIT_DAMPING = 15;
	enum int PARAM_ANGULAR_LIMIT_SOFTNESS = 13;
	enum int PARAM_LINEAR_MOTION_RESTITUTION = 6;
	enum int PARAM_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
	enum int PARAM_ANGULAR_MOTION_RESTITUTION = 17;
	enum int PARAM_ANGULAR_LIMIT_LOWER = 12;
	enum int PARAM_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
	enum int PARAM_LINEAR_ORTHOGONAL_RESTITUTION = 9;
	enum int PARAM_ANGULAR_MOTION_SOFTNESS = 16;
	enum int PARAM_LINEAR_LIMIT_DAMPING = 4;
	enum int PARAM_LINEAR_ORTHOGONAL_DAMPING = 10;
	enum int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
	enum int PARAM_LINEAR_LIMIT_UPPER = 0;
	enum int PARAM_LINEAR_ORTHOGONAL_SOFTNESS = 8;
	enum int PARAM_LINEAR_LIMIT_RESTITUTION = 3;
	enum int PARAM_ANGULAR_ORTHOGONAL_DAMPING = 21;
	enum int PARAM_ANGULAR_MOTION_DAMPING = 18;
	enum int PARAM_LINEAR_MOTION_DAMPING = 7;
	enum int PARAM_ANGULAR_LIMIT_UPPER = 11;
	enum int PARAM_LINEAR_MOTION_SOFTNESS = 5;
	enum int PARAM_MAX = 22;
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	void set_param(in int param, in float value)
	{
		_GODOT_set_param.bind("SliderJoint", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	float get_param(in int param) const
	{
		_GODOT_get_param.bind("SliderJoint", "get_param");
		return ptrcall!(float)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_upper_limit_angular;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_upper_limit_angular") = _GODOT__set_upper_limit_angular;
	void _set_upper_limit_angular(in float upper_limit_angular)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(upper_limit_angular);
		String _GODOT_method_name = String("_set_upper_limit_angular");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_upper_limit_angular;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_upper_limit_angular") = _GODOT__get_upper_limit_angular;
	float _get_upper_limit_angular() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_upper_limit_angular");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_lower_limit_angular;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_lower_limit_angular") = _GODOT__set_lower_limit_angular;
	void _set_lower_limit_angular(in float lower_limit_angular)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(lower_limit_angular);
		String _GODOT_method_name = String("_set_lower_limit_angular");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_lower_limit_angular;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_lower_limit_angular") = _GODOT__get_lower_limit_angular;
	float _get_lower_limit_angular() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_lower_limit_angular");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
}
