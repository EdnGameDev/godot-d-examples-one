module godot.collisionobject;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.spatial;
import godot.inputevent;
import godot.shape;
@GodotBaseClass struct CollisionObject
{
	static immutable string _GODOT_internal_name = "CollisionObject";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CollisionObject other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionObject opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionObject _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CollisionObject");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionObject)(constructor());
	}
	package(godot) static GodotMethod!(void, GodotObject, InputEvent, Vector3, Vector3, int) _GODOT__input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_event") = _GODOT__input_event;
	void _input_event(in GodotObject camera, in InputEvent event, in Vector3 click_position, in Vector3 click_normal, in int shape_idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		_GODOT_args.append(click_position);
		_GODOT_args.append(click_normal);
		_GODOT_args.append(shape_idx);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ray_pickable") = _GODOT_set_ray_pickable;
	void set_ray_pickable(in bool ray_pickable)
	{
		_GODOT_set_ray_pickable.bind("CollisionObject", "set_ray_pickable");
		ptrcall!(void)(_GODOT_set_ray_pickable, _godot_object, ray_pickable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ray_pickable") = _GODOT_is_ray_pickable;
	bool is_ray_pickable() const
	{
		_GODOT_is_ray_pickable.bind("CollisionObject", "is_ray_pickable");
		return ptrcall!(bool)(_GODOT_is_ray_pickable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_capture_input_on_drag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_capture_input_on_drag") = _GODOT_set_capture_input_on_drag;
	void set_capture_input_on_drag(in bool enable)
	{
		_GODOT_set_capture_input_on_drag.bind("CollisionObject", "set_capture_input_on_drag");
		ptrcall!(void)(_GODOT_set_capture_input_on_drag, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_capture_input_on_drag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_capture_input_on_drag") = _GODOT_get_capture_input_on_drag;
	bool get_capture_input_on_drag() const
	{
		_GODOT_get_capture_input_on_drag.bind("CollisionObject", "get_capture_input_on_drag");
		return ptrcall!(bool)(_GODOT_get_capture_input_on_drag, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rid") = _GODOT_get_rid;
	RID get_rid() const
	{
		_GODOT_get_rid.bind("CollisionObject", "get_rid");
		return ptrcall!(RID)(_GODOT_get_rid, _godot_object);
	}
	package(godot) static GodotMethod!(int, GodotObject) _GODOT_create_shape_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_shape_owner") = _GODOT_create_shape_owner;
	int create_shape_owner(in GodotObject owner)
	{
		_GODOT_create_shape_owner.bind("CollisionObject", "create_shape_owner");
		return ptrcall!(int)(_GODOT_create_shape_owner, _godot_object, owner);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_shape_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_shape_owner") = _GODOT_remove_shape_owner;
	void remove_shape_owner(in int owner_id)
	{
		_GODOT_remove_shape_owner.bind("CollisionObject", "remove_shape_owner");
		ptrcall!(void)(_GODOT_remove_shape_owner, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_shape_owners;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_owners") = _GODOT_get_shape_owners;
	Array get_shape_owners()
	{
		_GODOT_get_shape_owners.bind("CollisionObject", "get_shape_owners");
		return ptrcall!(Array)(_GODOT_get_shape_owners, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_shape_owner_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_transform") = _GODOT_shape_owner_set_transform;
	void shape_owner_set_transform(in int owner_id, in Transform transform)
	{
		_GODOT_shape_owner_set_transform.bind("CollisionObject", "shape_owner_set_transform");
		ptrcall!(void)(_GODOT_shape_owner_set_transform, _godot_object, owner_id, transform);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_shape_owner_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_transform") = _GODOT_shape_owner_get_transform;
	Transform shape_owner_get_transform(in int owner_id) const
	{
		_GODOT_shape_owner_get_transform.bind("CollisionObject", "shape_owner_get_transform");
		return ptrcall!(Transform)(_GODOT_shape_owner_get_transform, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(GodotObject, int) _GODOT_shape_owner_get_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_owner") = _GODOT_shape_owner_get_owner;
	GodotObject shape_owner_get_owner(in int owner_id) const
	{
		_GODOT_shape_owner_get_owner.bind("CollisionObject", "shape_owner_get_owner");
		return ptrcall!(GodotObject)(_GODOT_shape_owner_get_owner, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_shape_owner_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_disabled") = _GODOT_shape_owner_set_disabled;
	void shape_owner_set_disabled(in int owner_id, in bool disabled)
	{
		_GODOT_shape_owner_set_disabled.bind("CollisionObject", "shape_owner_set_disabled");
		ptrcall!(void)(_GODOT_shape_owner_set_disabled, _godot_object, owner_id, disabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_shape_owner_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_owner_disabled") = _GODOT_is_shape_owner_disabled;
	bool is_shape_owner_disabled(in int owner_id) const
	{
		_GODOT_is_shape_owner_disabled.bind("CollisionObject", "is_shape_owner_disabled");
		return ptrcall!(bool)(_GODOT_is_shape_owner_disabled, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, int, Shape) _GODOT_shape_owner_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_add_shape") = _GODOT_shape_owner_add_shape;
	void shape_owner_add_shape(in int owner_id, in Shape shape)
	{
		_GODOT_shape_owner_add_shape.bind("CollisionObject", "shape_owner_add_shape");
		ptrcall!(void)(_GODOT_shape_owner_add_shape, _godot_object, owner_id, shape);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_shape_owner_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape_count") = _GODOT_shape_owner_get_shape_count;
	int shape_owner_get_shape_count(in int owner_id) const
	{
		_GODOT_shape_owner_get_shape_count.bind("CollisionObject", "shape_owner_get_shape_count");
		return ptrcall!(int)(_GODOT_shape_owner_get_shape_count, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(Shape, int, int) _GODOT_shape_owner_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape") = _GODOT_shape_owner_get_shape;
	Shape shape_owner_get_shape(in int owner_id, in int shape_id) const
	{
		_GODOT_shape_owner_get_shape.bind("CollisionObject", "shape_owner_get_shape");
		return ptrcall!(Shape)(_GODOT_shape_owner_get_shape, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(int, int, int) _GODOT_shape_owner_get_shape_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape_index") = _GODOT_shape_owner_get_shape_index;
	int shape_owner_get_shape_index(in int owner_id, in int shape_id) const
	{
		_GODOT_shape_owner_get_shape_index.bind("CollisionObject", "shape_owner_get_shape_index");
		return ptrcall!(int)(_GODOT_shape_owner_get_shape_index, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_shape_owner_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_remove_shape") = _GODOT_shape_owner_remove_shape;
	void shape_owner_remove_shape(in int owner_id, in int shape_id)
	{
		_GODOT_shape_owner_remove_shape.bind("CollisionObject", "shape_owner_remove_shape");
		ptrcall!(void)(_GODOT_shape_owner_remove_shape, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_shape_owner_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_clear_shapes") = _GODOT_shape_owner_clear_shapes;
	void shape_owner_clear_shapes(in int owner_id)
	{
		_GODOT_shape_owner_clear_shapes.bind("CollisionObject", "shape_owner_clear_shapes");
		ptrcall!(void)(_GODOT_shape_owner_clear_shapes, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_shape_find_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_find_owner") = _GODOT_shape_find_owner;
	int shape_find_owner(in int shape_index) const
	{
		_GODOT_shape_find_owner.bind("CollisionObject", "shape_find_owner");
		return ptrcall!(int)(_GODOT_shape_find_owner, _godot_object, shape_index);
	}
}
