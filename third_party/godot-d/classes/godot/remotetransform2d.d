module godot.remotetransform2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct RemoteTransform2D
{
	static immutable string _GODOT_internal_name = "RemoteTransform2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RemoteTransform2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RemoteTransform2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RemoteTransform2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RemoteTransform2D");
		if(constructor is null) return typeof(this).init;
		return cast(RemoteTransform2D)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_remote_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_remote_node") = _GODOT_set_remote_node;
	void set_remote_node(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_remote_node.bind("RemoteTransform2D", "set_remote_node");
		ptrcall!(void)(_GODOT_set_remote_node, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_remote_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_remote_node") = _GODOT_get_remote_node;
	NodePath get_remote_node() const
	{
		_GODOT_get_remote_node.bind("RemoteTransform2D", "get_remote_node");
		return ptrcall!(NodePath)(_GODOT_get_remote_node, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_global_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_global_coordinates") = _GODOT_set_use_global_coordinates;
	void set_use_global_coordinates(in bool use_global_coordinates)
	{
		_GODOT_set_use_global_coordinates.bind("RemoteTransform2D", "set_use_global_coordinates");
		ptrcall!(void)(_GODOT_set_use_global_coordinates, _godot_object, use_global_coordinates);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_global_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_global_coordinates") = _GODOT_get_use_global_coordinates;
	bool get_use_global_coordinates() const
	{
		_GODOT_get_use_global_coordinates.bind("RemoteTransform2D", "get_use_global_coordinates");
		return ptrcall!(bool)(_GODOT_get_use_global_coordinates, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_update_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_position") = _GODOT_set_update_position;
	void set_update_position(in bool update_remote_position)
	{
		_GODOT_set_update_position.bind("RemoteTransform2D", "set_update_position");
		ptrcall!(void)(_GODOT_set_update_position, _godot_object, update_remote_position);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_update_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_position") = _GODOT_get_update_position;
	bool get_update_position() const
	{
		_GODOT_get_update_position.bind("RemoteTransform2D", "get_update_position");
		return ptrcall!(bool)(_GODOT_get_update_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_update_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_rotation") = _GODOT_set_update_rotation;
	void set_update_rotation(in bool update_remote_rotation)
	{
		_GODOT_set_update_rotation.bind("RemoteTransform2D", "set_update_rotation");
		ptrcall!(void)(_GODOT_set_update_rotation, _godot_object, update_remote_rotation);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_update_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_rotation") = _GODOT_get_update_rotation;
	bool get_update_rotation() const
	{
		_GODOT_get_update_rotation.bind("RemoteTransform2D", "get_update_rotation");
		return ptrcall!(bool)(_GODOT_get_update_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_update_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_scale") = _GODOT_set_update_scale;
	void set_update_scale(in bool update_remote_scale)
	{
		_GODOT_set_update_scale.bind("RemoteTransform2D", "set_update_scale");
		ptrcall!(void)(_GODOT_set_update_scale, _godot_object, update_remote_scale);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_update_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_scale") = _GODOT_get_update_scale;
	bool get_update_scale() const
	{
		_GODOT_get_update_scale.bind("RemoteTransform2D", "get_update_scale");
		return ptrcall!(bool)(_GODOT_get_update_scale, _godot_object);
	}
}
