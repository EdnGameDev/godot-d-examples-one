module godot.editorselection;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
@GodotBaseClass struct EditorSelection
{
	static immutable string _GODOT_internal_name = "EditorSelection";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorSelection other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSelection opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSelection _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorSelection");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSelection)(constructor());
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__node_removed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_removed") = _GODOT__node_removed;
	void _node_removed(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("EditorSelection", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_node") = _GODOT_add_node;
	void add_node(in GodotObject node)
	{
		_GODOT_add_node.bind("EditorSelection", "add_node");
		ptrcall!(void)(_GODOT_add_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_node") = _GODOT_remove_node;
	void remove_node(in GodotObject node)
	{
		_GODOT_remove_node.bind("EditorSelection", "remove_node");
		ptrcall!(void)(_GODOT_remove_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_selected_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_nodes") = _GODOT_get_selected_nodes;
	Array get_selected_nodes()
	{
		_GODOT_get_selected_nodes.bind("EditorSelection", "get_selected_nodes");
		return ptrcall!(Array)(_GODOT_get_selected_nodes, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_transformable_selected_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transformable_selected_nodes") = _GODOT_get_transformable_selected_nodes;
	Array get_transformable_selected_nodes()
	{
		_GODOT_get_transformable_selected_nodes.bind("EditorSelection", "get_transformable_selected_nodes");
		return ptrcall!(Array)(_GODOT_get_transformable_selected_nodes, _godot_object);
	}
}
