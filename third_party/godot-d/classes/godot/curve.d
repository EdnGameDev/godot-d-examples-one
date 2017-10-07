module godot.curve;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Curve
{
	static immutable string _GODOT_internal_name = "Curve";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Curve other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Curve opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Curve _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Curve");
		if(constructor is null) return typeof(this).init;
		return cast(Curve)(constructor());
	}
	enum TangentMode : int
	{
		TANGENT_MODE_COUNT = 2,
		TANGENT_FREE = 0,
		TANGENT_LINEAR = 1,
	}
	enum int TANGENT_MODE_COUNT = 2;
	enum int TANGENT_FREE = 0;
	enum int TANGENT_LINEAR = 1;
	package(godot) static GodotMethod!(int, Vector2, float, float, int, int) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	int add_point(in Vector2 position, in float left_tangent = 0, in float right_tangent = 0, in int left_mode = 0, in int right_mode = 0)
	{
		_GODOT_add_point.bind("Curve", "add_point");
		return ptrcall!(int)(_GODOT_add_point, _godot_object, position, left_tangent, right_tangent, left_mode, right_mode);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	void remove_point(in int index)
	{
		_GODOT_remove_point.bind("Curve", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, index);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_points") = _GODOT_clear_points;
	void clear_points()
	{
		_GODOT_clear_points.bind("Curve", "clear_points");
		ptrcall!(void)(_GODOT_clear_points, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	Vector2 get_point_position(in int index) const
	{
		_GODOT_get_point_position.bind("Curve", "get_point_position");
		return ptrcall!(Vector2)(_GODOT_get_point_position, _godot_object, index);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_point_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_value") = _GODOT_set_point_value;
	void set_point_value(in int index, in float y)
	{
		_GODOT_set_point_value.bind("Curve", "set_point_value");
		ptrcall!(void)(_GODOT_set_point_value, _godot_object, index, y);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_point_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_offset") = _GODOT_set_point_offset;
	void set_point_offset(in int index, in float offset)
	{
		_GODOT_set_point_offset.bind("Curve", "set_point_offset");
		ptrcall!(void)(_GODOT_set_point_offset, _godot_object, index, offset);
	}
	package(godot) static GodotMethod!(float, float) _GODOT_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate") = _GODOT_interpolate;
	float interpolate(in float offset) const
	{
		_GODOT_interpolate.bind("Curve", "interpolate");
		return ptrcall!(float)(_GODOT_interpolate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(float, float) _GODOT_interpolate_baked;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_baked") = _GODOT_interpolate_baked;
	float interpolate_baked(in float offset)
	{
		_GODOT_interpolate_baked.bind("Curve", "interpolate_baked");
		return ptrcall!(float)(_GODOT_interpolate_baked, _godot_object, offset);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_point_left_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_left_tangent") = _GODOT_get_point_left_tangent;
	float get_point_left_tangent(in int index) const
	{
		_GODOT_get_point_left_tangent.bind("Curve", "get_point_left_tangent");
		return ptrcall!(float)(_GODOT_get_point_left_tangent, _godot_object, index);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_point_right_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_right_tangent") = _GODOT_get_point_right_tangent;
	float get_point_right_tangent(in int index) const
	{
		_GODOT_get_point_right_tangent.bind("Curve", "get_point_right_tangent");
		return ptrcall!(float)(_GODOT_get_point_right_tangent, _godot_object, index);
	}
	package(godot) static GodotMethod!(Curve.TangentMode, int) _GODOT_get_point_left_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_left_mode") = _GODOT_get_point_left_mode;
	Curve.TangentMode get_point_left_mode(in int index) const
	{
		_GODOT_get_point_left_mode.bind("Curve", "get_point_left_mode");
		return ptrcall!(Curve.TangentMode)(_GODOT_get_point_left_mode, _godot_object, index);
	}
	package(godot) static GodotMethod!(Curve.TangentMode, int) _GODOT_get_point_right_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_right_mode") = _GODOT_get_point_right_mode;
	Curve.TangentMode get_point_right_mode(in int index) const
	{
		_GODOT_get_point_right_mode.bind("Curve", "get_point_right_mode");
		return ptrcall!(Curve.TangentMode)(_GODOT_get_point_right_mode, _godot_object, index);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_point_left_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_left_tangent") = _GODOT_set_point_left_tangent;
	void set_point_left_tangent(in int index, in float tangent)
	{
		_GODOT_set_point_left_tangent.bind("Curve", "set_point_left_tangent");
		ptrcall!(void)(_GODOT_set_point_left_tangent, _godot_object, index, tangent);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_point_right_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_right_tangent") = _GODOT_set_point_right_tangent;
	void set_point_right_tangent(in int index, in float tangent)
	{
		_GODOT_set_point_right_tangent.bind("Curve", "set_point_right_tangent");
		ptrcall!(void)(_GODOT_set_point_right_tangent, _godot_object, index, tangent);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_point_left_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_left_mode") = _GODOT_set_point_left_mode;
	void set_point_left_mode(in int index, in int mode)
	{
		_GODOT_set_point_left_mode.bind("Curve", "set_point_left_mode");
		ptrcall!(void)(_GODOT_set_point_left_mode, _godot_object, index, mode);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_point_right_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_right_mode") = _GODOT_set_point_right_mode;
	void set_point_right_mode(in int index, in int mode)
	{
		_GODOT_set_point_right_mode.bind("Curve", "set_point_right_mode");
		ptrcall!(void)(_GODOT_set_point_right_mode, _godot_object, index, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_min_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_min_value") = _GODOT_get_min_value;
	float get_min_value() const
	{
		_GODOT_get_min_value.bind("Curve", "get_min_value");
		return ptrcall!(float)(_GODOT_get_min_value, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_min_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_min_value") = _GODOT_set_min_value;
	void set_min_value(in float min)
	{
		_GODOT_set_min_value.bind("Curve", "set_min_value");
		ptrcall!(void)(_GODOT_set_min_value, _godot_object, min);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_max_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_value") = _GODOT_get_max_value;
	float get_max_value() const
	{
		_GODOT_get_max_value.bind("Curve", "get_max_value");
		return ptrcall!(float)(_GODOT_get_max_value, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_max_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_value") = _GODOT_set_max_value;
	void set_max_value(in float max)
	{
		_GODOT_set_max_value.bind("Curve", "set_max_value");
		ptrcall!(void)(_GODOT_set_max_value, _godot_object, max);
	}
	package(godot) static GodotMethod!(void) _GODOT_clean_dupes;
	package(godot) alias _GODOT_methodBindInfo(string name : "clean_dupes") = _GODOT_clean_dupes;
	void clean_dupes()
	{
		_GODOT_clean_dupes.bind("Curve", "clean_dupes");
		ptrcall!(void)(_GODOT_clean_dupes, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "bake") = _GODOT_bake;
	void bake()
	{
		_GODOT_bake.bind("Curve", "bake");
		ptrcall!(void)(_GODOT_bake, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_bake_resolution;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_resolution") = _GODOT_get_bake_resolution;
	int get_bake_resolution() const
	{
		_GODOT_get_bake_resolution.bind("Curve", "get_bake_resolution");
		return ptrcall!(int)(_GODOT_get_bake_resolution, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_bake_resolution;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_resolution") = _GODOT_set_bake_resolution;
	void set_bake_resolution(in int resolution)
	{
		_GODOT_set_bake_resolution.bind("Curve", "set_bake_resolution");
		ptrcall!(void)(_GODOT_set_bake_resolution, _godot_object, resolution);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Array _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in Array data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
