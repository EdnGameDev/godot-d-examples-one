module godot.convexpolygonshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape2d;
@GodotBaseClass struct ConvexPolygonShape2D
{
	static immutable string _GODOT_internal_name = "ConvexPolygonShape2D";
public:
	union { godot_object _godot_object; Shape2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConvexPolygonShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConvexPolygonShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConvexPolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConvexPolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConvexPolygonShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_point_cloud;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_cloud") = _GODOT_set_point_cloud;
	void set_point_cloud(in PoolVector2Array point_cloud)
	{
		_GODOT_set_point_cloud.bind("ConvexPolygonShape2D", "set_point_cloud");
		ptrcall!(void)(_GODOT_set_point_cloud, _godot_object, point_cloud);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_points") = _GODOT_set_points;
	void set_points(in PoolVector2Array points)
	{
		_GODOT_set_points.bind("ConvexPolygonShape2D", "set_points");
		ptrcall!(void)(_GODOT_set_points, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	PoolVector2Array get_points() const
	{
		_GODOT_get_points.bind("ConvexPolygonShape2D", "get_points");
		return ptrcall!(PoolVector2Array)(_GODOT_get_points, _godot_object);
	}
}
