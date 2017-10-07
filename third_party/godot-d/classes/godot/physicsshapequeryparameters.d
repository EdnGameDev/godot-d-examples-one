module godot.physicsshapequeryparameters;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.resource;
@GodotBaseClass struct PhysicsShapeQueryParameters
{
	static immutable string _GODOT_internal_name = "PhysicsShapeQueryParameters";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PhysicsShapeQueryParameters other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsShapeQueryParameters opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsShapeQueryParameters _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsShapeQueryParameters");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsShapeQueryParameters)(constructor());
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	void set_shape(in Resource shape)
	{
		_GODOT_set_shape.bind("PhysicsShapeQueryParameters", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_set_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_rid") = _GODOT_set_shape_rid;
	void set_shape_rid(in RID shape)
	{
		_GODOT_set_shape_rid.bind("PhysicsShapeQueryParameters", "set_shape_rid");
		ptrcall!(void)(_GODOT_set_shape_rid, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_rid") = _GODOT_get_shape_rid;
	RID get_shape_rid() const
	{
		_GODOT_get_shape_rid.bind("PhysicsShapeQueryParameters", "get_shape_rid");
		return ptrcall!(RID)(_GODOT_get_shape_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	void set_transform(in Transform transform)
	{
		_GODOT_set_transform.bind("PhysicsShapeQueryParameters", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform get_transform() const
	{
		_GODOT_get_transform.bind("PhysicsShapeQueryParameters", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	void set_margin(in float margin)
	{
		_GODOT_set_margin.bind("PhysicsShapeQueryParameters", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	float get_margin() const
	{
		_GODOT_get_margin.bind("PhysicsShapeQueryParameters", "get_margin");
		return ptrcall!(float)(_GODOT_get_margin, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	void set_collision_layer(in int collision_layer)
	{
		_GODOT_set_collision_layer.bind("PhysicsShapeQueryParameters", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, collision_layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	int get_collision_layer() const
	{
		_GODOT_get_collision_layer.bind("PhysicsShapeQueryParameters", "get_collision_layer");
		return ptrcall!(int)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_object_type_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_object_type_mask") = _GODOT_set_object_type_mask;
	void set_object_type_mask(in int object_type_mask)
	{
		_GODOT_set_object_type_mask.bind("PhysicsShapeQueryParameters", "set_object_type_mask");
		ptrcall!(void)(_GODOT_set_object_type_mask, _godot_object, object_type_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_object_type_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_object_type_mask") = _GODOT_get_object_type_mask;
	int get_object_type_mask() const
	{
		_GODOT_get_object_type_mask.bind("PhysicsShapeQueryParameters", "get_object_type_mask");
		return ptrcall!(int)(_GODOT_get_object_type_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT_set_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude") = _GODOT_set_exclude;
	void set_exclude(in Array exclude)
	{
		_GODOT_set_exclude.bind("PhysicsShapeQueryParameters", "set_exclude");
		ptrcall!(void)(_GODOT_set_exclude, _godot_object, exclude);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude") = _GODOT_get_exclude;
	Array get_exclude() const
	{
		_GODOT_get_exclude.bind("PhysicsShapeQueryParameters", "get_exclude");
		return ptrcall!(Array)(_GODOT_get_exclude, _godot_object);
	}
}
