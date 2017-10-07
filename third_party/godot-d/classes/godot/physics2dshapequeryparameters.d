module godot.physics2dshapequeryparameters;
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
@GodotBaseClass struct Physics2DShapeQueryParameters
{
	static immutable string _GODOT_internal_name = "Physics2DShapeQueryParameters";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DShapeQueryParameters other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DShapeQueryParameters opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DShapeQueryParameters _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DShapeQueryParameters");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DShapeQueryParameters)(constructor());
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	void set_shape(in Resource shape)
	{
		_GODOT_set_shape.bind("Physics2DShapeQueryParameters", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_set_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_rid") = _GODOT_set_shape_rid;
	void set_shape_rid(in RID shape)
	{
		_GODOT_set_shape_rid.bind("Physics2DShapeQueryParameters", "set_shape_rid");
		ptrcall!(void)(_GODOT_set_shape_rid, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_rid") = _GODOT_get_shape_rid;
	RID get_shape_rid() const
	{
		_GODOT_get_shape_rid.bind("Physics2DShapeQueryParameters", "get_shape_rid");
		return ptrcall!(RID)(_GODOT_get_shape_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	void set_transform(in Transform2D transform)
	{
		_GODOT_set_transform.bind("Physics2DShapeQueryParameters", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform2D get_transform() const
	{
		_GODOT_get_transform.bind("Physics2DShapeQueryParameters", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_motion") = _GODOT_set_motion;
	void set_motion(in Vector2 motion)
	{
		_GODOT_set_motion.bind("Physics2DShapeQueryParameters", "set_motion");
		ptrcall!(void)(_GODOT_set_motion, _godot_object, motion);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_motion") = _GODOT_get_motion;
	Vector2 get_motion() const
	{
		_GODOT_get_motion.bind("Physics2DShapeQueryParameters", "get_motion");
		return ptrcall!(Vector2)(_GODOT_get_motion, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	void set_margin(in float margin)
	{
		_GODOT_set_margin.bind("Physics2DShapeQueryParameters", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	float get_margin() const
	{
		_GODOT_get_margin.bind("Physics2DShapeQueryParameters", "get_margin");
		return ptrcall!(float)(_GODOT_get_margin, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	void set_collision_layer(in int collision_layer)
	{
		_GODOT_set_collision_layer.bind("Physics2DShapeQueryParameters", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, collision_layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	int get_collision_layer() const
	{
		_GODOT_get_collision_layer.bind("Physics2DShapeQueryParameters", "get_collision_layer");
		return ptrcall!(int)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_object_type_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_object_type_mask") = _GODOT_set_object_type_mask;
	void set_object_type_mask(in int object_type_mask)
	{
		_GODOT_set_object_type_mask.bind("Physics2DShapeQueryParameters", "set_object_type_mask");
		ptrcall!(void)(_GODOT_set_object_type_mask, _godot_object, object_type_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_object_type_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_object_type_mask") = _GODOT_get_object_type_mask;
	int get_object_type_mask() const
	{
		_GODOT_get_object_type_mask.bind("Physics2DShapeQueryParameters", "get_object_type_mask");
		return ptrcall!(int)(_GODOT_get_object_type_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT_set_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude") = _GODOT_set_exclude;
	void set_exclude(in Array exclude)
	{
		_GODOT_set_exclude.bind("Physics2DShapeQueryParameters", "set_exclude");
		ptrcall!(void)(_GODOT_set_exclude, _godot_object, exclude);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude") = _GODOT_get_exclude;
	Array get_exclude() const
	{
		_GODOT_get_exclude.bind("Physics2DShapeQueryParameters", "get_exclude");
		return ptrcall!(Array)(_GODOT_get_exclude, _godot_object);
	}
}
