module godot.tween;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
@GodotBaseClass struct Tween
{
	static immutable string _GODOT_internal_name = "Tween";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Tween other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tween opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tween _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Tween");
		if(constructor is null) return typeof(this).init;
		return cast(Tween)(constructor());
	}
	enum TransitionType : int
	{
		TRANS_QUART = 3,
		TRANS_SINE = 1,
		TRANS_QUINT = 2,
		TRANS_EXPO = 5,
		TRANS_QUAD = 4,
		TRANS_LINEAR = 0,
		TRANS_ELASTIC = 6,
		TRANS_CUBIC = 7,
		TRANS_BOUNCE = 9,
		TRANS_CIRC = 8,
		TRANS_BACK = 10,
	}
	enum TweenProcessMode : int
	{
		TWEEN_PROCESS_FIXED = 0,
		TWEEN_PROCESS_IDLE = 1,
	}
	enum EaseType : int
	{
		EASE_OUT_IN = 3,
		EASE_IN_OUT = 2,
		EASE_IN = 0,
		EASE_OUT = 1,
	}
	enum int TRANS_QUART = 3;
	enum int EASE_IN = 0;
	enum int EASE_OUT = 1;
	enum int TRANS_SINE = 1;
	enum int TRANS_QUINT = 2;
	enum int TRANS_EXPO = 5;
	enum int TWEEN_PROCESS_FIXED = 0;
	enum int TRANS_QUAD = 4;
	enum int EASE_IN_OUT = 2;
	enum int EASE_OUT_IN = 3;
	enum int TRANS_LINEAR = 0;
	enum int TRANS_ELASTIC = 6;
	enum int TRANS_CUBIC = 7;
	enum int TRANS_BOUNCE = 9;
	enum int TWEEN_PROCESS_IDLE = 1;
	enum int TRANS_CIRC = 8;
	enum int TRANS_BACK = 10;
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	bool is_active() const
	{
		_GODOT_is_active.bind("Tween", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	void set_active(in bool active)
	{
		_GODOT_set_active.bind("Tween", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_repeat;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_repeat") = _GODOT_is_repeat;
	bool is_repeat() const
	{
		_GODOT_is_repeat.bind("Tween", "is_repeat");
		return ptrcall!(bool)(_GODOT_is_repeat, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_repeat;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_repeat") = _GODOT_set_repeat;
	void set_repeat(in bool repeat)
	{
		_GODOT_set_repeat.bind("Tween", "set_repeat");
		ptrcall!(void)(_GODOT_set_repeat, _godot_object, repeat);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	void set_speed_scale(in float speed)
	{
		_GODOT_set_speed_scale.bind("Tween", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	float get_speed_scale() const
	{
		_GODOT_get_speed_scale.bind("Tween", "get_speed_scale");
		return ptrcall!(float)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tween_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tween_process_mode") = _GODOT_set_tween_process_mode;
	void set_tween_process_mode(in int mode)
	{
		_GODOT_set_tween_process_mode.bind("Tween", "set_tween_process_mode");
		ptrcall!(void)(_GODOT_set_tween_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Tween.TweenProcessMode) _GODOT_get_tween_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tween_process_mode") = _GODOT_get_tween_process_mode;
	Tween.TweenProcessMode get_tween_process_mode() const
	{
		_GODOT_get_tween_process_mode.bind("Tween", "get_tween_process_mode");
		return ptrcall!(Tween.TweenProcessMode)(_GODOT_get_tween_process_mode, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "start") = _GODOT_start;
	bool start()
	{
		_GODOT_start.bind("Tween", "start");
		return ptrcall!(bool)(_GODOT_start, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset") = _GODOT_reset;
	bool reset(StringArg1)(in GodotObject object, in StringArg1 key = "")
	{
		_GODOT_reset.bind("Tween", "reset");
		return ptrcall!(bool)(_GODOT_reset, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(bool) _GODOT_reset_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset_all") = _GODOT_reset_all;
	bool reset_all()
	{
		_GODOT_reset_all.bind("Tween", "reset_all");
		return ptrcall!(bool)(_GODOT_reset_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	bool stop(StringArg1)(in GodotObject object, in StringArg1 key = "")
	{
		_GODOT_stop.bind("Tween", "stop");
		return ptrcall!(bool)(_GODOT_stop, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(bool) _GODOT_stop_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop_all") = _GODOT_stop_all;
	bool stop_all()
	{
		_GODOT_stop_all.bind("Tween", "stop_all");
		return ptrcall!(bool)(_GODOT_stop_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_resume;
	package(godot) alias _GODOT_methodBindInfo(string name : "resume") = _GODOT_resume;
	bool resume(StringArg1)(in GodotObject object, in StringArg1 key = "")
	{
		_GODOT_resume.bind("Tween", "resume");
		return ptrcall!(bool)(_GODOT_resume, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(bool) _GODOT_resume_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "resume_all") = _GODOT_resume_all;
	bool resume_all()
	{
		_GODOT_resume_all.bind("Tween", "resume_all");
		return ptrcall!(bool)(_GODOT_resume_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove") = _GODOT_remove;
	bool remove(StringArg1)(in GodotObject object, in StringArg1 key = "")
	{
		_GODOT_remove.bind("Tween", "remove");
		return ptrcall!(bool)(_GODOT_remove, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, bool) _GODOT__remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "_remove") = _GODOT__remove;
	void _remove(StringArg1)(in GodotObject object, in StringArg1 key, in bool first_only)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(key);
		_GODOT_args.append(first_only);
		String _GODOT_method_name = String("_remove");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT_remove_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_all") = _GODOT_remove_all;
	bool remove_all()
	{
		_GODOT_remove_all.bind("Tween", "remove_all");
		return ptrcall!(bool)(_GODOT_remove_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, float) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	bool seek(in float time)
	{
		_GODOT_seek.bind("Tween", "seek");
		return ptrcall!(bool)(_GODOT_seek, _godot_object, time);
	}
	package(godot) static GodotMethod!(float) _GODOT_tell;
	package(godot) alias _GODOT_methodBindInfo(string name : "tell") = _GODOT_tell;
	float tell() const
	{
		_GODOT_tell.bind("Tween", "tell");
		return ptrcall!(float)(_GODOT_tell, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_runtime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_runtime") = _GODOT_get_runtime;
	float get_runtime() const
	{
		_GODOT_get_runtime.bind("Tween", "get_runtime");
		return ptrcall!(float)(_GODOT_get_runtime, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, Variant, Variant, float, int, int, float) _GODOT_interpolate_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_property") = _GODOT_interpolate_property;
	bool interpolate_property(StringArg1, VariantArg2, VariantArg3)(in GodotObject object, in StringArg1 property, in VariantArg2 initial_val, in VariantArg3 final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		_GODOT_interpolate_property.bind("Tween", "interpolate_property");
		return ptrcall!(bool)(_GODOT_interpolate_property, _godot_object, object, property, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, Variant, Variant, float, int, int, float) _GODOT_interpolate_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_method") = _GODOT_interpolate_method;
	bool interpolate_method(StringArg1, VariantArg2, VariantArg3)(in GodotObject object, in StringArg1 method, in VariantArg2 initial_val, in VariantArg3 final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		_GODOT_interpolate_method.bind("Tween", "interpolate_method");
		return ptrcall!(bool)(_GODOT_interpolate_method, _godot_object, object, method, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, float, String, Variant, Variant, Variant, Variant, Variant) _GODOT_interpolate_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_callback") = _GODOT_interpolate_callback;
	bool interpolate_callback(StringArg2, VariantArg3, VariantArg4, VariantArg5, VariantArg6, VariantArg7)(in GodotObject object, in float duration, in StringArg2 callback, in VariantArg3 arg1 = Variant.nil, in VariantArg4 arg2 = Variant.nil, in VariantArg5 arg3 = Variant.nil, in VariantArg6 arg4 = Variant.nil, in VariantArg7 arg5 = Variant.nil)
	{
		_GODOT_interpolate_callback.bind("Tween", "interpolate_callback");
		return ptrcall!(bool)(_GODOT_interpolate_callback, _godot_object, object, duration, callback, arg1, arg2, arg3, arg4, arg5);
	}
	package(godot) static GodotMethod!(bool, GodotObject, float, String, Variant, Variant, Variant, Variant, Variant) _GODOT_interpolate_deferred_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_deferred_callback") = _GODOT_interpolate_deferred_callback;
	bool interpolate_deferred_callback(StringArg2, VariantArg3, VariantArg4, VariantArg5, VariantArg6, VariantArg7)(in GodotObject object, in float duration, in StringArg2 callback, in VariantArg3 arg1 = Variant.nil, in VariantArg4 arg2 = Variant.nil, in VariantArg5 arg3 = Variant.nil, in VariantArg6 arg4 = Variant.nil, in VariantArg7 arg5 = Variant.nil)
	{
		_GODOT_interpolate_deferred_callback.bind("Tween", "interpolate_deferred_callback");
		return ptrcall!(bool)(_GODOT_interpolate_deferred_callback, _godot_object, object, duration, callback, arg1, arg2, arg3, arg4, arg5);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, Variant, GodotObject, String, float, int, int, float) _GODOT_follow_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "follow_property") = _GODOT_follow_property;
	bool follow_property(StringArg1, VariantArg2, StringArg4)(in GodotObject object, in StringArg1 property, in VariantArg2 initial_val, in GodotObject target, in StringArg4 target_property, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		_GODOT_follow_property.bind("Tween", "follow_property");
		return ptrcall!(bool)(_GODOT_follow_property, _godot_object, object, property, initial_val, target, target_property, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, Variant, GodotObject, String, float, int, int, float) _GODOT_follow_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "follow_method") = _GODOT_follow_method;
	bool follow_method(StringArg1, VariantArg2, StringArg4)(in GodotObject object, in StringArg1 method, in VariantArg2 initial_val, in GodotObject target, in StringArg4 target_method, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		_GODOT_follow_method.bind("Tween", "follow_method");
		return ptrcall!(bool)(_GODOT_follow_method, _godot_object, object, method, initial_val, target, target_method, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, GodotObject, String, Variant, float, int, int, float) _GODOT_targeting_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "targeting_property") = _GODOT_targeting_property;
	bool targeting_property(StringArg1, StringArg3, VariantArg4)(in GodotObject object, in StringArg1 property, in GodotObject initial, in StringArg3 initial_val, in VariantArg4 final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		_GODOT_targeting_property.bind("Tween", "targeting_property");
		return ptrcall!(bool)(_GODOT_targeting_property, _godot_object, object, property, initial, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, GodotObject, String, Variant, float, int, int, float) _GODOT_targeting_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "targeting_method") = _GODOT_targeting_method;
	bool targeting_method(StringArg1, StringArg3, VariantArg4)(in GodotObject object, in StringArg1 method, in GodotObject initial, in StringArg3 initial_method, in VariantArg4 final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		_GODOT_targeting_method.bind("Tween", "targeting_method");
		return ptrcall!(bool)(_GODOT_targeting_method, _godot_object, object, method, initial, initial_method, final_val, duration, trans_type, ease_type, delay);
	}
}
