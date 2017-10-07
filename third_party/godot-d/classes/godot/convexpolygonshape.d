module godot.convexpolygonshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape;
@GodotBaseClass struct ConvexPolygonShape
{
	static immutable string _GODOT_internal_name = "ConvexPolygonShape";
public:
	union { godot_object _godot_object; Shape base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConvexPolygonShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConvexPolygonShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConvexPolygonShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConvexPolygonShape");
		if(constructor is null) return typeof(this).init;
		return cast(ConvexPolygonShape)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_set_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_points") = _GODOT_set_points;
	void set_points(in PoolVector3Array points)
	{
		_GODOT_set_points.bind("ConvexPolygonShape", "set_points");
		ptrcall!(void)(_GODOT_set_points, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	PoolVector3Array get_points() const
	{
		_GODOT_get_points.bind("ConvexPolygonShape", "get_points");
		return ptrcall!(PoolVector3Array)(_GODOT_get_points, _godot_object);
	}
}
