module godot.range;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct Range
{
	static immutable string _GODOT_internal_name = "Range";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Range other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Range opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Range _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Range");
		if(constructor is null) return typeof(this).init;
		return cast(Range)(constructor());
	}
	package(godot) static GodotMethod!(float) _GODOT_get_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_value") = _GODOT_get_value;
	float get_value() const
	{
		_GODOT_get_value.bind("Range", "get_value");
		return ptrcall!(float)(_GODOT_get_value, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_min") = _GODOT_get_min;
	float get_min() const
	{
		_GODOT_get_min.bind("Range", "get_min");
		return ptrcall!(float)(_GODOT_get_min, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max") = _GODOT_get_max;
	float get_max() const
	{
		_GODOT_get_max.bind("Range", "get_max");
		return ptrcall!(float)(_GODOT_get_max, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	float get_step() const
	{
		_GODOT_get_step.bind("Range", "get_step");
		return ptrcall!(float)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_page;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_page") = _GODOT_get_page;
	float get_page() const
	{
		_GODOT_get_page.bind("Range", "get_page");
		return ptrcall!(float)(_GODOT_get_page, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_as_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_ratio") = _GODOT_get_as_ratio;
	float get_as_ratio() const
	{
		_GODOT_get_as_ratio.bind("Range", "get_as_ratio");
		return ptrcall!(float)(_GODOT_get_as_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_value") = _GODOT_set_value;
	void set_value(in float value)
	{
		_GODOT_set_value.bind("Range", "set_value");
		ptrcall!(void)(_GODOT_set_value, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_min") = _GODOT_set_min;
	void set_min(in float minimum)
	{
		_GODOT_set_min.bind("Range", "set_min");
		ptrcall!(void)(_GODOT_set_min, _godot_object, minimum);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max") = _GODOT_set_max;
	void set_max(in float maximum)
	{
		_GODOT_set_max.bind("Range", "set_max");
		ptrcall!(void)(_GODOT_set_max, _godot_object, maximum);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_step") = _GODOT_set_step;
	void set_step(in float step)
	{
		_GODOT_set_step.bind("Range", "set_step");
		ptrcall!(void)(_GODOT_set_step, _godot_object, step);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_page;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_page") = _GODOT_set_page;
	void set_page(in float pagesize)
	{
		_GODOT_set_page.bind("Range", "set_page");
		ptrcall!(void)(_GODOT_set_page, _godot_object, pagesize);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_as_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_ratio") = _GODOT_set_as_ratio;
	void set_as_ratio(in float value)
	{
		_GODOT_set_as_ratio.bind("Range", "set_as_ratio");
		ptrcall!(void)(_GODOT_set_as_ratio, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_rounded_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_rounded_values") = _GODOT_set_use_rounded_values;
	void set_use_rounded_values(in bool enabled)
	{
		_GODOT_set_use_rounded_values.bind("Range", "set_use_rounded_values");
		ptrcall!(void)(_GODOT_set_use_rounded_values, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_rounded_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_rounded_values") = _GODOT_is_using_rounded_values;
	bool is_using_rounded_values() const
	{
		_GODOT_is_using_rounded_values.bind("Range", "is_using_rounded_values");
		return ptrcall!(bool)(_GODOT_is_using_rounded_values, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exp_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exp_ratio") = _GODOT_set_exp_ratio;
	void set_exp_ratio(in bool enabled)
	{
		_GODOT_set_exp_ratio.bind("Range", "set_exp_ratio");
		ptrcall!(void)(_GODOT_set_exp_ratio, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ratio_exp;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ratio_exp") = _GODOT_is_ratio_exp;
	bool is_ratio_exp() const
	{
		_GODOT_is_ratio_exp.bind("Range", "is_ratio_exp");
		return ptrcall!(bool)(_GODOT_is_ratio_exp, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_share;
	package(godot) alias _GODOT_methodBindInfo(string name : "share") = _GODOT_share;
	void share(in GodotObject _with)
	{
		_GODOT_share.bind("Range", "share");
		ptrcall!(void)(_GODOT_share, _godot_object, _with);
	}
	package(godot) static GodotMethod!(void) _GODOT_unshare;
	package(godot) alias _GODOT_methodBindInfo(string name : "unshare") = _GODOT_unshare;
	void unshare()
	{
		_GODOT_unshare.bind("Range", "unshare");
		ptrcall!(void)(_GODOT_unshare, _godot_object);
	}
}
