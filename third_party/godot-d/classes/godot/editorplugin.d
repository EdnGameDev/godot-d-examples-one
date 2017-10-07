module godot.editorplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.inputevent;
import godot.control;
import godot.camera;
import godot.editorspatialgizmo;
import godot.spatial;
import godot.configfile;
import godot.toolbutton;
import godot.script;
import godot.texture;
import godot.undoredo;
import godot.editorimportplugin;
import godot.editorexportplugin;
import godot.editorinterface;
@GodotBaseClass struct EditorPlugin
{
	static immutable string _GODOT_internal_name = "EditorPlugin";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorPlugin)(constructor());
	}
	enum DockSlot : int
	{
		DOCK_SLOT_RIGHT_UL = 4,
		DOCK_SLOT_LEFT_UR = 2,
		DOCK_SLOT_MAX = 8,
		DOCK_SLOT_RIGHT_BR = 7,
		DOCK_SLOT_LEFT_UL = 0,
		DOCK_SLOT_LEFT_BR = 3,
		DOCK_SLOT_RIGHT_UR = 6,
		DOCK_SLOT_LEFT_BL = 1,
		DOCK_SLOT_RIGHT_BL = 5,
	}
	enum CustomControlContainer : int
	{
		CONTAINER_PROPERTY_EDITOR_BOTTOM = 7,
		CONTAINER_SPATIAL_EDITOR_SIDE = 2,
		CONTAINER_SPATIAL_EDITOR_BOTTOM = 3,
		CONTAINER_CANVAS_EDITOR_SIDE = 5,
		CONTAINER_SPATIAL_EDITOR_MENU = 1,
		CONTAINER_CANVAS_EDITOR_MENU = 4,
		CONTAINER_TOOLBAR = 0,
	}
	enum int DOCK_SLOT_RIGHT_BL = 5;
	enum int DOCK_SLOT_RIGHT_UL = 4;
	enum int DOCK_SLOT_LEFT_UR = 2;
	enum int DOCK_SLOT_MAX = 8;
	enum int DOCK_SLOT_RIGHT_BR = 7;
	enum int CONTAINER_PROPERTY_EDITOR_BOTTOM = 7;
	enum int CONTAINER_SPATIAL_EDITOR_SIDE = 2;
	enum int CONTAINER_SPATIAL_EDITOR_BOTTOM = 3;
	enum int CONTAINER_CANVAS_EDITOR_SIDE = 5;
	enum int DOCK_SLOT_LEFT_UL = 0;
	enum int CONTAINER_SPATIAL_EDITOR_MENU = 1;
	enum int DOCK_SLOT_LEFT_BR = 3;
	enum int CONTAINER_CANVAS_EDITOR_MENU = 4;
	enum int DOCK_SLOT_LEFT_BL = 1;
	enum int DOCK_SLOT_RIGHT_UR = 6;
	enum int CONTAINER_TOOLBAR = 0;
	package(godot) static GodotMethod!(bool, Transform2D, InputEvent) _GODOT_forward_canvas_gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_canvas_gui_input") = _GODOT_forward_canvas_gui_input;
	bool forward_canvas_gui_input(in Transform2D canvas_xform, in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(canvas_xform);
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_canvas_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, Transform2D, Control) _GODOT_forward_draw_over_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_draw_over_canvas") = _GODOT_forward_draw_over_canvas;
	void forward_draw_over_canvas(in Transform2D canvas_xform, in Control canvas)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(canvas_xform);
		_GODOT_args.append(canvas);
		String _GODOT_method_name = String("forward_draw_over_canvas");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, Camera, InputEvent) _GODOT_forward_spatial_gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_spatial_gui_input") = _GODOT_forward_spatial_gui_input;
	bool forward_spatial_gui_input(in Camera camera, in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_spatial_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(EditorSpatialGizmo, Spatial) _GODOT_create_spatial_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_spatial_gizmo") = _GODOT_create_spatial_gizmo;
	EditorSpatialGizmo create_spatial_gizmo(in Spatial for_spatial)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(for_spatial);
		String _GODOT_method_name = String("create_spatial_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(EditorSpatialGizmo);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_plugin_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_plugin_name") = _GODOT_get_plugin_name;
	String get_plugin_name()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_plugin_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_main_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_main_screen") = _GODOT_has_main_screen;
	bool has_main_screen()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("has_main_screen");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_make_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_visible") = _GODOT_make_visible;
	void make_visible(in bool visible)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(visible);
		String _GODOT_method_name = String("make_visible");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_edit;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit") = _GODOT_edit;
	void edit(in GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("edit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_handles;
	package(godot) alias _GODOT_methodBindInfo(string name : "handles") = _GODOT_handles;
	bool handles(in GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_state") = _GODOT_get_state;
	Dictionary get_state()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_state") = _GODOT_set_state;
	void set_state(in Dictionary state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("clear");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_save_external_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_external_data") = _GODOT_save_external_data;
	void save_external_data()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("save_external_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_apply_changes;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_changes") = _GODOT_apply_changes;
	void apply_changes()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("apply_changes");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_breakpoints;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_breakpoints") = _GODOT_get_breakpoints;
	PoolStringArray get_breakpoints()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_breakpoints");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolStringArray);
	}
	package(godot) static GodotMethod!(void, ConfigFile) _GODOT_set_window_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_layout") = _GODOT_set_window_layout;
	void set_window_layout(in ConfigFile layout)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("set_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, ConfigFile) _GODOT_get_window_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_window_layout") = _GODOT_get_window_layout;
	void get_window_layout(in ConfigFile layout)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("get_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, GodotObject) _GODOT_add_control_to_container;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_control_to_container") = _GODOT_add_control_to_container;
	void add_control_to_container(in int container, in GodotObject control)
	{
		_GODOT_add_control_to_container.bind("EditorPlugin", "add_control_to_container");
		ptrcall!(void)(_GODOT_add_control_to_container, _godot_object, container, control);
	}
	package(godot) static GodotMethod!(ToolButton, GodotObject, String) _GODOT_add_control_to_bottom_panel;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_control_to_bottom_panel") = _GODOT_add_control_to_bottom_panel;
	ToolButton add_control_to_bottom_panel(StringArg1)(in GodotObject control, in StringArg1 title)
	{
		_GODOT_add_control_to_bottom_panel.bind("EditorPlugin", "add_control_to_bottom_panel");
		return ptrcall!(ToolButton)(_GODOT_add_control_to_bottom_panel, _godot_object, control, title);
	}
	package(godot) static GodotMethod!(void, int, GodotObject) _GODOT_add_control_to_dock;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_control_to_dock") = _GODOT_add_control_to_dock;
	void add_control_to_dock(in int slot, in GodotObject control)
	{
		_GODOT_add_control_to_dock.bind("EditorPlugin", "add_control_to_dock");
		ptrcall!(void)(_GODOT_add_control_to_dock, _godot_object, slot, control);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_control_from_docks;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_control_from_docks") = _GODOT_remove_control_from_docks;
	void remove_control_from_docks(in GodotObject control)
	{
		_GODOT_remove_control_from_docks.bind("EditorPlugin", "remove_control_from_docks");
		ptrcall!(void)(_GODOT_remove_control_from_docks, _godot_object, control);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_control_from_bottom_panel;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_control_from_bottom_panel") = _GODOT_remove_control_from_bottom_panel;
	void remove_control_from_bottom_panel(in GodotObject control)
	{
		_GODOT_remove_control_from_bottom_panel.bind("EditorPlugin", "remove_control_from_bottom_panel");
		ptrcall!(void)(_GODOT_remove_control_from_bottom_panel, _godot_object, control);
	}
	package(godot) static GodotMethod!(void, String, GodotObject) _GODOT_add_tool_submenu_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tool_submenu_item") = _GODOT_add_tool_submenu_item;
	void add_tool_submenu_item(StringArg0)(in StringArg0 name, in GodotObject submenu)
	{
		_GODOT_add_tool_submenu_item.bind("EditorPlugin", "add_tool_submenu_item");
		ptrcall!(void)(_GODOT_add_tool_submenu_item, _godot_object, name, submenu);
	}
	package(godot) static GodotMethod!(void, String, String, Script, Texture) _GODOT_add_custom_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_custom_type") = _GODOT_add_custom_type;
	void add_custom_type(StringArg0, StringArg1)(in StringArg0 type, in StringArg1 base, in Script script, in Texture icon)
	{
		_GODOT_add_custom_type.bind("EditorPlugin", "add_custom_type");
		ptrcall!(void)(_GODOT_add_custom_type, _godot_object, type, base, script, icon);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_custom_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_custom_type") = _GODOT_remove_custom_type;
	void remove_custom_type(StringArg0)(in StringArg0 type)
	{
		_GODOT_remove_custom_type.bind("EditorPlugin", "remove_custom_type");
		ptrcall!(void)(_GODOT_remove_custom_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_canvas") = _GODOT_update_canvas;
	void update_canvas()
	{
		_GODOT_update_canvas.bind("EditorPlugin", "update_canvas");
		ptrcall!(void)(_GODOT_update_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_make_bottom_panel_item_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_bottom_panel_item_visible") = _GODOT_make_bottom_panel_item_visible;
	void make_bottom_panel_item_visible(in GodotObject item)
	{
		_GODOT_make_bottom_panel_item_visible.bind("EditorPlugin", "make_bottom_panel_item_visible");
		ptrcall!(void)(_GODOT_make_bottom_panel_item_visible, _godot_object, item);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide_bottom_panel;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide_bottom_panel") = _GODOT_hide_bottom_panel;
	void hide_bottom_panel()
	{
		_GODOT_hide_bottom_panel.bind("EditorPlugin", "hide_bottom_panel");
		ptrcall!(void)(_GODOT_hide_bottom_panel, _godot_object);
	}
	package(godot) static GodotMethod!(UndoRedo) _GODOT_get_undo_redo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_undo_redo") = _GODOT_get_undo_redo;
	UndoRedo get_undo_redo()
	{
		_GODOT_get_undo_redo.bind("EditorPlugin", "get_undo_redo");
		return ptrcall!(UndoRedo)(_GODOT_get_undo_redo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_queue_save_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_save_layout") = _GODOT_queue_save_layout;
	void queue_save_layout() const
	{
		_GODOT_queue_save_layout.bind("EditorPlugin", "queue_save_layout");
		ptrcall!(void)(_GODOT_queue_save_layout, _godot_object);
	}
	package(godot) static GodotMethod!(void, EditorImportPlugin) _GODOT_add_import_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_import_plugin") = _GODOT_add_import_plugin;
	void add_import_plugin(in EditorImportPlugin importer)
	{
		_GODOT_add_import_plugin.bind("EditorPlugin", "add_import_plugin");
		ptrcall!(void)(_GODOT_add_import_plugin, _godot_object, importer);
	}
	package(godot) static GodotMethod!(void, EditorImportPlugin) _GODOT_remove_import_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_import_plugin") = _GODOT_remove_import_plugin;
	void remove_import_plugin(in EditorImportPlugin importer)
	{
		_GODOT_remove_import_plugin.bind("EditorPlugin", "remove_import_plugin");
		ptrcall!(void)(_GODOT_remove_import_plugin, _godot_object, importer);
	}
	package(godot) static GodotMethod!(void, EditorExportPlugin) _GODOT_add_export_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_export_plugin") = _GODOT_add_export_plugin;
	void add_export_plugin(in EditorExportPlugin exporter)
	{
		_GODOT_add_export_plugin.bind("EditorPlugin", "add_export_plugin");
		ptrcall!(void)(_GODOT_add_export_plugin, _godot_object, exporter);
	}
	package(godot) static GodotMethod!(void, EditorExportPlugin) _GODOT_remove_export_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_export_plugin") = _GODOT_remove_export_plugin;
	void remove_export_plugin(in EditorExportPlugin exporter)
	{
		_GODOT_remove_export_plugin.bind("EditorPlugin", "remove_export_plugin");
		ptrcall!(void)(_GODOT_remove_export_plugin, _godot_object, exporter);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_input_event_forwarding_always_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_input_event_forwarding_always_enabled") = _GODOT_set_input_event_forwarding_always_enabled;
	void set_input_event_forwarding_always_enabled()
	{
		_GODOT_set_input_event_forwarding_always_enabled.bind("EditorPlugin", "set_input_event_forwarding_always_enabled");
		ptrcall!(void)(_GODOT_set_input_event_forwarding_always_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(EditorInterface) _GODOT_get_editor_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_interface") = _GODOT_get_editor_interface;
	EditorInterface get_editor_interface()
	{
		_GODOT_get_editor_interface.bind("EditorPlugin", "get_editor_interface");
		return ptrcall!(EditorInterface)(_GODOT_get_editor_interface, _godot_object);
	}
}
