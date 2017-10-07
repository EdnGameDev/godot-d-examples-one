module godot.collisionpolygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct CollisionPolygon2D
{
	static immutable string _GODOT_internal_name = "CollisionPolygon2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CollisionPolygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionPolygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionPolygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CollisionPolygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionPolygon2D)(constructor());
	}
	enum BuildMode : int
	{
		BUILD_SOLIDS = 0,
		BUILD_SEGMENTS = 1,
	}
	enum int BUILD_SOLIDS = 0;
	enum int BUILD_SEGMENTS = 1;
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	void set_polygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("CollisionPolygon2D", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	PoolVector2Array get_polygon() const
	{
		_GODOT_get_polygon.bind("CollisionPolygon2D", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_build_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_build_mode") = _GODOT_set_build_mode;
	void set_build_mode(in int build_mode)
	{
		_GODOT_set_build_mode.bind("CollisionPolygon2D", "set_build_mode");
		ptrcall!(void)(_GODOT_set_build_mode, _godot_object, build_mode);
	}
	package(godot) static GodotMethod!(CollisionPolygon2D.BuildMode) _GODOT_get_build_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_build_mode") = _GODOT_get_build_mode;
	CollisionPolygon2D.BuildMode get_build_mode() const
	{
		_GODOT_get_build_mode.bind("CollisionPolygon2D", "get_build_mode");
		return ptrcall!(CollisionPolygon2D.BuildMode)(_GODOT_get_build_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	void set_disabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("CollisionPolygon2D", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	bool is_disabled() const
	{
		_GODOT_is_disabled.bind("CollisionPolygon2D", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_way_collision") = _GODOT_set_one_way_collision;
	void set_one_way_collision(in bool enabled)
	{
		_GODOT_set_one_way_collision.bind("CollisionPolygon2D", "set_one_way_collision");
		ptrcall!(void)(_GODOT_set_one_way_collision, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_one_way_collision_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_one_way_collision_enabled") = _GODOT_is_one_way_collision_enabled;
	bool is_one_way_collision_enabled() const
	{
		_GODOT_is_one_way_collision_enabled.bind("CollisionPolygon2D", "is_one_way_collision_enabled");
		return ptrcall!(bool)(_GODOT_is_one_way_collision_enabled, _godot_object);
	}
}
