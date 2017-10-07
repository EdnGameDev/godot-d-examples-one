module godot.hingejoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct HingeJoint
{
	static immutable string _GODOT_internal_name = "HingeJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in HingeJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HingeJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HingeJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HingeJoint");
		if(constructor is null) return typeof(this).init;
		return cast(HingeJoint)(constructor());
	}
	enum Param : int
	{
		PARAM_LIMIT_UPPER = 1,
		PARAM_LIMIT_BIAS = 3,
		PARAM_BIAS = 0,
		PARAM_LIMIT_RELAXATION = 5,
		PARAM_LIMIT_LOWER = 2,
		PARAM_MOTOR_TARGET_VELOCITY = 6,
		PARAM_LIMIT_SOFTNESS = 4,
		PARAM_MAX = 8,
		PARAM_MOTOR_MAX_IMPULSE = 7,
	}
	enum Flag : int
	{
		FLAG_USE_LIMIT = 0,
		FLAG_ENABLE_MOTOR = 1,
		FLAG_MAX = 2,
	}
	enum int PARAM_LIMIT_UPPER = 1;
	enum int PARAM_LIMIT_BIAS = 3;
	enum int PARAM_BIAS = 0;
	enum int PARAM_LIMIT_RELAXATION = 5;
	enum int PARAM_LIMIT_LOWER = 2;
	enum int FLAG_ENABLE_MOTOR = 1;
	enum int FLAG_MAX = 2;
	enum int PARAM_MOTOR_TARGET_VELOCITY = 6;
	enum int PARAM_LIMIT_SOFTNESS = 4;
	enum int FLAG_USE_LIMIT = 0;
	enum int PARAM_MAX = 8;
	enum int PARAM_MOTOR_MAX_IMPULSE = 7;
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	void set_param(in int param, in float value)
	{
		_GODOT_set_param.bind("HingeJoint", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	float get_param(in int param) const
	{
		_GODOT_get_param.bind("HingeJoint", "get_param");
		return ptrcall!(float)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	void set_flag(in int flag, in bool enabled)
	{
		_GODOT_set_flag.bind("HingeJoint", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, enabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	bool get_flag(in int flag) const
	{
		_GODOT_get_flag.bind("HingeJoint", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_upper_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_upper_limit") = _GODOT__set_upper_limit;
	void _set_upper_limit(in float upper_limit)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(upper_limit);
		String _GODOT_method_name = String("_set_upper_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_upper_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_upper_limit") = _GODOT__get_upper_limit;
	float _get_upper_limit() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_upper_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_lower_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_lower_limit") = _GODOT__set_lower_limit;
	void _set_lower_limit(in float lower_limit)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(lower_limit);
		String _GODOT_method_name = String("_set_lower_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_lower_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_lower_limit") = _GODOT__get_lower_limit;
	float _get_lower_limit() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_lower_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
}
