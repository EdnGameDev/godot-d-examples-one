module godot.raycast2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct RayCast2D
{
	static immutable string _GODOT_internal_name = "RayCast2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RayCast2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RayCast2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RayCast2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RayCast2D");
		if(constructor is null) return typeof(this).init;
		return cast(RayCast2D)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled") = _GODOT_set_enabled;
	void set_enabled(in bool enabled)
	{
		_GODOT_set_enabled.bind("RayCast2D", "set_enabled");
		ptrcall!(void)(_GODOT_set_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabled") = _GODOT_is_enabled;
	bool is_enabled() const
	{
		_GODOT_is_enabled.bind("RayCast2D", "is_enabled");
		return ptrcall!(bool)(_GODOT_is_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_cast_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cast_to") = _GODOT_set_cast_to;
	void set_cast_to(in Vector2 local_point)
	{
		_GODOT_set_cast_to.bind("RayCast2D", "set_cast_to");
		ptrcall!(void)(_GODOT_set_cast_to, _godot_object, local_point);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_cast_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cast_to") = _GODOT_get_cast_to;
	Vector2 get_cast_to() const
	{
		_GODOT_get_cast_to.bind("RayCast2D", "get_cast_to");
		return ptrcall!(Vector2)(_GODOT_get_cast_to, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_colliding;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_colliding") = _GODOT_is_colliding;
	bool is_colliding() const
	{
		_GODOT_is_colliding.bind("RayCast2D", "is_colliding");
		return ptrcall!(bool)(_GODOT_is_colliding, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_force_raycast_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_raycast_update") = _GODOT_force_raycast_update;
	void force_raycast_update()
	{
		_GODOT_force_raycast_update.bind("RayCast2D", "force_raycast_update");
		ptrcall!(void)(_GODOT_force_raycast_update, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider") = _GODOT_get_collider;
	GodotObject get_collider() const
	{
		_GODOT_get_collider.bind("RayCast2D", "get_collider");
		return ptrcall!(GodotObject)(_GODOT_get_collider, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape") = _GODOT_get_collider_shape;
	int get_collider_shape() const
	{
		_GODOT_get_collider_shape.bind("RayCast2D", "get_collider_shape");
		return ptrcall!(int)(_GODOT_get_collider_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collision_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_point") = _GODOT_get_collision_point;
	Vector2 get_collision_point() const
	{
		_GODOT_get_collision_point.bind("RayCast2D", "get_collision_point");
		return ptrcall!(Vector2)(_GODOT_get_collision_point, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collision_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_normal") = _GODOT_get_collision_normal;
	Vector2 get_collision_normal() const
	{
		_GODOT_get_collision_normal.bind("RayCast2D", "get_collision_normal");
		return ptrcall!(Vector2)(_GODOT_get_collision_normal, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_add_exception_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_exception_rid") = _GODOT_add_exception_rid;
	void add_exception_rid(in RID rid)
	{
		_GODOT_add_exception_rid.bind("RayCast2D", "add_exception_rid");
		ptrcall!(void)(_GODOT_add_exception_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_exception") = _GODOT_add_exception;
	void add_exception(in GodotObject node)
	{
		_GODOT_add_exception.bind("RayCast2D", "add_exception");
		ptrcall!(void)(_GODOT_add_exception, _godot_object, node);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_remove_exception_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_exception_rid") = _GODOT_remove_exception_rid;
	void remove_exception_rid(in RID rid)
	{
		_GODOT_remove_exception_rid.bind("RayCast2D", "remove_exception_rid");
		ptrcall!(void)(_GODOT_remove_exception_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_exception") = _GODOT_remove_exception;
	void remove_exception(in GodotObject node)
	{
		_GODOT_remove_exception.bind("RayCast2D", "remove_exception");
		ptrcall!(void)(_GODOT_remove_exception, _godot_object, node);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_exceptions;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_exceptions") = _GODOT_clear_exceptions;
	void clear_exceptions()
	{
		_GODOT_clear_exceptions.bind("RayCast2D", "clear_exceptions");
		ptrcall!(void)(_GODOT_clear_exceptions, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	void set_collision_layer(in int layer)
	{
		_GODOT_set_collision_layer.bind("RayCast2D", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	int get_collision_layer() const
	{
		_GODOT_get_collision_layer.bind("RayCast2D", "get_collision_layer");
		return ptrcall!(int)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_type_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_type_mask") = _GODOT_set_type_mask;
	void set_type_mask(in int mask)
	{
		_GODOT_set_type_mask.bind("RayCast2D", "set_type_mask");
		ptrcall!(void)(_GODOT_set_type_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_type_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_type_mask") = _GODOT_get_type_mask;
	int get_type_mask() const
	{
		_GODOT_get_type_mask.bind("RayCast2D", "get_type_mask");
		return ptrcall!(int)(_GODOT_get_type_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclude_parent_body;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude_parent_body") = _GODOT_set_exclude_parent_body;
	void set_exclude_parent_body(in bool mask)
	{
		_GODOT_set_exclude_parent_body.bind("RayCast2D", "set_exclude_parent_body");
		ptrcall!(void)(_GODOT_set_exclude_parent_body, _godot_object, mask);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_exclude_parent_body;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude_parent_body") = _GODOT_get_exclude_parent_body;
	bool get_exclude_parent_body() const
	{
		_GODOT_get_exclude_parent_body.bind("RayCast2D", "get_exclude_parent_body");
		return ptrcall!(bool)(_GODOT_get_exclude_parent_body, _godot_object);
	}
}
