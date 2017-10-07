module godot.editorscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.node;
import godot.editorinterface;
@GodotBaseClass struct EditorScript
{
	static immutable string _GODOT_internal_name = "EditorScript";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorScript");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScript)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT__run;
	package(godot) alias _GODOT_methodBindInfo(string name : "_run") = _GODOT__run;
	void _run()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_run");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_root_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_root_node") = _GODOT_add_root_node;
	void add_root_node(in GodotObject node)
	{
		_GODOT_add_root_node.bind("EditorScript", "add_root_node");
		ptrcall!(void)(_GODOT_add_root_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scene") = _GODOT_get_scene;
	Node get_scene()
	{
		_GODOT_get_scene.bind("EditorScript", "get_scene");
		return ptrcall!(Node)(_GODOT_get_scene, _godot_object);
	}
	package(godot) static GodotMethod!(EditorInterface) _GODOT_get_editor_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_interface") = _GODOT_get_editor_interface;
	EditorInterface get_editor_interface()
	{
		_GODOT_get_editor_interface.bind("EditorScript", "get_editor_interface");
		return ptrcall!(EditorInterface)(_GODOT_get_editor_interface, _godot_object);
	}
}
