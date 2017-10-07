module godot.polygonpathfinder;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct PolygonPathFinder
{
	static immutable string _GODOT_internal_name = "PolygonPathFinder";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PolygonPathFinder other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PolygonPathFinder opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PolygonPathFinder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PolygonPathFinder");
		if(constructor is null) return typeof(this).init;
		return cast(PolygonPathFinder)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolIntArray) _GODOT_setup;
	package(godot) alias _GODOT_methodBindInfo(string name : "setup") = _GODOT_setup;
	void setup(in PoolVector2Array points, in PoolIntArray connections)
	{
		_GODOT_setup.bind("PolygonPathFinder", "setup");
		ptrcall!(void)(_GODOT_setup, _godot_object, points, connections);
	}
	package(godot) static GodotMethod!(PoolVector2Array, Vector2, Vector2) _GODOT_find_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_path") = _GODOT_find_path;
	PoolVector2Array find_path(in Vector2 from, in Vector2 to)
	{
		_GODOT_find_path.bind("PolygonPathFinder", "find_path");
		return ptrcall!(PoolVector2Array)(_GODOT_find_path, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(PoolVector2Array, Vector2, Vector2) _GODOT_get_intersections;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_intersections") = _GODOT_get_intersections;
	PoolVector2Array get_intersections(in Vector2 from, in Vector2 to) const
	{
		_GODOT_get_intersections.bind("PolygonPathFinder", "get_intersections");
		return ptrcall!(PoolVector2Array)(_GODOT_get_intersections, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	Vector2 get_closest_point(in Vector2 point) const
	{
		_GODOT_get_closest_point.bind("PolygonPathFinder", "get_closest_point");
		return ptrcall!(Vector2)(_GODOT_get_closest_point, _godot_object, point);
	}
	package(godot) static GodotMethod!(bool, Vector2) _GODOT_is_point_inside;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_point_inside") = _GODOT_is_point_inside;
	bool is_point_inside(in Vector2 point) const
	{
		_GODOT_is_point_inside.bind("PolygonPathFinder", "is_point_inside");
		return ptrcall!(bool)(_GODOT_is_point_inside, _godot_object, point);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_point_penalty;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_penalty") = _GODOT_set_point_penalty;
	void set_point_penalty(in int idx, in float penalty)
	{
		_GODOT_set_point_penalty.bind("PolygonPathFinder", "set_point_penalty");
		ptrcall!(void)(_GODOT_set_point_penalty, _godot_object, idx, penalty);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_point_penalty;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_penalty") = _GODOT_get_point_penalty;
	float get_point_penalty(in int idx) const
	{
		_GODOT_get_point_penalty.bind("PolygonPathFinder", "get_point_penalty");
		return ptrcall!(float)(_GODOT_get_point_penalty, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounds") = _GODOT_get_bounds;
	Rect2 get_bounds() const
	{
		_GODOT_get_bounds.bind("PolygonPathFinder", "get_bounds");
		return ptrcall!(Rect2)(_GODOT_get_bounds, _godot_object);
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
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Dictionary _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
}
