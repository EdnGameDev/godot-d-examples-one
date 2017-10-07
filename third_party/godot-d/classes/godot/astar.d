module godot.astar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct AStar
{
	static immutable string _GODOT_internal_name = "AStar";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AStar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AStar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AStar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AStar");
		if(constructor is null) return typeof(this).init;
		return cast(AStar)(constructor());
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT__estimate_cost;
	package(godot) alias _GODOT_methodBindInfo(string name : "_estimate_cost") = _GODOT__estimate_cost;
	void _estimate_cost(in int from_id, in int to_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_estimate_cost");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT__compute_cost;
	package(godot) alias _GODOT_methodBindInfo(string name : "_compute_cost") = _GODOT__compute_cost;
	void _compute_cost(in int from_id, in int to_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_compute_cost");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_available_point_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_available_point_id") = _GODOT_get_available_point_id;
	int get_available_point_id() const
	{
		_GODOT_get_available_point_id.bind("AStar", "get_available_point_id");
		return ptrcall!(int)(_GODOT_get_available_point_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Vector3, float) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	void add_point(in int id, in Vector3 position, in float weight_scale = 1)
	{
		_GODOT_add_point.bind("AStar", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, id, position, weight_scale);
	}
	package(godot) static GodotMethod!(Vector3, int) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	Vector3 get_point_position(in int id) const
	{
		_GODOT_get_point_position.bind("AStar", "get_point_position");
		return ptrcall!(Vector3)(_GODOT_get_point_position, _godot_object, id);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_point_weight_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_weight_scale") = _GODOT_get_point_weight_scale;
	float get_point_weight_scale(in int id) const
	{
		_GODOT_get_point_weight_scale.bind("AStar", "get_point_weight_scale");
		return ptrcall!(float)(_GODOT_get_point_weight_scale, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	void remove_point(in int id)
	{
		_GODOT_remove_point.bind("AStar", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, id);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_has_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_point") = _GODOT_has_point;
	bool has_point(in int id) const
	{
		_GODOT_has_point.bind("AStar", "has_point");
		return ptrcall!(bool)(_GODOT_has_point, _godot_object, id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	Array get_points()
	{
		_GODOT_get_points.bind("AStar", "get_points");
		return ptrcall!(Array)(_GODOT_get_points, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, bool) _GODOT_connect_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_points") = _GODOT_connect_points;
	void connect_points(in int id, in int to_id, in bool bidirectional = true)
	{
		_GODOT_connect_points.bind("AStar", "connect_points");
		ptrcall!(void)(_GODOT_connect_points, _godot_object, id, to_id, bidirectional);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_disconnect_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_points") = _GODOT_disconnect_points;
	void disconnect_points(in int id, in int to_id)
	{
		_GODOT_disconnect_points.bind("AStar", "disconnect_points");
		ptrcall!(void)(_GODOT_disconnect_points, _godot_object, id, to_id);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_are_points_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_points_connected") = _GODOT_are_points_connected;
	bool are_points_connected(in int id, in int to_id) const
	{
		_GODOT_are_points_connected.bind("AStar", "are_points_connected");
		return ptrcall!(bool)(_GODOT_are_points_connected, _godot_object, id, to_id);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("AStar", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(int, Vector3) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	int get_closest_point(in Vector3 to_position) const
	{
		_GODOT_get_closest_point.bind("AStar", "get_closest_point");
		return ptrcall!(int)(_GODOT_get_closest_point, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_position_in_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_position_in_segment") = _GODOT_get_closest_position_in_segment;
	Vector3 get_closest_position_in_segment(in Vector3 to_position) const
	{
		_GODOT_get_closest_position_in_segment.bind("AStar", "get_closest_position_in_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_position_in_segment, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(PoolVector3Array, int, int) _GODOT_get_point_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_path") = _GODOT_get_point_path;
	PoolVector3Array get_point_path(in int from_id, in int to_id)
	{
		_GODOT_get_point_path.bind("AStar", "get_point_path");
		return ptrcall!(PoolVector3Array)(_GODOT_get_point_path, _godot_object, from_id, to_id);
	}
	package(godot) static GodotMethod!(PoolIntArray, int, int) _GODOT_get_id_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_id_path") = _GODOT_get_id_path;
	PoolIntArray get_id_path(in int from_id, in int to_id)
	{
		_GODOT_get_id_path.bind("AStar", "get_id_path");
		return ptrcall!(PoolIntArray)(_GODOT_get_id_path, _godot_object, from_id, to_id);
	}
}
