module godot.textedit;
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
@GodotBaseClass struct TextEdit
{
	static immutable string _GODOT_internal_name = "TextEdit";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TextEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TextEdit");
		if(constructor is null) return typeof(this).init;
		return cast(TextEdit)(constructor());
	}
	enum SearchFlags : int
	{
		SEARCH_BACKWARDS = 4,
		SEARCH_MATCH_CASE = 1,
		SEARCH_WHOLE_WORDS = 2,
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
	enum int SEARCH_BACKWARDS = 4;
	enum int MENU_UNDO = 5;
	enum int MENU_MAX = 6;
	enum int MENU_CUT = 0;
	enum int SEARCH_WHOLE_WORDS = 2;
	enum int MENU_COPY = 1;
	enum int SEARCH_MATCH_CASE = 1;
	enum int MENU_PASTE = 2;
	enum int MENU_CLEAR = 3;
	enum int MENU_SELECT_ALL = 4;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__scroll_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_moved") = _GODOT__scroll_moved;
	void _scroll_moved(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__cursor_changed_emit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_cursor_changed_emit") = _GODOT__cursor_changed_emit;
	void _cursor_changed_emit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cursor_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__text_changed_emit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_changed_emit") = _GODOT__text_changed_emit;
	void _text_changed_emit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__push_current_op;
	package(godot) alias _GODOT_methodBindInfo(string name : "_push_current_op") = _GODOT__push_current_op;
	void _push_current_op()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_push_current_op");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__click_selection_held;
	package(godot) alias _GODOT_methodBindInfo(string name : "_click_selection_held") = _GODOT__click_selection_held;
	void _click_selection_held()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_click_selection_held");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__toggle_draw_caret;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toggle_draw_caret") = _GODOT__toggle_draw_caret;
	void _toggle_draw_caret()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toggle_draw_caret");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__v_scroll_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_v_scroll_input") = _GODOT__v_scroll_input;
	void _v_scroll_input()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_v_scroll_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("TextEdit", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_insert_text_at_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "insert_text_at_cursor") = _GODOT_insert_text_at_cursor;
	void insert_text_at_cursor(StringArg0)(in StringArg0 text)
	{
		_GODOT_insert_text_at_cursor.bind("TextEdit", "insert_text_at_cursor");
		ptrcall!(void)(_GODOT_insert_text_at_cursor, _godot_object, text);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_count") = _GODOT_get_line_count;
	int get_line_count() const
	{
		_GODOT_get_line_count.bind("TextEdit", "get_line_count");
		return ptrcall!(int)(_GODOT_get_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text()
	{
		_GODOT_get_text.bind("TextEdit", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line") = _GODOT_get_line;
	String get_line(in int line) const
	{
		_GODOT_get_line.bind("TextEdit", "get_line");
		return ptrcall!(String)(_GODOT_get_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_cursor_set_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_column") = _GODOT_cursor_set_column;
	void cursor_set_column(in int column, in bool adjust_viewport = true)
	{
		_GODOT_cursor_set_column.bind("TextEdit", "cursor_set_column");
		ptrcall!(void)(_GODOT_cursor_set_column, _godot_object, column, adjust_viewport);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_cursor_set_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_line") = _GODOT_cursor_set_line;
	void cursor_set_line(in int line, in bool adjust_viewport = true)
	{
		_GODOT_cursor_set_line.bind("TextEdit", "cursor_set_line");
		ptrcall!(void)(_GODOT_cursor_set_line, _godot_object, line, adjust_viewport);
	}
	package(godot) static GodotMethod!(int) _GODOT_cursor_get_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_column") = _GODOT_cursor_get_column;
	int cursor_get_column() const
	{
		_GODOT_cursor_get_column.bind("TextEdit", "cursor_get_column");
		return ptrcall!(int)(_GODOT_cursor_get_column, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_cursor_get_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_line") = _GODOT_cursor_get_line;
	int cursor_get_line() const
	{
		_GODOT_cursor_get_line.bind("TextEdit", "cursor_get_line");
		return ptrcall!(int)(_GODOT_cursor_get_line, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_cursor_set_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_enabled") = _GODOT_cursor_set_blink_enabled;
	void cursor_set_blink_enabled(in bool enable)
	{
		_GODOT_cursor_set_blink_enabled.bind("TextEdit", "cursor_set_blink_enabled");
		ptrcall!(void)(_GODOT_cursor_set_blink_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_cursor_get_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_enabled") = _GODOT_cursor_get_blink_enabled;
	bool cursor_get_blink_enabled() const
	{
		_GODOT_cursor_get_blink_enabled.bind("TextEdit", "cursor_get_blink_enabled");
		return ptrcall!(bool)(_GODOT_cursor_get_blink_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_cursor_set_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_speed") = _GODOT_cursor_set_blink_speed;
	void cursor_set_blink_speed(in float blink_speed)
	{
		_GODOT_cursor_set_blink_speed.bind("TextEdit", "cursor_set_blink_speed");
		ptrcall!(void)(_GODOT_cursor_set_blink_speed, _godot_object, blink_speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_cursor_get_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_speed") = _GODOT_cursor_get_blink_speed;
	float cursor_get_blink_speed() const
	{
		_GODOT_cursor_get_blink_speed.bind("TextEdit", "cursor_get_blink_speed");
		return ptrcall!(float)(_GODOT_cursor_get_blink_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_cursor_set_block_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_block_mode") = _GODOT_cursor_set_block_mode;
	void cursor_set_block_mode(in bool enable)
	{
		_GODOT_cursor_set_block_mode.bind("TextEdit", "cursor_set_block_mode");
		ptrcall!(void)(_GODOT_cursor_set_block_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_cursor_is_block_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_is_block_mode") = _GODOT_cursor_is_block_mode;
	bool cursor_is_block_mode() const
	{
		_GODOT_cursor_is_block_mode.bind("TextEdit", "cursor_is_block_mode");
		return ptrcall!(bool)(_GODOT_cursor_is_block_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_readonly;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_readonly") = _GODOT_set_readonly;
	void set_readonly(in bool enable)
	{
		_GODOT_set_readonly.bind("TextEdit", "set_readonly");
		ptrcall!(void)(_GODOT_set_readonly, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_wrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wrap") = _GODOT_set_wrap;
	void set_wrap(in bool enable)
	{
		_GODOT_set_wrap.bind("TextEdit", "set_wrap");
		ptrcall!(void)(_GODOT_set_wrap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_chars;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_chars") = _GODOT_set_max_chars;
	void set_max_chars(in int amount)
	{
		_GODOT_set_max_chars.bind("TextEdit", "set_max_chars");
		ptrcall!(void)(_GODOT_set_max_chars, _godot_object, amount);
	}
	package(godot) static GodotMethod!(void) _GODOT_cut;
	package(godot) alias _GODOT_methodBindInfo(string name : "cut") = _GODOT_cut;
	void cut()
	{
		_GODOT_cut.bind("TextEdit", "cut");
		ptrcall!(void)(_GODOT_cut, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_copy;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy") = _GODOT_copy;
	void copy()
	{
		_GODOT_copy.bind("TextEdit", "copy");
		ptrcall!(void)(_GODOT_copy, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_paste;
	package(godot) alias _GODOT_methodBindInfo(string name : "paste") = _GODOT_paste;
	void paste()
	{
		_GODOT_paste.bind("TextEdit", "paste");
		ptrcall!(void)(_GODOT_paste, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_select_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "select_all") = _GODOT_select_all;
	void select_all()
	{
		_GODOT_select_all.bind("TextEdit", "select_all");
		ptrcall!(void)(_GODOT_select_all, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, int, int) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	void select(in int from_line, in int from_column, in int to_line, in int to_column)
	{
		_GODOT_select.bind("TextEdit", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, from_line, from_column, to_line, to_column);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_selection_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selection_active") = _GODOT_is_selection_active;
	bool is_selection_active() const
	{
		_GODOT_is_selection_active.bind("TextEdit", "is_selection_active");
		return ptrcall!(bool)(_GODOT_is_selection_active, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selection_from_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_from_line") = _GODOT_get_selection_from_line;
	int get_selection_from_line() const
	{
		_GODOT_get_selection_from_line.bind("TextEdit", "get_selection_from_line");
		return ptrcall!(int)(_GODOT_get_selection_from_line, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selection_from_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_from_column") = _GODOT_get_selection_from_column;
	int get_selection_from_column() const
	{
		_GODOT_get_selection_from_column.bind("TextEdit", "get_selection_from_column");
		return ptrcall!(int)(_GODOT_get_selection_from_column, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selection_to_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_to_line") = _GODOT_get_selection_to_line;
	int get_selection_to_line() const
	{
		_GODOT_get_selection_to_line.bind("TextEdit", "get_selection_to_line");
		return ptrcall!(int)(_GODOT_get_selection_to_line, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selection_to_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_to_column") = _GODOT_get_selection_to_column;
	int get_selection_to_column() const
	{
		_GODOT_get_selection_to_column.bind("TextEdit", "get_selection_to_column");
		return ptrcall!(int)(_GODOT_get_selection_to_column, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_selection_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_text") = _GODOT_get_selection_text;
	String get_selection_text() const
	{
		_GODOT_get_selection_text.bind("TextEdit", "get_selection_text");
		return ptrcall!(String)(_GODOT_get_selection_text, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_word_under_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_word_under_cursor") = _GODOT_get_word_under_cursor;
	String get_word_under_cursor() const
	{
		_GODOT_get_word_under_cursor.bind("TextEdit", "get_word_under_cursor");
		return ptrcall!(String)(_GODOT_get_word_under_cursor, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray, String, int, int, int) _GODOT_search;
	package(godot) alias _GODOT_methodBindInfo(string name : "search") = _GODOT_search;
	PoolIntArray search(StringArg0)(in StringArg0 key, in int flags, in int from_line, in int from_column) const
	{
		_GODOT_search.bind("TextEdit", "search");
		return ptrcall!(PoolIntArray)(_GODOT_search, _godot_object, key, flags, from_line, from_column);
	}
	package(godot) static GodotMethod!(void) _GODOT_undo;
	package(godot) alias _GODOT_methodBindInfo(string name : "undo") = _GODOT_undo;
	void undo()
	{
		_GODOT_undo.bind("TextEdit", "undo");
		ptrcall!(void)(_GODOT_undo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_redo;
	package(godot) alias _GODOT_methodBindInfo(string name : "redo") = _GODOT_redo;
	void redo()
	{
		_GODOT_redo.bind("TextEdit", "redo");
		ptrcall!(void)(_GODOT_redo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_undo_history;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_undo_history") = _GODOT_clear_undo_history;
	void clear_undo_history()
	{
		_GODOT_clear_undo_history.bind("TextEdit", "clear_undo_history");
		ptrcall!(void)(_GODOT_clear_undo_history, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_line_numbers;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_line_numbers") = _GODOT_set_show_line_numbers;
	void set_show_line_numbers(in bool enable)
	{
		_GODOT_set_show_line_numbers.bind("TextEdit", "set_show_line_numbers");
		ptrcall!(void)(_GODOT_set_show_line_numbers, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_show_line_numbers_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_show_line_numbers_enabled") = _GODOT_is_show_line_numbers_enabled;
	bool is_show_line_numbers_enabled() const
	{
		_GODOT_is_show_line_numbers_enabled.bind("TextEdit", "is_show_line_numbers_enabled");
		return ptrcall!(bool)(_GODOT_is_show_line_numbers_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_highlight_all_occurrences;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_highlight_all_occurrences") = _GODOT_set_highlight_all_occurrences;
	void set_highlight_all_occurrences(in bool enable)
	{
		_GODOT_set_highlight_all_occurrences.bind("TextEdit", "set_highlight_all_occurrences");
		ptrcall!(void)(_GODOT_set_highlight_all_occurrences, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_highlight_all_occurrences_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_highlight_all_occurrences_enabled") = _GODOT_is_highlight_all_occurrences_enabled;
	bool is_highlight_all_occurrences_enabled() const
	{
		_GODOT_is_highlight_all_occurrences_enabled.bind("TextEdit", "is_highlight_all_occurrences_enabled");
		return ptrcall!(bool)(_GODOT_is_highlight_all_occurrences_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_syntax_coloring;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_syntax_coloring") = _GODOT_set_syntax_coloring;
	void set_syntax_coloring(in bool enable)
	{
		_GODOT_set_syntax_coloring.bind("TextEdit", "set_syntax_coloring");
		ptrcall!(void)(_GODOT_set_syntax_coloring, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_syntax_coloring_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_syntax_coloring_enabled") = _GODOT_is_syntax_coloring_enabled;
	bool is_syntax_coloring_enabled() const
	{
		_GODOT_is_syntax_coloring_enabled.bind("TextEdit", "is_syntax_coloring_enabled");
		return ptrcall!(bool)(_GODOT_is_syntax_coloring_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_smooth_scroll_enable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_smooth_scroll_enable") = _GODOT_set_smooth_scroll_enable;
	void set_smooth_scroll_enable(in bool enable)
	{
		_GODOT_set_smooth_scroll_enable.bind("TextEdit", "set_smooth_scroll_enable");
		ptrcall!(void)(_GODOT_set_smooth_scroll_enable, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_smooth_scroll_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_smooth_scroll_enabled") = _GODOT_is_smooth_scroll_enabled;
	bool is_smooth_scroll_enabled() const
	{
		_GODOT_is_smooth_scroll_enabled.bind("TextEdit", "is_smooth_scroll_enabled");
		return ptrcall!(bool)(_GODOT_is_smooth_scroll_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_v_scroll_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_scroll_speed") = _GODOT_set_v_scroll_speed;
	void set_v_scroll_speed(in float speed)
	{
		_GODOT_set_v_scroll_speed.bind("TextEdit", "set_v_scroll_speed");
		ptrcall!(void)(_GODOT_set_v_scroll_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_v_scroll_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll_speed") = _GODOT_get_v_scroll_speed;
	float get_v_scroll_speed() const
	{
		_GODOT_get_v_scroll_speed.bind("TextEdit", "get_v_scroll_speed");
		return ptrcall!(float)(_GODOT_get_v_scroll_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Color) _GODOT_add_keyword_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_keyword_color") = _GODOT_add_keyword_color;
	void add_keyword_color(StringArg0)(in StringArg0 keyword, in Color color)
	{
		_GODOT_add_keyword_color.bind("TextEdit", "add_keyword_color");
		ptrcall!(void)(_GODOT_add_keyword_color, _godot_object, keyword, color);
	}
	package(godot) static GodotMethod!(void, String, String, Color, bool) _GODOT_add_color_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_color_region") = _GODOT_add_color_region;
	void add_color_region(StringArg0, StringArg1)(in StringArg0 begin_key, in StringArg1 end_key, in Color color, in bool line_only = false)
	{
		_GODOT_add_color_region.bind("TextEdit", "add_color_region");
		ptrcall!(void)(_GODOT_add_color_region, _godot_object, begin_key, end_key, color, line_only);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_colors") = _GODOT_clear_colors;
	void clear_colors()
	{
		_GODOT_clear_colors.bind("TextEdit", "clear_colors");
		ptrcall!(void)(_GODOT_clear_colors, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_menu_option;
	package(godot) alias _GODOT_methodBindInfo(string name : "menu_option") = _GODOT_menu_option;
	void menu_option(in int option)
	{
		_GODOT_menu_option.bind("TextEdit", "menu_option");
		ptrcall!(void)(_GODOT_menu_option, _godot_object, option);
	}
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_menu;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_menu") = _GODOT_get_menu;
	PopupMenu get_menu() const
	{
		_GODOT_get_menu.bind("TextEdit", "get_menu");
		return ptrcall!(PopupMenu)(_GODOT_get_menu, _godot_object);
	}
}
