module godot.collisionshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.shape2d;
@GodotBaseClass struct CollisionShape2D
{
	static immutable string _GODOT_internal_name = "CollisionShape2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CollisionShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CollisionShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Shape2D) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	void set_shape(in Shape2D shape)
	{
		_GODOT_set_shape.bind("CollisionShape2D", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Shape2D) _GODOT_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape") = _GODOT_get_shape;
	Shape2D get_shape() const
	{
		_GODOT_get_shape.bind("CollisionShape2D", "get_shape");
		return ptrcall!(Shape2D)(_GODOT_get_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	void set_disabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("CollisionShape2D", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	bool is_disabled() const
	{
		_GODOT_is_disabled.bind("CollisionShape2D", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_way_collision") = _GODOT_set_one_way_collision;
	void set_one_way_collision(in bool enabled)
	{
		_GODOT_set_one_way_collision.bind("CollisionShape2D", "set_one_way_collision");
		ptrcall!(void)(_GODOT_set_one_way_collision, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_one_way_collision_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_one_way_collision_enabled") = _GODOT_is_one_way_collision_enabled;
	bool is_one_way_collision_enabled() const
	{
		_GODOT_is_one_way_collision_enabled.bind("CollisionShape2D", "is_one_way_collision_enabled");
		return ptrcall!(bool)(_GODOT_is_one_way_collision_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__shape_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_shape_changed") = _GODOT__shape_changed;
	void _shape_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_shape_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
