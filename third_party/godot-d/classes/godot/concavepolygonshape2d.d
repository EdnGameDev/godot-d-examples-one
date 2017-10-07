module godot.concavepolygonshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape2d;
@GodotBaseClass struct ConcavePolygonShape2D
{
	static immutable string _GODOT_internal_name = "ConcavePolygonShape2D";
public:
	union { godot_object _godot_object; Shape2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConcavePolygonShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConcavePolygonShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConcavePolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConcavePolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConcavePolygonShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_segments") = _GODOT_set_segments;
	void set_segments(in PoolVector2Array segments)
	{
		_GODOT_set_segments.bind("ConcavePolygonShape2D", "set_segments");
		ptrcall!(void)(_GODOT_set_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_segments") = _GODOT_get_segments;
	PoolVector2Array get_segments() const
	{
		_GODOT_get_segments.bind("ConcavePolygonShape2D", "get_segments");
		return ptrcall!(PoolVector2Array)(_GODOT_get_segments, _godot_object);
	}
}
