module godot.skeleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct Skeleton
{
	static immutable string _GODOT_internal_name = "Skeleton";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Skeleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Skeleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Skeleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Skeleton");
		if(constructor is null) return typeof(this).init;
		return cast(Skeleton)(constructor());
	}
	enum int NOTIFICATION_UPDATE_SKELETON = 50;
	package(godot) static GodotMethod!(void, String) _GODOT_add_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bone") = _GODOT_add_bone;
	void add_bone(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_bone.bind("Skeleton", "add_bone");
		ptrcall!(void)(_GODOT_add_bone, _godot_object, name);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_find_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_bone") = _GODOT_find_bone;
	int find_bone(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_bone.bind("Skeleton", "find_bone");
		return ptrcall!(int)(_GODOT_find_bone, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_bone_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_name") = _GODOT_get_bone_name;
	String get_bone_name(in int bone_idx) const
	{
		_GODOT_get_bone_name.bind("Skeleton", "get_bone_name");
		return ptrcall!(String)(_GODOT_get_bone_name, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_bone_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_parent") = _GODOT_get_bone_parent;
	int get_bone_parent(in int bone_idx) const
	{
		_GODOT_get_bone_parent.bind("Skeleton", "get_bone_parent");
		return ptrcall!(int)(_GODOT_get_bone_parent, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_bone_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_parent") = _GODOT_set_bone_parent;
	void set_bone_parent(in int bone_idx, in int parent_idx)
	{
		_GODOT_set_bone_parent.bind("Skeleton", "set_bone_parent");
		ptrcall!(void)(_GODOT_set_bone_parent, _godot_object, bone_idx, parent_idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_bone_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_count") = _GODOT_get_bone_count;
	int get_bone_count() const
	{
		_GODOT_get_bone_count.bind("Skeleton", "get_bone_count");
		return ptrcall!(int)(_GODOT_get_bone_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_unparent_bone_and_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "unparent_bone_and_rest") = _GODOT_unparent_bone_and_rest;
	void unparent_bone_and_rest(in int bone_idx)
	{
		_GODOT_unparent_bone_and_rest.bind("Skeleton", "unparent_bone_and_rest");
		ptrcall!(void)(_GODOT_unparent_bone_and_rest, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_get_bone_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_rest") = _GODOT_get_bone_rest;
	Transform get_bone_rest(in int bone_idx) const
	{
		_GODOT_get_bone_rest.bind("Skeleton", "get_bone_rest");
		return ptrcall!(Transform)(_GODOT_get_bone_rest, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_set_bone_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_rest") = _GODOT_set_bone_rest;
	void set_bone_rest(in int bone_idx, in Transform rest)
	{
		_GODOT_set_bone_rest.bind("Skeleton", "set_bone_rest");
		ptrcall!(void)(_GODOT_set_bone_rest, _godot_object, bone_idx, rest);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_bone_disable_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_disable_rest") = _GODOT_set_bone_disable_rest;
	void set_bone_disable_rest(in int bone_idx, in bool disable)
	{
		_GODOT_set_bone_disable_rest.bind("Skeleton", "set_bone_disable_rest");
		ptrcall!(void)(_GODOT_set_bone_disable_rest, _godot_object, bone_idx, disable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_bone_rest_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bone_rest_disabled") = _GODOT_is_bone_rest_disabled;
	bool is_bone_rest_disabled(in int bone_idx) const
	{
		_GODOT_is_bone_rest_disabled.bind("Skeleton", "is_bone_rest_disabled");
		return ptrcall!(bool)(_GODOT_is_bone_rest_disabled, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, int, GodotObject) _GODOT_bind_child_node_to_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "bind_child_node_to_bone") = _GODOT_bind_child_node_to_bone;
	void bind_child_node_to_bone(in int bone_idx, in GodotObject node)
	{
		_GODOT_bind_child_node_to_bone.bind("Skeleton", "bind_child_node_to_bone");
		ptrcall!(void)(_GODOT_bind_child_node_to_bone, _godot_object, bone_idx, node);
	}
	package(godot) static GodotMethod!(void, int, GodotObject) _GODOT_unbind_child_node_from_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "unbind_child_node_from_bone") = _GODOT_unbind_child_node_from_bone;
	void unbind_child_node_from_bone(in int bone_idx, in GodotObject node)
	{
		_GODOT_unbind_child_node_from_bone.bind("Skeleton", "unbind_child_node_from_bone");
		ptrcall!(void)(_GODOT_unbind_child_node_from_bone, _godot_object, bone_idx, node);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_bound_child_nodes_to_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bound_child_nodes_to_bone") = _GODOT_get_bound_child_nodes_to_bone;
	Array get_bound_child_nodes_to_bone(in int bone_idx) const
	{
		_GODOT_get_bound_child_nodes_to_bone.bind("Skeleton", "get_bound_child_nodes_to_bone");
		return ptrcall!(Array)(_GODOT_get_bound_child_nodes_to_bone, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_bones;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_bones") = _GODOT_clear_bones;
	void clear_bones()
	{
		_GODOT_clear_bones.bind("Skeleton", "clear_bones");
		ptrcall!(void)(_GODOT_clear_bones, _godot_object);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_get_bone_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_pose") = _GODOT_get_bone_pose;
	Transform get_bone_pose(in int bone_idx) const
	{
		_GODOT_get_bone_pose.bind("Skeleton", "get_bone_pose");
		return ptrcall!(Transform)(_GODOT_get_bone_pose, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_set_bone_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_pose") = _GODOT_set_bone_pose;
	void set_bone_pose(in int bone_idx, in Transform pose)
	{
		_GODOT_set_bone_pose.bind("Skeleton", "set_bone_pose");
		ptrcall!(void)(_GODOT_set_bone_pose, _godot_object, bone_idx, pose);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_set_bone_global_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_global_pose") = _GODOT_set_bone_global_pose;
	void set_bone_global_pose(in int bone_idx, in Transform pose)
	{
		_GODOT_set_bone_global_pose.bind("Skeleton", "set_bone_global_pose");
		ptrcall!(void)(_GODOT_set_bone_global_pose, _godot_object, bone_idx, pose);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_get_bone_global_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_global_pose") = _GODOT_get_bone_global_pose;
	Transform get_bone_global_pose(in int bone_idx) const
	{
		_GODOT_get_bone_global_pose.bind("Skeleton", "get_bone_global_pose");
		return ptrcall!(Transform)(_GODOT_get_bone_global_pose, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_get_bone_custom_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_custom_pose") = _GODOT_get_bone_custom_pose;
	Transform get_bone_custom_pose(in int bone_idx) const
	{
		_GODOT_get_bone_custom_pose.bind("Skeleton", "get_bone_custom_pose");
		return ptrcall!(Transform)(_GODOT_get_bone_custom_pose, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_set_bone_custom_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_custom_pose") = _GODOT_set_bone_custom_pose;
	void set_bone_custom_pose(in int bone_idx, in Transform custom_pose)
	{
		_GODOT_set_bone_custom_pose.bind("Skeleton", "set_bone_custom_pose");
		ptrcall!(void)(_GODOT_set_bone_custom_pose, _godot_object, bone_idx, custom_pose);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_get_bone_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_transform") = _GODOT_get_bone_transform;
	Transform get_bone_transform(in int bone_idx) const
	{
		_GODOT_get_bone_transform.bind("Skeleton", "get_bone_transform");
		return ptrcall!(Transform)(_GODOT_get_bone_transform, _godot_object, bone_idx);
	}
}
