module godot.pinjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct PinJoint
{
	static immutable string _GODOT_internal_name = "PinJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PinJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PinJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PinJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PinJoint");
		if(constructor is null) return typeof(this).init;
		return cast(PinJoint)(constructor());
	}
	enum Param : int
	{
		PARAM_IMPULSE_CLAMP = 2,
		PARAM_DAMPING = 1,
		PARAM_BIAS = 0,
	}
	enum int PARAM_IMPULSE_CLAMP = 2;
	enum int PARAM_DAMPING = 1;
	enum int PARAM_BIAS = 0;
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	void set_param(in int param, in float value)
	{
		_GODOT_set_param.bind("PinJoint", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	float get_param(in int param) const
	{
		_GODOT_get_param.bind("PinJoint", "get_param");
		return ptrcall!(float)(_GODOT_get_param, _godot_object, param);
	}
}
