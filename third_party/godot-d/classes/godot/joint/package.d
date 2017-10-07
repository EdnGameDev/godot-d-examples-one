module godot.joint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.spatial;
@GodotBaseClass struct Joint
{
	static immutable string _GODOT_internal_name = "Joint";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Joint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Joint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Joint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Joint");
		if(constructor is null) return typeof(this).init;
		return cast(Joint)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_a") = _GODOT_set_node_a;
	void set_node_a(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_a.bind("Joint", "set_node_a");
		ptrcall!(void)(_GODOT_set_node_a, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_a") = _GODOT_get_node_a;
	NodePath get_node_a() const
	{
		_GODOT_get_node_a.bind("Joint", "get_node_a");
		return ptrcall!(NodePath)(_GODOT_get_node_a, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_b") = _GODOT_set_node_b;
	void set_node_b(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_b.bind("Joint", "set_node_b");
		ptrcall!(void)(_GODOT_set_node_b, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_b") = _GODOT_get_node_b;
	NodePath get_node_b() const
	{
		_GODOT_get_node_b.bind("Joint", "get_node_b");
		return ptrcall!(NodePath)(_GODOT_get_node_b, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_solver_priority") = _GODOT_set_solver_priority;
	void set_solver_priority(in int priority)
	{
		_GODOT_set_solver_priority.bind("Joint", "set_solver_priority");
		ptrcall!(void)(_GODOT_set_solver_priority, _godot_object, priority);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_solver_priority") = _GODOT_get_solver_priority;
	int get_solver_priority() const
	{
		_GODOT_get_solver_priority.bind("Joint", "get_solver_priority");
		return ptrcall!(int)(_GODOT_get_solver_priority, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude_nodes_from_collision") = _GODOT_set_exclude_nodes_from_collision;
	void set_exclude_nodes_from_collision(in bool enable)
	{
		_GODOT_set_exclude_nodes_from_collision.bind("Joint", "set_exclude_nodes_from_collision");
		ptrcall!(void)(_GODOT_set_exclude_nodes_from_collision, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude_nodes_from_collision") = _GODOT_get_exclude_nodes_from_collision;
	bool get_exclude_nodes_from_collision() const
	{
		_GODOT_get_exclude_nodes_from_collision.bind("Joint", "get_exclude_nodes_from_collision");
		return ptrcall!(bool)(_GODOT_get_exclude_nodes_from_collision, _godot_object);
	}
}
