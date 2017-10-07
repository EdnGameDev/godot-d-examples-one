module godot.scripteditor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.panelcontainer;
import godot.resource;
import godot.reference;
import godot.script;
import godot.inputevent;
@GodotBaseClass struct ScriptEditor
{
	static immutable string _GODOT_internal_name = "ScriptEditor";
public:
	union { godot_object _godot_object; PanelContainer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ScriptEditor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScriptEditor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ScriptEditor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ScriptEditor");
		if(constructor is null) return typeof(this).init;
		return cast(ScriptEditor)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT__file_dialog_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "_file_dialog_action") = _GODOT__file_dialog_action;
	void _file_dialog_action(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_dialog_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__tab_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tab_changed") = _GODOT__tab_changed;
	void _tab_changed(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tab_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__menu_option;
	package(godot) alias _GODOT_methodBindInfo(string name : "_menu_option") = _GODOT__menu_option;
	void _menu_option(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_menu_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_current_tab") = _GODOT__close_current_tab;
	void _close_current_tab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__close_discard_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_discard_current_tab") = _GODOT__close_discard_current_tab;
	void _close_discard_current_tab(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_close_discard_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_docs_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_docs_tab") = _GODOT__close_docs_tab;
	void _close_docs_tab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_docs_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_all_tabs;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_all_tabs") = _GODOT__close_all_tabs;
	void _close_all_tabs()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_all_tabs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__open_recent_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "_open_recent_script") = _GODOT__open_recent_script;
	void _open_recent_script(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_open_recent_script");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_play") = _GODOT__editor_play;
	void _editor_play()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_play");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_pause;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_pause") = _GODOT__editor_pause;
	void _editor_pause()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_pause");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_stop") = _GODOT__editor_stop;
	void _editor_stop()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_stop");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, PoolStringArray) _GODOT__add_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_add_callback") = _GODOT__add_callback;
	void _add_callback(StringArg1)(in GodotObject arg0, in StringArg1 arg1, in PoolStringArray arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_add_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__reload_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_reload_scripts") = _GODOT__reload_scripts;
	void _reload_scripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_reload_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__resave_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_resave_scripts") = _GODOT__resave_scripts;
	void _resave_scripts(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_resave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT__res_saved_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_res_saved_callback") = _GODOT__res_saved_callback;
	void _res_saved_callback(in Resource arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_res_saved_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Reference, int) _GODOT__goto_script_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "_goto_script_line") = _GODOT__goto_script_line;
	void _goto_script_line(in Reference arg0, in int arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_goto_script_line");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__goto_script_line2;
	package(godot) alias _GODOT_methodBindInfo(string name : "_goto_script_line2") = _GODOT__goto_script_line2;
	void _goto_script_line2(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_goto_script_line2");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_search;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_search") = _GODOT__help_search;
	void _help_search(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_search");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_index") = _GODOT__help_index;
	void _help_index(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_index");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__save_history;
	package(godot) alias _GODOT_methodBindInfo(string name : "_save_history") = _GODOT__save_history;
	void _save_history()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_history");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool, bool) _GODOT__breaked;
	package(godot) alias _GODOT_methodBindInfo(string name : "_breaked") = _GODOT__breaked;
	void _breaked(in bool arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_breaked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__show_debugger;
	package(godot) alias _GODOT_methodBindInfo(string name : "_show_debugger") = _GODOT__show_debugger;
	void _show_debugger(in bool arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_show_debugger");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String, String, GodotObject) _GODOT__get_debug_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_debug_tooltip") = _GODOT__get_debug_tooltip;
	String _get_debug_tooltip(StringArg0)(in StringArg0 arg0, in GodotObject arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_get_debug_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(void) _GODOT__autosave_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_autosave_scripts") = _GODOT__autosave_scripts;
	void _autosave_scripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_autosave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_settings_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_settings_changed") = _GODOT__editor_settings_changed;
	void _editor_settings_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_settings_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_script_names;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_script_names") = _GODOT__update_script_names;
	void _update_script_names()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_script_names");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__tree_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tree_changed") = _GODOT__tree_changed;
	void _tree_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__members_overview_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_members_overview_selected") = _GODOT__members_overview_selected;
	void _members_overview_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_members_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__help_overview_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_overview_selected") = _GODOT__help_overview_selected;
	void _help_overview_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__script_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_selected") = _GODOT__script_selected;
	void _script_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Script) _GODOT__script_created;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_created") = _GODOT__script_created;
	void _script_created(in Script arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_created");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__script_split_dragged;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_split_dragged") = _GODOT__script_split_dragged;
	void _script_split_dragged(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_split_dragged");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_class_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_class_open") = _GODOT__help_class_open;
	void _help_class_open(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_open");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_class_goto;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_class_goto") = _GODOT__help_class_goto;
	void _help_class_goto(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_goto");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__request_help;
	package(godot) alias _GODOT_methodBindInfo(string name : "_request_help") = _GODOT__request_help;
	void _request_help(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_request_help");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__history_forward;
	package(godot) alias _GODOT_methodBindInfo(string name : "_history_forward") = _GODOT__history_forward;
	void _history_forward()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_history_forward");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__history_back;
	package(godot) alias _GODOT_methodBindInfo(string name : "_history_back") = _GODOT__history_back;
	void _history_back()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_history_back");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__live_auto_reload_running_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_live_auto_reload_running_scripts") = _GODOT__live_auto_reload_running_scripts;
	void _live_auto_reload_running_scripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_live_auto_reload_running_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	void _unhandled_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__script_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_changed") = _GODOT__script_changed;
	void _script_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_script_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Script) _GODOT_get_current_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_script") = _GODOT_get_current_script;
	Script get_current_script()
	{
		_GODOT_get_current_script.bind("ScriptEditor", "get_current_script");
		return ptrcall!(Script)(_GODOT_get_current_script, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_open_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_open_scripts") = _GODOT_get_open_scripts;
	Array get_open_scripts() const
	{
		_GODOT_get_open_scripts.bind("ScriptEditor", "get_open_scripts");
		return ptrcall!(Array)(_GODOT_get_open_scripts, _godot_object);
	}
}
