module godot.curve2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Curve2D
{
	static immutable string _GODOT_internal_name = "Curve2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Curve2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Curve2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Curve2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Curve2D");
		if(constructor is null) return typeof(this).init;
		return cast(Curve2D)(constructor());
	}
	package(godot) static GodotMethod!(int) _GODOT_get_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_count") = _GODOT_get_point_count;
	int get_point_count() const
	{
		_GODOT_get_point_count.bind("Curve2D", "get_point_count");
		return ptrcall!(int)(_GODOT_get_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2, Vector2, int) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	void add_point(in Vector2 position, in Vector2 _in = Vector2(0, 0), in Vector2 _out = Vector2(0, 0), in int at_position = -1)
	{
		_GODOT_add_point.bind("Curve2D", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, position, _in, _out, at_position);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_position") = _GODOT_set_point_position;
	void set_point_position(in int idx, in Vector2 position)
	{
		_GODOT_set_point_position.bind("Curve2D", "set_point_position");
		ptrcall!(void)(_GODOT_set_point_position, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	Vector2 get_point_position(in int idx) const
	{
		_GODOT_get_point_position.bind("Curve2D", "get_point_position");
		return ptrcall!(Vector2)(_GODOT_get_point_position, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_point_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_in") = _GODOT_set_point_in;
	void set_point_in(in int idx, in Vector2 position)
	{
		_GODOT_set_point_in.bind("Curve2D", "set_point_in");
		ptrcall!(void)(_GODOT_set_point_in, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_point_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_in") = _GODOT_get_point_in;
	Vector2 get_point_in(in int idx) const
	{
		_GODOT_get_point_in.bind("Curve2D", "get_point_in");
		return ptrcall!(Vector2)(_GODOT_get_point_in, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_point_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_out") = _GODOT_set_point_out;
	void set_point_out(in int idx, in Vector2 position)
	{
		_GODOT_set_point_out.bind("Curve2D", "set_point_out");
		ptrcall!(void)(_GODOT_set_point_out, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_point_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_out") = _GODOT_get_point_out;
	Vector2 get_point_out(in int idx) const
	{
		_GODOT_get_point_out.bind("Curve2D", "get_point_out");
		return ptrcall!(Vector2)(_GODOT_get_point_out, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	void remove_point(in int idx)
	{
		_GODOT_remove_point.bind("Curve2D", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_points") = _GODOT_clear_points;
	void clear_points()
	{
		_GODOT_clear_points.bind("Curve2D", "clear_points");
		ptrcall!(void)(_GODOT_clear_points, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, int, float) _GODOT_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate") = _GODOT_interpolate;
	Vector2 interpolate(in int idx, in float t) const
	{
		_GODOT_interpolate.bind("Curve2D", "interpolate");
		return ptrcall!(Vector2)(_GODOT_interpolate, _godot_object, idx, t);
	}
	package(godot) static GodotMethod!(Vector2, float) _GODOT_interpolatef;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolatef") = _GODOT_interpolatef;
	Vector2 interpolatef(in float fofs) const
	{
		_GODOT_interpolatef.bind("Curve2D", "interpolatef");
		return ptrcall!(Vector2)(_GODOT_interpolatef, _godot_object, fofs);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bake_interval;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_interval") = _GODOT_set_bake_interval;
	void set_bake_interval(in float distance)
	{
		_GODOT_set_bake_interval.bind("Curve2D", "set_bake_interval");
		ptrcall!(void)(_GODOT_set_bake_interval, _godot_object, distance);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bake_interval;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_interval") = _GODOT_get_bake_interval;
	float get_bake_interval() const
	{
		_GODOT_get_bake_interval.bind("Curve2D", "get_bake_interval");
		return ptrcall!(float)(_GODOT_get_bake_interval, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_baked_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_baked_length") = _GODOT_get_baked_length;
	float get_baked_length() const
	{
		_GODOT_get_baked_length.bind("Curve2D", "get_baked_length");
		return ptrcall!(float)(_GODOT_get_baked_length, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, float, bool) _GODOT_interpolate_baked;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_baked") = _GODOT_interpolate_baked;
	Vector2 interpolate_baked(in float offset, in bool cubic = false) const
	{
		_GODOT_interpolate_baked.bind("Curve2D", "interpolate_baked");
		return ptrcall!(Vector2)(_GODOT_interpolate_baked, _godot_object, offset, cubic);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_baked_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_baked_points") = _GODOT_get_baked_points;
	PoolVector2Array get_baked_points() const
	{
		_GODOT_get_baked_points.bind("Curve2D", "get_baked_points");
		return ptrcall!(PoolVector2Array)(_GODOT_get_baked_points, _godot_object);
	}
	package(godot) static GodotMethod!(PoolVector2Array, int, float) _GODOT_tessellate;
	package(godot) alias _GODOT_methodBindInfo(string name : "tessellate") = _GODOT_tessellate;
	PoolVector2Array tessellate(in int max_stages = 5, in float tolerance_degrees = 4) const
	{
		_GODOT_tessellate.bind("Curve2D", "tessellate");
		return ptrcall!(PoolVector2Array)(_GODOT_tessellate, _godot_object, max_stages, tolerance_degrees);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Dictionary _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
