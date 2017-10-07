module godot.generic6dofjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct Generic6DOFJoint
{
	static immutable string _GODOT_internal_name = "Generic6DOFJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Generic6DOFJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Generic6DOFJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Generic6DOFJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Generic6DOFJoint");
		if(constructor is null) return typeof(this).init;
		return cast(Generic6DOFJoint)(constructor());
	}
	enum Param : int
	{
		PARAM_ANGULAR_UPPER_LIMIT = 6,
		PARAM_LINEAR_UPPER_LIMIT = 1,
		PARAM_MAX = 14,
		PARAM_ANGULAR_LIMIT_SOFTNESS = 7,
		PARAM_ANGULAR_MOTOR_FORCE_LIMIT = 13,
		PARAM_LINEAR_LOWER_LIMIT = 0,
		PARAM_LINEAR_LIMIT_SOFTNESS = 2,
		PARAM_LINEAR_DAMPING = 4,
		PARAM_LINEAR_RESTITUTION = 3,
		PARAM_ANGULAR_LOWER_LIMIT = 5,
		PARAM_ANGULAR_ERP = 11,
		PARAM_ANGULAR_DAMPING = 8,
		PARAM_ANGULAR_MOTOR_TARGET_VELOCITY = 12,
		PARAM_ANGULAR_RESTITUTION = 9,
		PARAM_ANGULAR_FORCE_LIMIT = 10,
	}
	enum Flag : int
	{
		FLAG_ENABLE_ANGULAR_LIMIT = 1,
		FLAG_ENABLE_LINEAR_LIMIT = 0,
		FLAG_ENABLE_MOTOR = 2,
		FLAG_MAX = 3,
	}
	enum int PARAM_ANGULAR_UPPER_LIMIT = 6;
	enum int PARAM_LINEAR_UPPER_LIMIT = 1;
	enum int PARAM_MAX = 14;
	enum int PARAM_ANGULAR_LIMIT_SOFTNESS = 7;
	enum int PARAM_ANGULAR_MOTOR_FORCE_LIMIT = 13;
	enum int PARAM_LINEAR_LOWER_LIMIT = 0;
	enum int FLAG_ENABLE_LINEAR_LIMIT = 0;
	enum int FLAG_ENABLE_MOTOR = 2;
	enum int FLAG_MAX = 3;
	enum int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
	enum int FLAG_ENABLE_ANGULAR_LIMIT = 1;
	enum int PARAM_LINEAR_DAMPING = 4;
	enum int PARAM_LINEAR_RESTITUTION = 3;
	enum int PARAM_ANGULAR_LOWER_LIMIT = 5;
	enum int PARAM_ANGULAR_ERP = 11;
	enum int PARAM_ANGULAR_DAMPING = 8;
	enum int PARAM_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
	enum int PARAM_ANGULAR_RESTITUTION = 9;
	enum int PARAM_ANGULAR_FORCE_LIMIT = 10;
	package(godot) static GodotMethod!(void, float) _GODOT__set_angular_hi_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_hi_limit_x") = _GODOT__set_angular_hi_limit_x;
	void _set_angular_hi_limit_x(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_angular_hi_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_hi_limit_x") = _GODOT__get_angular_hi_limit_x;
	float _get_angular_hi_limit_x() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_angular_lo_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_lo_limit_x") = _GODOT__set_angular_lo_limit_x;
	void _set_angular_lo_limit_x(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_angular_lo_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_lo_limit_x") = _GODOT__get_angular_lo_limit_x;
	float _get_angular_lo_limit_x() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_angular_hi_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_hi_limit_y") = _GODOT__set_angular_hi_limit_y;
	void _set_angular_hi_limit_y(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_angular_hi_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_hi_limit_y") = _GODOT__get_angular_hi_limit_y;
	float _get_angular_hi_limit_y() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_angular_lo_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_lo_limit_y") = _GODOT__set_angular_lo_limit_y;
	void _set_angular_lo_limit_y(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_angular_lo_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_lo_limit_y") = _GODOT__get_angular_lo_limit_y;
	float _get_angular_lo_limit_y() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_angular_hi_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_hi_limit_z") = _GODOT__set_angular_hi_limit_z;
	void _set_angular_hi_limit_z(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_angular_hi_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_hi_limit_z") = _GODOT__get_angular_hi_limit_z;
	float _get_angular_hi_limit_z() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_angular_lo_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_lo_limit_z") = _GODOT__set_angular_lo_limit_z;
	void _set_angular_lo_limit_z(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_angular_lo_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_lo_limit_z") = _GODOT__get_angular_lo_limit_z;
	float _get_angular_lo_limit_z() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_x") = _GODOT_set_param_x;
	void set_param_x(in int param, in float value)
	{
		_GODOT_set_param_x.bind("Generic6DOFJoint", "set_param_x");
		ptrcall!(void)(_GODOT_set_param_x, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_x") = _GODOT_get_param_x;
	float get_param_x(in int param) const
	{
		_GODOT_get_param_x.bind("Generic6DOFJoint", "get_param_x");
		return ptrcall!(float)(_GODOT_get_param_x, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_y") = _GODOT_set_param_y;
	void set_param_y(in int param, in float value)
	{
		_GODOT_set_param_y.bind("Generic6DOFJoint", "set_param_y");
		ptrcall!(void)(_GODOT_set_param_y, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_y") = _GODOT_get_param_y;
	float get_param_y(in int param) const
	{
		_GODOT_get_param_y.bind("Generic6DOFJoint", "get_param_y");
		return ptrcall!(float)(_GODOT_get_param_y, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_z") = _GODOT_set_param_z;
	void set_param_z(in int param, in float value)
	{
		_GODOT_set_param_z.bind("Generic6DOFJoint", "set_param_z");
		ptrcall!(void)(_GODOT_set_param_z, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_z") = _GODOT_get_param_z;
	float get_param_z(in int param) const
	{
		_GODOT_get_param_z.bind("Generic6DOFJoint", "get_param_z");
		return ptrcall!(float)(_GODOT_get_param_z, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag_x") = _GODOT_set_flag_x;
	void set_flag_x(in int flag, in bool value)
	{
		_GODOT_set_flag_x.bind("Generic6DOFJoint", "set_flag_x");
		ptrcall!(void)(_GODOT_set_flag_x, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag_x") = _GODOT_get_flag_x;
	bool get_flag_x(in int flag) const
	{
		_GODOT_get_flag_x.bind("Generic6DOFJoint", "get_flag_x");
		return ptrcall!(bool)(_GODOT_get_flag_x, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag_y") = _GODOT_set_flag_y;
	void set_flag_y(in int flag, in bool value)
	{
		_GODOT_set_flag_y.bind("Generic6DOFJoint", "set_flag_y");
		ptrcall!(void)(_GODOT_set_flag_y, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag_y") = _GODOT_get_flag_y;
	bool get_flag_y(in int flag) const
	{
		_GODOT_get_flag_y.bind("Generic6DOFJoint", "get_flag_y");
		return ptrcall!(bool)(_GODOT_get_flag_y, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag_z") = _GODOT_set_flag_z;
	void set_flag_z(in int flag, in bool value)
	{
		_GODOT_set_flag_z.bind("Generic6DOFJoint", "set_flag_z");
		ptrcall!(void)(_GODOT_set_flag_z, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag_z") = _GODOT_get_flag_z;
	bool get_flag_z(in int flag) const
	{
		_GODOT_get_flag_z.bind("Generic6DOFJoint", "get_flag_z");
		return ptrcall!(bool)(_GODOT_get_flag_z, _godot_object, flag);
	}
}
