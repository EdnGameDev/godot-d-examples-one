module godot.itemlist;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
import godot.vscrollbar;
import godot.inputevent;
@GodotBaseClass struct ItemList
{
	static immutable string _GODOT_internal_name = "ItemList";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ItemList other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ItemList opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ItemList _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ItemList");
		if(constructor is null) return typeof(this).init;
		return cast(ItemList)(constructor());
	}
	enum SelectMode : int
	{
		SELECT_SINGLE = 0,
		SELECT_MULTI = 1,
	}
	enum IconMode : int
	{
		ICON_MODE_LEFT = 1,
		ICON_MODE_TOP = 0,
	}
	enum int SELECT_MULTI = 1;
	enum int ICON_MODE_LEFT = 1;
	enum int ICON_MODE_TOP = 0;
	enum int SELECT_SINGLE = 0;
	package(godot) static GodotMethod!(void, String, Texture, bool) _GODOT_add_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_item") = _GODOT_add_item;
	void add_item(StringArg0)(in StringArg0 text, in Texture icon = Texture.init, in bool selectable = true)
	{
		_GODOT_add_item.bind("ItemList", "add_item");
		ptrcall!(void)(_GODOT_add_item, _godot_object, text, icon, selectable);
	}
	package(godot) static GodotMethod!(void, Texture, bool) _GODOT_add_icon_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_item") = _GODOT_add_icon_item;
	void add_icon_item(in Texture icon, in bool selectable = true)
	{
		_GODOT_add_icon_item.bind("ItemList", "add_icon_item");
		ptrcall!(void)(_GODOT_add_icon_item, _godot_object, icon, selectable);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_text") = _GODOT_set_item_text;
	void set_item_text(StringArg1)(in int idx, in StringArg1 text)
	{
		_GODOT_set_item_text.bind("ItemList", "set_item_text");
		ptrcall!(void)(_GODOT_set_item_text, _godot_object, idx, text);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_text") = _GODOT_get_item_text;
	String get_item_text(in int idx) const
	{
		_GODOT_get_item_text.bind("ItemList", "get_item_text");
		return ptrcall!(String)(_GODOT_get_item_text, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon") = _GODOT_set_item_icon;
	void set_item_icon(in int idx, in Texture icon)
	{
		_GODOT_set_item_icon.bind("ItemList", "set_item_icon");
		ptrcall!(void)(_GODOT_set_item_icon, _godot_object, idx, icon);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon") = _GODOT_get_item_icon;
	Texture get_item_icon(in int idx) const
	{
		_GODOT_get_item_icon.bind("ItemList", "get_item_icon");
		return ptrcall!(Texture)(_GODOT_get_item_icon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Rect2) _GODOT_set_item_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon_region") = _GODOT_set_item_icon_region;
	void set_item_icon_region(in int idx, in Rect2 rect)
	{
		_GODOT_set_item_icon_region.bind("ItemList", "set_item_icon_region");
		ptrcall!(void)(_GODOT_set_item_icon_region, _godot_object, idx, rect);
	}
	package(godot) static GodotMethod!(Rect2, int) _GODOT_get_item_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon_region") = _GODOT_get_item_icon_region;
	Rect2 get_item_icon_region(in int idx) const
	{
		_GODOT_get_item_icon_region.bind("ItemList", "get_item_icon_region");
		return ptrcall!(Rect2)(_GODOT_get_item_icon_region, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_selectable") = _GODOT_set_item_selectable;
	void set_item_selectable(in int idx, in bool selectable)
	{
		_GODOT_set_item_selectable.bind("ItemList", "set_item_selectable");
		ptrcall!(void)(_GODOT_set_item_selectable, _godot_object, idx, selectable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_selectable") = _GODOT_is_item_selectable;
	bool is_item_selectable(in int idx) const
	{
		_GODOT_is_item_selectable.bind("ItemList", "is_item_selectable");
		return ptrcall!(bool)(_GODOT_is_item_selectable, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_disabled") = _GODOT_set_item_disabled;
	void set_item_disabled(in int idx, in bool disabled)
	{
		_GODOT_set_item_disabled.bind("ItemList", "set_item_disabled");
		ptrcall!(void)(_GODOT_set_item_disabled, _godot_object, idx, disabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_disabled") = _GODOT_is_item_disabled;
	bool is_item_disabled(in int idx) const
	{
		_GODOT_is_item_disabled.bind("ItemList", "is_item_disabled");
		return ptrcall!(bool)(_GODOT_is_item_disabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_metadata") = _GODOT_set_item_metadata;
	void set_item_metadata(VariantArg1)(in int idx, in VariantArg1 metadata)
	{
		_GODOT_set_item_metadata.bind("ItemList", "set_item_metadata");
		ptrcall!(void)(_GODOT_set_item_metadata, _godot_object, idx, metadata);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_metadata") = _GODOT_get_item_metadata;
	Variant get_item_metadata(in int idx) const
	{
		_GODOT_get_item_metadata.bind("ItemList", "get_item_metadata");
		return ptrcall!(Variant)(_GODOT_get_item_metadata, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Color) _GODOT_set_item_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_custom_bg_color") = _GODOT_set_item_custom_bg_color;
	void set_item_custom_bg_color(in int idx, in Color custom_bg_color)
	{
		_GODOT_set_item_custom_bg_color.bind("ItemList", "set_item_custom_bg_color");
		ptrcall!(void)(_GODOT_set_item_custom_bg_color, _godot_object, idx, custom_bg_color);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_item_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_custom_bg_color") = _GODOT_get_item_custom_bg_color;
	Color get_item_custom_bg_color(in int idx) const
	{
		_GODOT_get_item_custom_bg_color.bind("ItemList", "get_item_custom_bg_color");
		return ptrcall!(Color)(_GODOT_get_item_custom_bg_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_tooltip_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_tooltip_enabled") = _GODOT_set_item_tooltip_enabled;
	void set_item_tooltip_enabled(in int idx, in bool enable)
	{
		_GODOT_set_item_tooltip_enabled.bind("ItemList", "set_item_tooltip_enabled");
		ptrcall!(void)(_GODOT_set_item_tooltip_enabled, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_tooltip_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_tooltip_enabled") = _GODOT_is_item_tooltip_enabled;
	bool is_item_tooltip_enabled(in int idx) const
	{
		_GODOT_is_item_tooltip_enabled.bind("ItemList", "is_item_tooltip_enabled");
		return ptrcall!(bool)(_GODOT_is_item_tooltip_enabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_tooltip") = _GODOT_set_item_tooltip;
	void set_item_tooltip(StringArg1)(in int idx, in StringArg1 tooltip)
	{
		_GODOT_set_item_tooltip.bind("ItemList", "set_item_tooltip");
		ptrcall!(void)(_GODOT_set_item_tooltip, _godot_object, idx, tooltip);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_tooltip") = _GODOT_get_item_tooltip;
	String get_item_tooltip(in int idx) const
	{
		_GODOT_get_item_tooltip.bind("ItemList", "get_item_tooltip");
		return ptrcall!(String)(_GODOT_get_item_tooltip, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	void select(in int idx, in bool single = true)
	{
		_GODOT_select.bind("ItemList", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, idx, single);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_unselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "unselect") = _GODOT_unselect;
	void unselect(in int idx)
	{
		_GODOT_unselect.bind("ItemList", "unselect");
		ptrcall!(void)(_GODOT_unselect, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selected") = _GODOT_is_selected;
	bool is_selected(in int idx) const
	{
		_GODOT_is_selected.bind("ItemList", "is_selected");
		return ptrcall!(bool)(_GODOT_is_selected, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_selected_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_items") = _GODOT_get_selected_items;
	PoolIntArray get_selected_items()
	{
		_GODOT_get_selected_items.bind("ItemList", "get_selected_items");
		return ptrcall!(PoolIntArray)(_GODOT_get_selected_items, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_item_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_count") = _GODOT_get_item_count;
	int get_item_count() const
	{
		_GODOT_get_item_count.bind("ItemList", "get_item_count");
		return ptrcall!(int)(_GODOT_get_item_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	void remove_item(in int idx)
	{
		_GODOT_remove_item.bind("ItemList", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("ItemList", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_sort_items_by_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "sort_items_by_text") = _GODOT_sort_items_by_text;
	void sort_items_by_text()
	{
		_GODOT_sort_items_by_text.bind("ItemList", "sort_items_by_text");
		ptrcall!(void)(_GODOT_sort_items_by_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_fixed_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_column_width") = _GODOT_set_fixed_column_width;
	void set_fixed_column_width(in int width)
	{
		_GODOT_set_fixed_column_width.bind("ItemList", "set_fixed_column_width");
		ptrcall!(void)(_GODOT_set_fixed_column_width, _godot_object, width);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_fixed_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_column_width") = _GODOT_get_fixed_column_width;
	int get_fixed_column_width() const
	{
		_GODOT_get_fixed_column_width.bind("ItemList", "get_fixed_column_width");
		return ptrcall!(int)(_GODOT_get_fixed_column_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_same_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_same_column_width") = _GODOT_set_same_column_width;
	void set_same_column_width(in bool enable)
	{
		_GODOT_set_same_column_width.bind("ItemList", "set_same_column_width");
		ptrcall!(void)(_GODOT_set_same_column_width, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_same_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_same_column_width") = _GODOT_is_same_column_width;
	bool is_same_column_width() const
	{
		_GODOT_is_same_column_width.bind("ItemList", "is_same_column_width");
		return ptrcall!(bool)(_GODOT_is_same_column_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_text_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_text_lines") = _GODOT_set_max_text_lines;
	void set_max_text_lines(in int lines)
	{
		_GODOT_set_max_text_lines.bind("ItemList", "set_max_text_lines");
		ptrcall!(void)(_GODOT_set_max_text_lines, _godot_object, lines);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_text_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_text_lines") = _GODOT_get_max_text_lines;
	int get_max_text_lines() const
	{
		_GODOT_get_max_text_lines.bind("ItemList", "get_max_text_lines");
		return ptrcall!(int)(_GODOT_get_max_text_lines, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_columns") = _GODOT_set_max_columns;
	void set_max_columns(in int amount)
	{
		_GODOT_set_max_columns.bind("ItemList", "set_max_columns");
		ptrcall!(void)(_GODOT_set_max_columns, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_columns") = _GODOT_get_max_columns;
	int get_max_columns() const
	{
		_GODOT_get_max_columns.bind("ItemList", "get_max_columns");
		return ptrcall!(int)(_GODOT_get_max_columns, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_select_mode") = _GODOT_set_select_mode;
	void set_select_mode(in int mode)
	{
		_GODOT_set_select_mode.bind("ItemList", "set_select_mode");
		ptrcall!(void)(_GODOT_set_select_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ItemList.SelectMode) _GODOT_get_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_select_mode") = _GODOT_get_select_mode;
	ItemList.SelectMode get_select_mode() const
	{
		_GODOT_get_select_mode.bind("ItemList", "get_select_mode");
		return ptrcall!(ItemList.SelectMode)(_GODOT_get_select_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_icon_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_mode") = _GODOT_set_icon_mode;
	void set_icon_mode(in int mode)
	{
		_GODOT_set_icon_mode.bind("ItemList", "set_icon_mode");
		ptrcall!(void)(_GODOT_set_icon_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ItemList.IconMode) _GODOT_get_icon_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_mode") = _GODOT_get_icon_mode;
	ItemList.IconMode get_icon_mode() const
	{
		_GODOT_get_icon_mode.bind("ItemList", "get_icon_mode");
		return ptrcall!(ItemList.IconMode)(_GODOT_get_icon_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_fixed_icon_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_icon_size") = _GODOT_set_fixed_icon_size;
	void set_fixed_icon_size(in Vector2 size)
	{
		_GODOT_set_fixed_icon_size.bind("ItemList", "set_fixed_icon_size");
		ptrcall!(void)(_GODOT_set_fixed_icon_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_fixed_icon_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_icon_size") = _GODOT_get_fixed_icon_size;
	Vector2 get_fixed_icon_size() const
	{
		_GODOT_get_fixed_icon_size.bind("ItemList", "get_fixed_icon_size");
		return ptrcall!(Vector2)(_GODOT_get_fixed_icon_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_icon_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_scale") = _GODOT_set_icon_scale;
	void set_icon_scale(in float scale)
	{
		_GODOT_set_icon_scale.bind("ItemList", "set_icon_scale");
		ptrcall!(void)(_GODOT_set_icon_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_icon_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_scale") = _GODOT_get_icon_scale;
	float get_icon_scale() const
	{
		_GODOT_get_icon_scale.bind("ItemList", "get_icon_scale");
		return ptrcall!(float)(_GODOT_get_icon_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_rmb_select") = _GODOT_set_allow_rmb_select;
	void set_allow_rmb_select(in bool allow)
	{
		_GODOT_set_allow_rmb_select.bind("ItemList", "set_allow_rmb_select");
		ptrcall!(void)(_GODOT_set_allow_rmb_select, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_rmb_select") = _GODOT_get_allow_rmb_select;
	bool get_allow_rmb_select() const
	{
		_GODOT_get_allow_rmb_select.bind("ItemList", "get_allow_rmb_select");
		return ptrcall!(bool)(_GODOT_get_allow_rmb_select, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_auto_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_auto_height") = _GODOT_set_auto_height;
	void set_auto_height(in bool enable)
	{
		_GODOT_set_auto_height.bind("ItemList", "set_auto_height");
		ptrcall!(void)(_GODOT_set_auto_height, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_auto_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_auto_height") = _GODOT_has_auto_height;
	bool has_auto_height() const
	{
		_GODOT_has_auto_height.bind("ItemList", "has_auto_height");
		return ptrcall!(bool)(_GODOT_has_auto_height, _godot_object);
	}
	package(godot) static GodotMethod!(int, Vector2, bool) _GODOT_get_item_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_at_position") = _GODOT_get_item_at_position;
	int get_item_at_position(in Vector2 position, in bool exact = false) const
	{
		_GODOT_get_item_at_position.bind("ItemList", "get_item_at_position");
		return ptrcall!(int)(_GODOT_get_item_at_position, _godot_object, position, exact);
	}
	package(godot) static GodotMethod!(void) _GODOT_ensure_current_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "ensure_current_is_visible") = _GODOT_ensure_current_is_visible;
	void ensure_current_is_visible()
	{
		_GODOT_ensure_current_is_visible.bind("ItemList", "ensure_current_is_visible");
		ptrcall!(void)(_GODOT_ensure_current_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(VScrollBar) _GODOT_get_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll") = _GODOT_get_v_scroll;
	VScrollBar get_v_scroll()
	{
		_GODOT_get_v_scroll.bind("ItemList", "get_v_scroll");
		return ptrcall!(VScrollBar)(_GODOT_get_v_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__scroll_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_changed") = _GODOT__scroll_changed;
	void _scroll_changed(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
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
	package(godot) static GodotMethod!(void, Array) _GODOT__set_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_items") = _GODOT__set_items;
	void _set_items(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_items") = _GODOT__get_items;
	Array _get_items() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
