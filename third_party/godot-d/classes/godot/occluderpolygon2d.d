module godot.occluderpolygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct OccluderPolygon2D
{
	static immutable string _GODOT_internal_name = "OccluderPolygon2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in OccluderPolygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OccluderPolygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OccluderPolygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("OccluderPolygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(OccluderPolygon2D)(constructor());
	}
	enum CullMode : int
	{
		CULL_COUNTER_CLOCKWISE = 2,
		CULL_DISABLED = 0,
		CULL_CLOCKWISE = 1,
	}
	enum int CULL_COUNTER_CLOCKWISE = 2;
	enum int CULL_DISABLED = 0;
	enum int CULL_CLOCKWISE = 1;
	package(godot) static GodotMethod!(void, bool) _GODOT_set_closed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_closed") = _GODOT_set_closed;
	void set_closed(in bool closed)
	{
		_GODOT_set_closed.bind("OccluderPolygon2D", "set_closed");
		ptrcall!(void)(_GODOT_set_closed, _godot_object, closed);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_closed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_closed") = _GODOT_is_closed;
	bool is_closed() const
	{
		_GODOT_is_closed.bind("OccluderPolygon2D", "is_closed");
		return ptrcall!(bool)(_GODOT_is_closed, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mode") = _GODOT_set_cull_mode;
	void set_cull_mode(in int cull_mode)
	{
		_GODOT_set_cull_mode.bind("OccluderPolygon2D", "set_cull_mode");
		ptrcall!(void)(_GODOT_set_cull_mode, _godot_object, cull_mode);
	}
	package(godot) static GodotMethod!(OccluderPolygon2D.CullMode) _GODOT_get_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mode") = _GODOT_get_cull_mode;
	OccluderPolygon2D.CullMode get_cull_mode() const
	{
		_GODOT_get_cull_mode.bind("OccluderPolygon2D", "get_cull_mode");
		return ptrcall!(OccluderPolygon2D.CullMode)(_GODOT_get_cull_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	void set_polygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("OccluderPolygon2D", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	PoolVector2Array get_polygon() const
	{
		_GODOT_get_polygon.bind("OccluderPolygon2D", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
}
