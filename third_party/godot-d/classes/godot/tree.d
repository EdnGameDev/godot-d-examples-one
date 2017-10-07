module godot.tree;
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
import godot.treeitem;
@GodotBaseClass struct Tree
{
	static immutable string _GODOT_internal_name = "Tree";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Tree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Tree");
		if(constructor is null) return typeof(this).init;
		return cast(Tree)(constructor());
	}
	enum SelectMode : int
	{
		SELECT_ROW = 1,
		SELECT_SINGLE = 0,
		SELECT_MULTI = 2,
	}
	enum DropModeFlags : int
	{
		DROP_MODE_ON_ITEM = 1,
		DROP_MODE_DISABLED = 0,
		DROP_MODE_INBETWEEN = 2,
	}
	enum int SELECT_ROW = 1;
	enum int DROP_MODE_ON_ITEM = 1;
	enum int DROP_MODE_INBETWEEN = 2;
	enum int DROP_MODE_DISABLED = 0;
	enum int SELECT_SINGLE = 0;
	enum int SELECT_MULTI = 2;
	package(godot) static GodotMethod!(void) _GODOT__range_click_timeout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_range_click_timeout") = _GODOT__range_click_timeout;
	void _range_click_timeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_range_click_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	package(godot) static GodotMethod!(void, int) _GODOT__popup_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "_popup_select") = _GODOT__popup_select;
	void _popup_select(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_popup_select");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__text_editor_enter;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_editor_enter") = _GODOT__text_editor_enter;
	void _text_editor_enter(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_editor_enter");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__text_editor_modal_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_editor_modal_close") = _GODOT__text_editor_modal_close;
	void _text_editor_modal_close()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_editor_modal_close");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__value_editor_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_value_editor_changed") = _GODOT__value_editor_changed;
	void _value_editor_changed(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_editor_changed");
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
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("Tree", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject, GodotObject) _GODOT_create_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_item") = _GODOT_create_item;
	GodotObject create_item(in GodotObject parent = GodotObject.init)
	{
		_GODOT_create_item.bind("Tree", "create_item");
		return ptrcall!(GodotObject)(_GODOT_create_item, _godot_object, parent);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_root") = _GODOT_get_root;
	TreeItem get_root()
	{
		_GODOT_get_root.bind("Tree", "get_root");
		return ptrcall!(TreeItem)(_GODOT_get_root, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_column_min_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_min_width") = _GODOT_set_column_min_width;
	void set_column_min_width(in int column, in int min_width)
	{
		_GODOT_set_column_min_width.bind("Tree", "set_column_min_width");
		ptrcall!(void)(_GODOT_set_column_min_width, _godot_object, column, min_width);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_column_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_expand") = _GODOT_set_column_expand;
	void set_column_expand(in int column, in bool expand)
	{
		_GODOT_set_column_expand.bind("Tree", "set_column_expand");
		ptrcall!(void)(_GODOT_set_column_expand, _godot_object, column, expand);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_column_width") = _GODOT_get_column_width;
	int get_column_width(in int column) const
	{
		_GODOT_get_column_width.bind("Tree", "get_column_width");
		return ptrcall!(int)(_GODOT_get_column_width, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_root") = _GODOT_set_hide_root;
	void set_hide_root(in bool enable)
	{
		_GODOT_set_hide_root.bind("Tree", "set_hide_root");
		ptrcall!(void)(_GODOT_set_hide_root, _godot_object, enable);
	}
	package(godot) static GodotMethod!(TreeItem, GodotObject) _GODOT_get_next_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next_selected") = _GODOT_get_next_selected;
	TreeItem get_next_selected(in GodotObject from)
	{
		_GODOT_get_next_selected.bind("Tree", "get_next_selected");
		return ptrcall!(TreeItem)(_GODOT_get_next_selected, _godot_object, from);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected") = _GODOT_get_selected;
	TreeItem get_selected() const
	{
		_GODOT_get_selected.bind("Tree", "get_selected");
		return ptrcall!(TreeItem)(_GODOT_get_selected, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selected_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_column") = _GODOT_get_selected_column;
	int get_selected_column() const
	{
		_GODOT_get_selected_column.bind("Tree", "get_selected_column");
		return ptrcall!(int)(_GODOT_get_selected_column, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_pressed_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressed_button") = _GODOT_get_pressed_button;
	int get_pressed_button() const
	{
		_GODOT_get_pressed_button.bind("Tree", "get_pressed_button");
		return ptrcall!(int)(_GODOT_get_pressed_button, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_select_mode") = _GODOT_set_select_mode;
	void set_select_mode(in int mode)
	{
		_GODOT_set_select_mode.bind("Tree", "set_select_mode");
		ptrcall!(void)(_GODOT_set_select_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_columns") = _GODOT_set_columns;
	void set_columns(in int amount)
	{
		_GODOT_set_columns.bind("Tree", "set_columns");
		ptrcall!(void)(_GODOT_set_columns, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_columns") = _GODOT_get_columns;
	int get_columns() const
	{
		_GODOT_get_columns.bind("Tree", "get_columns");
		return ptrcall!(int)(_GODOT_get_columns, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_edited;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited") = _GODOT_get_edited;
	TreeItem get_edited() const
	{
		_GODOT_get_edited.bind("Tree", "get_edited");
		return ptrcall!(TreeItem)(_GODOT_get_edited, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_edited_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited_column") = _GODOT_get_edited_column;
	int get_edited_column() const
	{
		_GODOT_get_edited_column.bind("Tree", "get_edited_column");
		return ptrcall!(int)(_GODOT_get_edited_column, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_custom_popup_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_popup_rect") = _GODOT_get_custom_popup_rect;
	Rect2 get_custom_popup_rect() const
	{
		_GODOT_get_custom_popup_rect.bind("Tree", "get_custom_popup_rect");
		return ptrcall!(Rect2)(_GODOT_get_custom_popup_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2, GodotObject, int) _GODOT_get_item_area_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_area_rect") = _GODOT_get_item_area_rect;
	Rect2 get_item_area_rect(in GodotObject item, in int column = -1) const
	{
		_GODOT_get_item_area_rect.bind("Tree", "get_item_area_rect");
		return ptrcall!(Rect2)(_GODOT_get_item_area_rect, _godot_object, item, column);
	}
	package(godot) static GodotMethod!(TreeItem, Vector2) _GODOT_get_item_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_at_position") = _GODOT_get_item_at_position;
	TreeItem get_item_at_position(in Vector2 position) const
	{
		_GODOT_get_item_at_position.bind("Tree", "get_item_at_position");
		return ptrcall!(TreeItem)(_GODOT_get_item_at_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(int, Vector2) _GODOT_get_column_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_column_at_position") = _GODOT_get_column_at_position;
	int get_column_at_position(in Vector2 position) const
	{
		_GODOT_get_column_at_position.bind("Tree", "get_column_at_position");
		return ptrcall!(int)(_GODOT_get_column_at_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(int, Vector2) _GODOT_get_drop_section_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drop_section_at_position") = _GODOT_get_drop_section_at_position;
	int get_drop_section_at_position(in Vector2 position) const
	{
		_GODOT_get_drop_section_at_position.bind("Tree", "get_drop_section_at_position");
		return ptrcall!(int)(_GODOT_get_drop_section_at_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void) _GODOT_ensure_cursor_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "ensure_cursor_is_visible") = _GODOT_ensure_cursor_is_visible;
	void ensure_cursor_is_visible()
	{
		_GODOT_ensure_cursor_is_visible.bind("Tree", "ensure_cursor_is_visible");
		ptrcall!(void)(_GODOT_ensure_cursor_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_column_titles_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_titles_visible") = _GODOT_set_column_titles_visible;
	void set_column_titles_visible(in bool visible)
	{
		_GODOT_set_column_titles_visible.bind("Tree", "set_column_titles_visible");
		ptrcall!(void)(_GODOT_set_column_titles_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_are_column_titles_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_column_titles_visible") = _GODOT_are_column_titles_visible;
	bool are_column_titles_visible() const
	{
		_GODOT_are_column_titles_visible.bind("Tree", "are_column_titles_visible");
		return ptrcall!(bool)(_GODOT_are_column_titles_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_column_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_title") = _GODOT_set_column_title;
	void set_column_title(StringArg1)(in int column, in StringArg1 title)
	{
		_GODOT_set_column_title.bind("Tree", "set_column_title");
		ptrcall!(void)(_GODOT_set_column_title, _godot_object, column, title);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_column_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_column_title") = _GODOT_get_column_title;
	String get_column_title(in int column) const
	{
		_GODOT_get_column_title.bind("Tree", "get_column_title");
		return ptrcall!(String)(_GODOT_get_column_title, _godot_object, column);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll") = _GODOT_get_scroll;
	Vector2 get_scroll() const
	{
		_GODOT_get_scroll.bind("Tree", "get_scroll");
		return ptrcall!(Vector2)(_GODOT_get_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_folding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_folding") = _GODOT_set_hide_folding;
	void set_hide_folding(in bool hide)
	{
		_GODOT_set_hide_folding.bind("Tree", "set_hide_folding");
		ptrcall!(void)(_GODOT_set_hide_folding, _godot_object, hide);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_folding_hidden;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_folding_hidden") = _GODOT_is_folding_hidden;
	bool is_folding_hidden() const
	{
		_GODOT_is_folding_hidden.bind("Tree", "is_folding_hidden");
		return ptrcall!(bool)(_GODOT_is_folding_hidden, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_drop_mode_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drop_mode_flags") = _GODOT_set_drop_mode_flags;
	void set_drop_mode_flags(in int flags)
	{
		_GODOT_set_drop_mode_flags.bind("Tree", "set_drop_mode_flags");
		ptrcall!(void)(_GODOT_set_drop_mode_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_drop_mode_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drop_mode_flags") = _GODOT_get_drop_mode_flags;
	int get_drop_mode_flags() const
	{
		_GODOT_get_drop_mode_flags.bind("Tree", "get_drop_mode_flags");
		return ptrcall!(int)(_GODOT_get_drop_mode_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_rmb_select") = _GODOT_set_allow_rmb_select;
	void set_allow_rmb_select(in bool allow)
	{
		_GODOT_set_allow_rmb_select.bind("Tree", "set_allow_rmb_select");
		ptrcall!(void)(_GODOT_set_allow_rmb_select, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_rmb_select") = _GODOT_get_allow_rmb_select;
	bool get_allow_rmb_select() const
	{
		_GODOT_get_allow_rmb_select.bind("Tree", "get_allow_rmb_select");
		return ptrcall!(bool)(_GODOT_get_allow_rmb_select, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_reselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_reselect") = _GODOT_set_allow_reselect;
	void set_allow_reselect(in bool allow)
	{
		_GODOT_set_allow_reselect.bind("Tree", "set_allow_reselect");
		ptrcall!(void)(_GODOT_set_allow_reselect, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_reselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_reselect") = _GODOT_get_allow_reselect;
	bool get_allow_reselect() const
	{
		_GODOT_get_allow_reselect.bind("Tree", "get_allow_reselect");
		return ptrcall!(bool)(_GODOT_get_allow_reselect, _godot_object);
	}
}
