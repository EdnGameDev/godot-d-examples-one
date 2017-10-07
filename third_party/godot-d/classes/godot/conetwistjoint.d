module godot.conetwistjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct ConeTwistJoint
{
	static immutable string _GODOT_internal_name = "ConeTwistJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConeTwistJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConeTwistJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConeTwistJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConeTwistJoint");
		if(constructor is null) return typeof(this).init;
		return cast(ConeTwistJoint)(constructor());
	}
	enum Param : int
	{
		PARAM_BIAS = 2,
		PARAM_SOFTNESS = 3,
		PARAM_RELAXATION = 4,
		PARAM_MAX = 5,
		PARAM_SWING_SPAN = 0,
		PARAM_TWIST_SPAN = 1,
	}
	enum int PARAM_BIAS = 2;
	enum int PARAM_SOFTNESS = 3;
	enum int PARAM_RELAXATION = 4;
	enum int PARAM_MAX = 5;
	enum int PARAM_SWING_SPAN = 0;
	enum int PARAM_TWIST_SPAN = 1;
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	void set_param(in int param, in float value)
	{
		_GODOT_set_param.bind("ConeTwistJoint", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	float get_param(in int param) const
	{
		_GODOT_get_param.bind("ConeTwistJoint", "get_param");
		return ptrcall!(float)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_swing_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_swing_span") = _GODOT__set_swing_span;
	void _set_swing_span(in float swing_span)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(swing_span);
		String _GODOT_method_name = String("_set_swing_span");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_swing_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_swing_span") = _GODOT__get_swing_span;
	float _get_swing_span() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_swing_span");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_twist_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_twist_span") = _GODOT__set_twist_span;
	void _set_twist_span(in float twist_span)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(twist_span);
		String _GODOT_method_name = String("_set_twist_span");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_twist_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_twist_span") = _GODOT__get_twist_span;
	float _get_twist_span() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_twist_span");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
}
