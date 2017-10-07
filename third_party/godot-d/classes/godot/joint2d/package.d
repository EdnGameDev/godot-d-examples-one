module godot.joint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.node2d;
@GodotBaseClass struct Joint2D
{
	static immutable string _GODOT_internal_name = "Joint2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Joint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Joint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Joint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Joint2D");
		if(constructor is null) return typeof(this).init;
		return cast(Joint2D)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_a") = _GODOT_set_node_a;
	void set_node_a(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_a.bind("Joint2D", "set_node_a");
		ptrcall!(void)(_GODOT_set_node_a, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_a") = _GODOT_get_node_a;
	NodePath get_node_a() const
	{
		_GODOT_get_node_a.bind("Joint2D", "get_node_a");
		return ptrcall!(NodePath)(_GODOT_get_node_a, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_b") = _GODOT_set_node_b;
	void set_node_b(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_b.bind("Joint2D", "set_node_b");
		ptrcall!(void)(_GODOT_set_node_b, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_b") = _GODOT_get_node_b;
	NodePath get_node_b() const
	{
		_GODOT_get_node_b.bind("Joint2D", "get_node_b");
		return ptrcall!(NodePath)(_GODOT_get_node_b, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bias") = _GODOT_set_bias;
	void set_bias(in float bias)
	{
		_GODOT_set_bias.bind("Joint2D", "set_bias");
		ptrcall!(void)(_GODOT_set_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bias") = _GODOT_get_bias;
	float get_bias() const
	{
		_GODOT_get_bias.bind("Joint2D", "get_bias");
		return ptrcall!(float)(_GODOT_get_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude_nodes_from_collision") = _GODOT_set_exclude_nodes_from_collision;
	void set_exclude_nodes_from_collision(in bool enable)
	{
		_GODOT_set_exclude_nodes_from_collision.bind("Joint2D", "set_exclude_nodes_from_collision");
		ptrcall!(void)(_GODOT_set_exclude_nodes_from_collision, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude_nodes_from_collision") = _GODOT_get_exclude_nodes_from_collision;
	bool get_exclude_nodes_from_collision() const
	{
		_GODOT_get_exclude_nodes_from_collision.bind("Joint2D", "get_exclude_nodes_from_collision");
		return ptrcall!(bool)(_GODOT_get_exclude_nodes_from_collision, _godot_object);
	}
}
