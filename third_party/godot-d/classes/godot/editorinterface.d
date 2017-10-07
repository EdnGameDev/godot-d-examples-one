module godot.editorinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.node;
import godot.editorselection;
import godot.editorsettings;
import godot.scripteditor;
import godot.control;
import godot.resource;
import godot.editorresourcepreview;
import godot.editorfilesystem;
@GodotBaseClass struct EditorInterface
{
	static immutable string _GODOT_internal_name = "EditorInterface";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorInterface");
		if(constructor is null) return typeof(this).init;
		return cast(EditorInterface)(constructor());
	}
	package(godot) static GodotMethod!(void, GodotObject, String) _GODOT_inspect_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "inspect_object") = _GODOT_inspect_object;
	void inspect_object(StringArg1)(in GodotObject object, in StringArg1 for_property = "")
	{
		_GODOT_inspect_object.bind("EditorInterface", "inspect_object");
		ptrcall!(void)(_GODOT_inspect_object, _godot_object, object, for_property);
	}
	package(godot) static GodotMethod!(EditorSelection) _GODOT_get_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection") = _GODOT_get_selection;
	EditorSelection get_selection()
	{
		_GODOT_get_selection.bind("EditorInterface", "get_selection");
		return ptrcall!(EditorSelection)(_GODOT_get_selection, _godot_object);
	}
	package(godot) static GodotMethod!(EditorSettings) _GODOT_get_editor_settings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_settings") = _GODOT_get_editor_settings;
	EditorSettings get_editor_settings()
	{
		_GODOT_get_editor_settings.bind("EditorInterface", "get_editor_settings");
		return ptrcall!(EditorSettings)(_GODOT_get_editor_settings, _godot_object);
	}
	package(godot) static GodotMethod!(ScriptEditor) _GODOT_get_script_editor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_script_editor") = _GODOT_get_script_editor;
	ScriptEditor get_script_editor()
	{
		_GODOT_get_script_editor.bind("EditorInterface", "get_script_editor");
		return ptrcall!(ScriptEditor)(_GODOT_get_script_editor, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_base_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_control") = _GODOT_get_base_control;
	Control get_base_control()
	{
		_GODOT_get_base_control.bind("EditorInterface", "get_base_control");
		return ptrcall!(Control)(_GODOT_get_base_control, _godot_object);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_edit_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_resource") = _GODOT_edit_resource;
	void edit_resource(in Resource resource)
	{
		_GODOT_edit_resource.bind("EditorInterface", "edit_resource");
		ptrcall!(void)(_GODOT_edit_resource, _godot_object, resource);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_open_scene_from_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_scene_from_path") = _GODOT_open_scene_from_path;
	void open_scene_from_path(StringArg0)(in StringArg0 scene_filepath)
	{
		_GODOT_open_scene_from_path.bind("EditorInterface", "open_scene_from_path");
		ptrcall!(void)(_GODOT_open_scene_from_path, _godot_object, scene_filepath);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_reload_scene_from_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "reload_scene_from_path") = _GODOT_reload_scene_from_path;
	void reload_scene_from_path(StringArg0)(in StringArg0 scene_filepath)
	{
		_GODOT_reload_scene_from_path.bind("EditorInterface", "reload_scene_from_path");
		ptrcall!(void)(_GODOT_reload_scene_from_path, _godot_object, scene_filepath);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_open_scenes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_open_scenes") = _GODOT_get_open_scenes;
	Array get_open_scenes() const
	{
		_GODOT_get_open_scenes.bind("EditorInterface", "get_open_scenes");
		return ptrcall!(Array)(_GODOT_get_open_scenes, _godot_object);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_edited_scene_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited_scene_root") = _GODOT_get_edited_scene_root;
	Node get_edited_scene_root()
	{
		_GODOT_get_edited_scene_root.bind("EditorInterface", "get_edited_scene_root");
		return ptrcall!(Node)(_GODOT_get_edited_scene_root, _godot_object);
	}
	package(godot) static GodotMethod!(EditorResourcePreview) _GODOT_get_resource_previewer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_previewer") = _GODOT_get_resource_previewer;
	EditorResourcePreview get_resource_previewer()
	{
		_GODOT_get_resource_previewer.bind("EditorInterface", "get_resource_previewer");
		return ptrcall!(EditorResourcePreview)(_GODOT_get_resource_previewer, _godot_object);
	}
	package(godot) static GodotMethod!(EditorFileSystem) _GODOT_get_resource_filesystem;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_filesystem") = _GODOT_get_resource_filesystem;
	EditorFileSystem get_resource_filesystem()
	{
		_GODOT_get_resource_filesystem.bind("EditorInterface", "get_resource_filesystem");
		return ptrcall!(EditorFileSystem)(_GODOT_get_resource_filesystem, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_editor_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_viewport") = _GODOT_get_editor_viewport;
	Control get_editor_viewport()
	{
		_GODOT_get_editor_viewport.bind("EditorInterface", "get_editor_viewport");
		return ptrcall!(Control)(_GODOT_get_editor_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(Array, Array, int) _GODOT_make_mesh_previews;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_mesh_previews") = _GODOT_make_mesh_previews;
	Array make_mesh_previews(in Array arg0, in int arg1)
	{
		_GODOT_make_mesh_previews.bind("EditorInterface", "make_mesh_previews");
		return ptrcall!(Array)(_GODOT_make_mesh_previews, _godot_object, arg0, arg1);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_save_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_scene") = _GODOT_save_scene;
	GodotError save_scene()
	{
		_GODOT_save_scene.bind("EditorInterface", "save_scene");
		return ptrcall!(GodotError)(_GODOT_save_scene, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_save_scene_as;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_scene_as") = _GODOT_save_scene_as;
	void save_scene_as(StringArg0)(in StringArg0 path, in bool with_preview = true)
	{
		_GODOT_save_scene_as.bind("EditorInterface", "save_scene_as");
		ptrcall!(void)(_GODOT_save_scene_as, _godot_object, path, with_preview);
	}
}
