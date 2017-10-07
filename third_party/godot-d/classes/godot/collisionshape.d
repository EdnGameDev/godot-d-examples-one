module godot.collisionshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.resource;
import godot.shape;
@GodotBaseClass struct CollisionShape
{
	static immutable string _GODOT_internal_name = "CollisionShape";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CollisionShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CollisionShape");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape)(constructor());
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_resource_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "resource_changed") = _GODOT_resource_changed;
	void resource_changed(in Resource resource)
	{
		_GODOT_resource_changed.bind("CollisionShape", "resource_changed");
		ptrcall!(void)(_GODOT_resource_changed, _godot_object, resource);
	}
	package(godot) static GodotMethod!(void, Shape) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	void set_shape(in Shape shape)
	{
		_GODOT_set_shape.bind("CollisionShape", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Shape) _GODOT_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape") = _GODOT_get_shape;
	Shape get_shape() const
	{
		_GODOT_get_shape.bind("CollisionShape", "get_shape");
		return ptrcall!(Shape)(_GODOT_get_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	void set_disabled(in bool enable)
	{
		_GODOT_set_disabled.bind("CollisionShape", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	bool is_disabled() const
	{
		_GODOT_is_disabled.bind("CollisionShape", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_convex_from_brothers;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_convex_from_brothers") = _GODOT_make_convex_from_brothers;
	void make_convex_from_brothers()
	{
		_GODOT_make_convex_from_brothers.bind("CollisionShape", "make_convex_from_brothers");
		ptrcall!(void)(_GODOT_make_convex_from_brothers, _godot_object);
	}
}
