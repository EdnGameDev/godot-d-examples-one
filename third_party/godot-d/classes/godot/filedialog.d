module godot.filedialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.confirmationdialog;
import godot.inputevent;
import godot.vboxcontainer;
@GodotBaseClass struct FileDialog
{
	static immutable string _GODOT_internal_name = "FileDialog";
public:
	union { godot_object _godot_object; ConfirmationDialog base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in FileDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	FileDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static FileDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("FileDialog");
		if(constructor is null) return typeof(this).init;
		return cast(FileDialog)(constructor());
	}
	enum Mode : int
	{
		MODE_OPEN_FILE = 0,
		MODE_OPEN_ANY = 3,
		MODE_OPEN_DIR = 2,
		MODE_OPEN_FILES = 1,
		MODE_SAVE_FILE = 4,
	}
	enum Access : int
	{
		ACCESS_RESOURCES = 0,
		ACCESS_USERDATA = 1,
		ACCESS_FILESYSTEM = 2,
	}
	enum int MODE_OPEN_DIR = 2;
	enum int ACCESS_USERDATA = 1;
	enum int MODE_SAVE_FILE = 4;
	enum int MODE_OPEN_ANY = 3;
	enum int ACCESS_RESOURCES = 0;
	enum int MODE_OPEN_FILES = 1;
	enum int ACCESS_FILESYSTEM = 2;
	enum int MODE_OPEN_FILE = 0;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	void _unhandled_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__tree_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tree_selected") = _GODOT__tree_selected;
	void _tree_selected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__tree_db_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tree_db_selected") = _GODOT__tree_db_selected;
	void _tree_db_selected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_db_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__dir_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_dir_entered") = _GODOT__dir_entered;
	void _dir_entered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_dir_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__file_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_file_entered") = _GODOT__file_entered;
	void _file_entered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__action_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_action_pressed") = _GODOT__action_pressed;
	void _action_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_action_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__cancel_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_cancel_pressed") = _GODOT__cancel_pressed;
	void _cancel_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cancel_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__filter_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_filter_selected") = _GODOT__filter_selected;
	void _filter_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__save_confirm_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_save_confirm_pressed") = _GODOT__save_confirm_pressed;
	void _save_confirm_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_confirm_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_filters;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_filters") = _GODOT_clear_filters;
	void clear_filters()
	{
		_GODOT_clear_filters.bind("FileDialog", "clear_filters");
		ptrcall!(void)(_GODOT_clear_filters, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_filter") = _GODOT_add_filter;
	void add_filter(StringArg0)(in StringArg0 filter)
	{
		_GODOT_add_filter.bind("FileDialog", "add_filter");
		ptrcall!(void)(_GODOT_add_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_set_filters;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filters") = _GODOT_set_filters;
	void set_filters(in PoolStringArray filters)
	{
		_GODOT_set_filters.bind("FileDialog", "set_filters");
		ptrcall!(void)(_GODOT_set_filters, _godot_object, filters);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_filters;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filters") = _GODOT_get_filters;
	PoolStringArray get_filters() const
	{
		_GODOT_get_filters.bind("FileDialog", "get_filters");
		return ptrcall!(PoolStringArray)(_GODOT_get_filters, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_dir") = _GODOT_get_current_dir;
	String get_current_dir() const
	{
		_GODOT_get_current_dir.bind("FileDialog", "get_current_dir");
		return ptrcall!(String)(_GODOT_get_current_dir, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_file") = _GODOT_get_current_file;
	String get_current_file() const
	{
		_GODOT_get_current_file.bind("FileDialog", "get_current_file");
		return ptrcall!(String)(_GODOT_get_current_file, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_path") = _GODOT_get_current_path;
	String get_current_path() const
	{
		_GODOT_get_current_path.bind("FileDialog", "get_current_path");
		return ptrcall!(String)(_GODOT_get_current_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_dir") = _GODOT_set_current_dir;
	void set_current_dir(StringArg0)(in StringArg0 dir)
	{
		_GODOT_set_current_dir.bind("FileDialog", "set_current_dir");
		ptrcall!(void)(_GODOT_set_current_dir, _godot_object, dir);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_file") = _GODOT_set_current_file;
	void set_current_file(StringArg0)(in StringArg0 file)
	{
		_GODOT_set_current_file.bind("FileDialog", "set_current_file");
		ptrcall!(void)(_GODOT_set_current_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_path") = _GODOT_set_current_path;
	void set_current_path(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_current_path.bind("FileDialog", "set_current_path");
		ptrcall!(void)(_GODOT_set_current_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	void set_mode(in int mode)
	{
		_GODOT_set_mode.bind("FileDialog", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(FileDialog.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	FileDialog.Mode get_mode() const
	{
		_GODOT_get_mode.bind("FileDialog", "get_mode");
		return ptrcall!(FileDialog.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(VBoxContainer) _GODOT_get_vbox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vbox") = _GODOT_get_vbox;
	VBoxContainer get_vbox()
	{
		_GODOT_get_vbox.bind("FileDialog", "get_vbox");
		return ptrcall!(VBoxContainer)(_GODOT_get_vbox, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_access;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_access") = _GODOT_set_access;
	void set_access(in int access)
	{
		_GODOT_set_access.bind("FileDialog", "set_access");
		ptrcall!(void)(_GODOT_set_access, _godot_object, access);
	}
	package(godot) static GodotMethod!(FileDialog.Access) _GODOT_get_access;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_access") = _GODOT_get_access;
	FileDialog.Access get_access() const
	{
		_GODOT_get_access.bind("FileDialog", "get_access");
		return ptrcall!(FileDialog.Access)(_GODOT_get_access, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_hidden_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_hidden_files") = _GODOT_set_show_hidden_files;
	void set_show_hidden_files(in bool show)
	{
		_GODOT_set_show_hidden_files.bind("FileDialog", "set_show_hidden_files");
		ptrcall!(void)(_GODOT_set_show_hidden_files, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_showing_hidden_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_showing_hidden_files") = _GODOT_is_showing_hidden_files;
	bool is_showing_hidden_files() const
	{
		_GODOT_is_showing_hidden_files.bind("FileDialog", "is_showing_hidden_files");
		return ptrcall!(bool)(_GODOT_is_showing_hidden_files, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__select_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "_select_drive") = _GODOT__select_drive;
	void _select_drive(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_drive");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__make_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "_make_dir") = _GODOT__make_dir;
	void _make_dir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__make_dir_confirm;
	package(godot) alias _GODOT_methodBindInfo(string name : "_make_dir_confirm") = _GODOT__make_dir_confirm;
	void _make_dir_confirm()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_file_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_file_list") = _GODOT__update_file_list;
	void _update_file_list()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_file_list");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_dir") = _GODOT__update_dir;
	void _update_dir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_invalidate;
	package(godot) alias _GODOT_methodBindInfo(string name : "invalidate") = _GODOT_invalidate;
	void invalidate()
	{
		_GODOT_invalidate.bind("FileDialog", "invalidate");
		ptrcall!(void)(_GODOT_invalidate, _godot_object);
	}
}
