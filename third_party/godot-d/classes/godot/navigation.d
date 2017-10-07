module godot.navigation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.navigationmesh;
@GodotBaseClass struct Navigation
{
	static immutable string _GODOT_internal_name = "Navigation";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Navigation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Navigation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Navigation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Navigation");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation)(constructor());
	}
	package(godot) static GodotMethod!(int, NavigationMesh, Transform, GodotObject) _GODOT_navmesh_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_create") = _GODOT_navmesh_create;
	int navmesh_create(in NavigationMesh mesh, in Transform xform, in GodotObject owner = GodotObject.init)
	{
		_GODOT_navmesh_create.bind("Navigation", "navmesh_create");
		return ptrcall!(int)(_GODOT_navmesh_create, _godot_object, mesh, xform, owner);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_navmesh_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_set_transform") = _GODOT_navmesh_set_transform;
	void navmesh_set_transform(in int id, in Transform xform)
	{
		_GODOT_navmesh_set_transform.bind("Navigation", "navmesh_set_transform");
		ptrcall!(void)(_GODOT_navmesh_set_transform, _godot_object, id, xform);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_navmesh_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_remove") = _GODOT_navmesh_remove;
	void navmesh_remove(in int id)
	{
		_GODOT_navmesh_remove.bind("Navigation", "navmesh_remove");
		ptrcall!(void)(_GODOT_navmesh_remove, _godot_object, id);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, bool) _GODOT_get_simple_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_simple_path") = _GODOT_get_simple_path;
	PoolVector3Array get_simple_path(in Vector3 start, in Vector3 end, in bool optimize = true)
	{
		_GODOT_get_simple_path.bind("Navigation", "get_simple_path");
		return ptrcall!(PoolVector3Array)(_GODOT_get_simple_path, _godot_object, start, end, optimize);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, bool) _GODOT_get_closest_point_to_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment") = _GODOT_get_closest_point_to_segment;
	Vector3 get_closest_point_to_segment(in Vector3 start, in Vector3 end, in bool use_collision = false)
	{
		_GODOT_get_closest_point_to_segment.bind("Navigation", "get_closest_point_to_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment, _godot_object, start, end, use_collision);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	Vector3 get_closest_point(in Vector3 to_point)
	{
		_GODOT_get_closest_point.bind("Navigation", "get_closest_point");
		return ptrcall!(Vector3)(_GODOT_get_closest_point, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_point_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_normal") = _GODOT_get_closest_point_normal;
	Vector3 get_closest_point_normal(in Vector3 to_point)
	{
		_GODOT_get_closest_point_normal.bind("Navigation", "get_closest_point_normal");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_normal, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(GodotObject, Vector3) _GODOT_get_closest_point_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_owner") = _GODOT_get_closest_point_owner;
	GodotObject get_closest_point_owner(in Vector3 to_point)
	{
		_GODOT_get_closest_point_owner.bind("Navigation", "get_closest_point_owner");
		return ptrcall!(GodotObject)(_GODOT_get_closest_point_owner, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_up_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_up_vector") = _GODOT_set_up_vector;
	void set_up_vector(in Vector3 up)
	{
		_GODOT_set_up_vector.bind("Navigation", "set_up_vector");
		ptrcall!(void)(_GODOT_set_up_vector, _godot_object, up);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_up_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_up_vector") = _GODOT_get_up_vector;
	Vector3 get_up_vector() const
	{
		_GODOT_get_up_vector.bind("Navigation", "get_up_vector");
		return ptrcall!(Vector3)(_GODOT_get_up_vector, _godot_object);
	}
}
