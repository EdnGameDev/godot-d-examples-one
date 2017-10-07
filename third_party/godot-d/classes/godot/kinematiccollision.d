module godot.kinematiccollision;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct KinematicCollision
{
	static immutable string _GODOT_internal_name = "KinematicCollision";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in KinematicCollision other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicCollision opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicCollision _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("KinematicCollision");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicCollision)(constructor());
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector3 get_position() const
	{
		_GODOT_get_position.bind("KinematicCollision", "get_position");
		return ptrcall!(Vector3)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal") = _GODOT_get_normal;
	Vector3 get_normal() const
	{
		_GODOT_get_normal.bind("KinematicCollision", "get_normal");
		return ptrcall!(Vector3)(_GODOT_get_normal, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_travel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_travel") = _GODOT_get_travel;
	Vector3 get_travel() const
	{
		_GODOT_get_travel.bind("KinematicCollision", "get_travel");
		return ptrcall!(Vector3)(_GODOT_get_travel, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_remainder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_remainder") = _GODOT_get_remainder;
	Vector3 get_remainder() const
	{
		_GODOT_get_remainder.bind("KinematicCollision", "get_remainder");
		return ptrcall!(Vector3)(_GODOT_get_remainder, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_local_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_shape") = _GODOT_get_local_shape;
	GodotObject get_local_shape() const
	{
		_GODOT_get_local_shape.bind("KinematicCollision", "get_local_shape");
		return ptrcall!(GodotObject)(_GODOT_get_local_shape, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider") = _GODOT_get_collider;
	GodotObject get_collider() const
	{
		_GODOT_get_collider.bind("KinematicCollision", "get_collider");
		return ptrcall!(GodotObject)(_GODOT_get_collider, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collider_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_id") = _GODOT_get_collider_id;
	int get_collider_id() const
	{
		_GODOT_get_collider_id.bind("KinematicCollision", "get_collider_id");
		return ptrcall!(int)(_GODOT_get_collider_id, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape") = _GODOT_get_collider_shape;
	GodotObject get_collider_shape() const
	{
		_GODOT_get_collider_shape.bind("KinematicCollision", "get_collider_shape");
		return ptrcall!(GodotObject)(_GODOT_get_collider_shape, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collider_shape_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape_index") = _GODOT_get_collider_shape_index;
	int get_collider_shape_index() const
	{
		_GODOT_get_collider_shape_index.bind("KinematicCollision", "get_collider_shape_index");
		return ptrcall!(int)(_GODOT_get_collider_shape_index, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_collider_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_velocity") = _GODOT_get_collider_velocity;
	Vector3 get_collider_velocity() const
	{
		_GODOT_get_collider_velocity.bind("KinematicCollision", "get_collider_velocity");
		return ptrcall!(Vector3)(_GODOT_get_collider_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_collider_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_metadata") = _GODOT_get_collider_metadata;
	Variant get_collider_metadata() const
	{
		_GODOT_get_collider_metadata.bind("KinematicCollision", "get_collider_metadata");
		return ptrcall!(Variant)(_GODOT_get_collider_metadata, _godot_object);
	}
}
