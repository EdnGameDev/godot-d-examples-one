module godot.collisionpolygon;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct CollisionPolygon
{
	static immutable string _GODOT_internal_name = "CollisionPolygon";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CollisionPolygon other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionPolygon opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CollisionPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionPolygon)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth") = _GODOT_set_depth;
	void set_depth(in float depth)
	{
		_GODOT_set_depth.bind("CollisionPolygon", "set_depth");
		ptrcall!(void)(_GODOT_set_depth, _godot_object, depth);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth") = _GODOT_get_depth;
	float get_depth() const
	{
		_GODOT_get_depth.bind("CollisionPolygon", "get_depth");
		return ptrcall!(float)(_GODOT_get_depth, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	void set_polygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("CollisionPolygon", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	PoolVector2Array get_polygon() const
	{
		_GODOT_get_polygon.bind("CollisionPolygon", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	void set_disabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("CollisionPolygon", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	bool is_disabled() const
	{
		_GODOT_is_disabled.bind("CollisionPolygon", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
}
