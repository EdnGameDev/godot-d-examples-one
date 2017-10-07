module godot.visualscriptscenenode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptSceneNode
{
	static immutable string _GODOT_internal_name = "VisualScriptSceneNode";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptSceneNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSceneNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSceneNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptSceneNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSceneNode)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_path") = _GODOT_set_node_path;
	void set_node_path(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_node_path.bind("VisualScriptSceneNode", "set_node_path");
		ptrcall!(void)(_GODOT_set_node_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_path") = _GODOT_get_node_path;
	NodePath get_node_path()
	{
		_GODOT_get_node_path.bind("VisualScriptSceneNode", "get_node_path");
		return ptrcall!(NodePath)(_GODOT_get_node_path, _godot_object);
	}
}
