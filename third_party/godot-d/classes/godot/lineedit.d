module godot.lineedit;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.inputevent;
import godot.popupmenu;
@GodotBaseClass struct LineEdit
{
	static immutable string _GODOT_internal_name = "LineEdit";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in LineEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LineEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LineEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LineEdit");
		if(constructor is null) return typeof(this).init;
		return cast(LineEdit)(constructor());
	}
	enum Align : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
		ALIGN_FILL = 3,
	}
	enum MenuItems : int
	{
		MENU_UNDO = 5,
		MENU_MAX = 6,
		MENU_CUT = 0,
		MENU_COPY = 1,
		MENU_PASTE = 2,
		MENU_CLEAR = 3,
		MENU_SELECT_ALL = 4,
	}
	enum int ALIGN_FILL = 3;
	enum int MENU_UNDO = 5;
	enum int MENU_MAX = 6;
	enum int MENU_CUT = 0;
	enum int MENU_COPY = 1;
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
	enum int MENU_PASTE = 2;
	enum int MENU_CLEAR = 3;
	enum int MENU_SELECT_ALL = 4;
	package(godot) static GodotMethod!(void) _GODOT__toggle_draw_caret;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toggle_draw_caret") = _GODOT__toggle_draw_caret;
	void _toggle_draw_caret()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toggle_draw_caret");
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
	package(godot) static GodotMethod!(void, int) _GODOT_set_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_align") = _GODOT_set_align;
	void set_align(in int _align)
	{
		_GODOT_set_align.bind("LineEdit", "set_align");
		ptrcall!(void)(_GODOT_set_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(LineEdit.Align) _GODOT_get_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_align") = _GODOT_get_align;
	LineEdit.Align get_align() const
	{
		_GODOT_get_align.bind("LineEdit", "get_align");
		return ptrcall!(LineEdit.Align)(_GODOT_get_align, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("LineEdit", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_select_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "select_all") = _GODOT_select_all;
	void select_all()
	{
		_GODOT_select_all.bind("LineEdit", "select_all");
		ptrcall!(void)(_GODOT_select_all, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("LineEdit", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text() const
	{
		_GODOT_get_text.bind("LineEdit", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_placeholder") = _GODOT_set_placeholder;
	void set_placeholder(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_placeholder.bind("LineEdit", "set_placeholder");
		ptrcall!(void)(_GODOT_set_placeholder, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_placeholder") = _GODOT_get_placeholder;
	String get_placeholder() const
	{
		_GODOT_get_placeholder.bind("LineEdit", "get_placeholder");
		return ptrcall!(String)(_GODOT_get_placeholder, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_placeholder_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_placeholder_alpha") = _GODOT_set_placeholder_alpha;
	void set_placeholder_alpha(in float alpha)
	{
		_GODOT_set_placeholder_alpha.bind("LineEdit", "set_placeholder_alpha");
		ptrcall!(void)(_GODOT_set_placeholder_alpha, _godot_object, alpha);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_placeholder_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_placeholder_alpha") = _GODOT_get_placeholder_alpha;
	float get_placeholder_alpha() const
	{
		_GODOT_get_placeholder_alpha.bind("LineEdit", "get_placeholder_alpha");
		return ptrcall!(float)(_GODOT_get_placeholder_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_cursor_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cursor_position") = _GODOT_set_cursor_position;
	void set_cursor_position(in int position)
	{
		_GODOT_set_cursor_position.bind("LineEdit", "set_cursor_position");
		ptrcall!(void)(_GODOT_set_cursor_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_cursor_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cursor_position") = _GODOT_get_cursor_position;
	int get_cursor_position() const
	{
		_GODOT_get_cursor_position.bind("LineEdit", "get_cursor_position");
		return ptrcall!(int)(_GODOT_get_cursor_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand_to_text_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_to_text_length") = _GODOT_set_expand_to_text_length;
	void set_expand_to_text_length(in bool enabled)
	{
		_GODOT_set_expand_to_text_length.bind("LineEdit", "set_expand_to_text_length");
		ptrcall!(void)(_GODOT_set_expand_to_text_length, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_expand_to_text_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_to_text_length") = _GODOT_get_expand_to_text_length;
	bool get_expand_to_text_length() const
	{
		_GODOT_get_expand_to_text_length.bind("LineEdit", "get_expand_to_text_length");
		return ptrcall!(bool)(_GODOT_get_expand_to_text_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_cursor_set_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_enabled") = _GODOT_cursor_set_blink_enabled;
	void cursor_set_blink_enabled(in bool enabled)
	{
		_GODOT_cursor_set_blink_enabled.bind("LineEdit", "cursor_set_blink_enabled");
		ptrcall!(void)(_GODOT_cursor_set_blink_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_cursor_get_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_enabled") = _GODOT_cursor_get_blink_enabled;
	bool cursor_get_blink_enabled() const
	{
		_GODOT_cursor_get_blink_enabled.bind("LineEdit", "cursor_get_blink_enabled");
		return ptrcall!(bool)(_GODOT_cursor_get_blink_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_cursor_set_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_speed") = _GODOT_cursor_set_blink_speed;
	void cursor_set_blink_speed(in float blink_speed)
	{
		_GODOT_cursor_set_blink_speed.bind("LineEdit", "cursor_set_blink_speed");
		ptrcall!(void)(_GODOT_cursor_set_blink_speed, _godot_object, blink_speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_cursor_get_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_speed") = _GODOT_cursor_get_blink_speed;
	float cursor_get_blink_speed() const
	{
		_GODOT_cursor_get_blink_speed.bind("LineEdit", "cursor_get_blink_speed");
		return ptrcall!(float)(_GODOT_cursor_get_blink_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_length") = _GODOT_set_max_length;
	void set_max_length(in int chars)
	{
		_GODOT_set_max_length.bind("LineEdit", "set_max_length");
		ptrcall!(void)(_GODOT_set_max_length, _godot_object, chars);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_length") = _GODOT_get_max_length;
	int get_max_length() const
	{
		_GODOT_get_max_length.bind("LineEdit", "get_max_length");
		return ptrcall!(int)(_GODOT_get_max_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_append_at_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "append_at_cursor") = _GODOT_append_at_cursor;
	void append_at_cursor(StringArg0)(in StringArg0 text)
	{
		_GODOT_append_at_cursor.bind("LineEdit", "append_at_cursor");
		ptrcall!(void)(_GODOT_append_at_cursor, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	void set_editable(in bool enabled)
	{
		_GODOT_set_editable.bind("LineEdit", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	bool is_editable() const
	{
		_GODOT_is_editable.bind("LineEdit", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_secret;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_secret") = _GODOT_set_secret;
	void set_secret(in bool enabled)
	{
		_GODOT_set_secret.bind("LineEdit", "set_secret");
		ptrcall!(void)(_GODOT_set_secret, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_secret;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_secret") = _GODOT_is_secret;
	bool is_secret() const
	{
		_GODOT_is_secret.bind("LineEdit", "is_secret");
		return ptrcall!(bool)(_GODOT_is_secret, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	void select(in int from = 0, in int to = -1)
	{
		_GODOT_select.bind("LineEdit", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_menu_option;
	package(godot) alias _GODOT_methodBindInfo(string name : "menu_option") = _GODOT_menu_option;
	void menu_option(in int option)
	{
		_GODOT_menu_option.bind("LineEdit", "menu_option");
		ptrcall!(void)(_GODOT_menu_option, _godot_object, option);
	}
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_menu;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_menu") = _GODOT_get_menu;
	PopupMenu get_menu() const
	{
		_GODOT_get_menu.bind("LineEdit", "get_menu");
		return ptrcall!(PopupMenu)(_GODOT_get_menu, _godot_object);
	}
}
