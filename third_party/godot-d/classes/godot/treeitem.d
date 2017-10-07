module godot.treeitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.texture;
@GodotBaseClass struct TreeItem
{
	static immutable string _GODOT_internal_name = "TreeItem";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TreeItem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TreeItem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TreeItem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TreeItem");
		if(constructor is null) return typeof(this).init;
		return cast(TreeItem)(constructor());
	}
	enum TreeCellMode : int
	{
		CELL_MODE_CUSTOM = 5,
		CELL_MODE_STRING = 0,
		CELL_MODE_CHECK = 1,
		CELL_MODE_RANGE = 2,
		CELL_MODE_RANGE_EXPRESSION = 3,
		CELL_MODE_ICON = 4,
	}
	enum TextAlign : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
	}
	enum int CELL_MODE_CUSTOM = 5;
	enum int CELL_MODE_CHECK = 1;
	enum int CELL_MODE_ICON = 4;
	enum int CELL_MODE_RANGE = 2;
	enum int CELL_MODE_STRING = 0;
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_CENTER = 1;
	enum int CELL_MODE_RANGE_EXPRESSION = 3;
	enum int ALIGN_RIGHT = 2;
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_cell_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_mode") = _GODOT_set_cell_mode;
	void set_cell_mode(in int column, in int mode)
	{
		_GODOT_set_cell_mode.bind("TreeItem", "set_cell_mode");
		ptrcall!(void)(_GODOT_set_cell_mode, _godot_object, column, mode);
	}
	package(godot) static GodotMethod!(TreeItem.TreeCellMode, int) _GODOT_get_cell_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_mode") = _GODOT_get_cell_mode;
	TreeItem.TreeCellMode get_cell_mode(in int column) const
	{
		_GODOT_get_cell_mode.bind("TreeItem", "get_cell_mode");
		return ptrcall!(TreeItem.TreeCellMode)(_GODOT_get_cell_mode, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_checked") = _GODOT_set_checked;
	void set_checked(in int column, in bool checked)
	{
		_GODOT_set_checked.bind("TreeItem", "set_checked");
		ptrcall!(void)(_GODOT_set_checked, _godot_object, column, checked);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_checked") = _GODOT_is_checked;
	bool is_checked(in int column) const
	{
		_GODOT_is_checked.bind("TreeItem", "is_checked");
		return ptrcall!(bool)(_GODOT_is_checked, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg1)(in int column, in StringArg1 text)
	{
		_GODOT_set_text.bind("TreeItem", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, column, text);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text(in int column) const
	{
		_GODOT_get_text.bind("TreeItem", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon") = _GODOT_set_icon;
	void set_icon(in int column, in Texture texture)
	{
		_GODOT_set_icon.bind("TreeItem", "set_icon");
		ptrcall!(void)(_GODOT_set_icon, _godot_object, column, texture);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon") = _GODOT_get_icon;
	Texture get_icon(in int column) const
	{
		_GODOT_get_icon.bind("TreeItem", "get_icon");
		return ptrcall!(Texture)(_GODOT_get_icon, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, Rect2) _GODOT_set_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_region") = _GODOT_set_icon_region;
	void set_icon_region(in int column, in Rect2 region)
	{
		_GODOT_set_icon_region.bind("TreeItem", "set_icon_region");
		ptrcall!(void)(_GODOT_set_icon_region, _godot_object, column, region);
	}
	package(godot) static GodotMethod!(Rect2, int) _GODOT_get_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_region") = _GODOT_get_icon_region;
	Rect2 get_icon_region(in int column) const
	{
		_GODOT_get_icon_region.bind("TreeItem", "get_icon_region");
		return ptrcall!(Rect2)(_GODOT_get_icon_region, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_icon_max_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_max_width") = _GODOT_set_icon_max_width;
	void set_icon_max_width(in int column, in int width)
	{
		_GODOT_set_icon_max_width.bind("TreeItem", "set_icon_max_width");
		ptrcall!(void)(_GODOT_set_icon_max_width, _godot_object, column, width);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_icon_max_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_max_width") = _GODOT_get_icon_max_width;
	int get_icon_max_width(in int column) const
	{
		_GODOT_get_icon_max_width.bind("TreeItem", "get_icon_max_width");
		return ptrcall!(int)(_GODOT_get_icon_max_width, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range") = _GODOT_set_range;
	void set_range(in int column, in float value)
	{
		_GODOT_set_range.bind("TreeItem", "set_range");
		ptrcall!(void)(_GODOT_set_range, _godot_object, column, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range") = _GODOT_get_range;
	float get_range(in int column) const
	{
		_GODOT_get_range.bind("TreeItem", "get_range");
		return ptrcall!(float)(_GODOT_get_range, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, float, float, float, bool) _GODOT_set_range_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range_config") = _GODOT_set_range_config;
	void set_range_config(in int column, in float min, in float max, in float step, in bool expr = false)
	{
		_GODOT_set_range_config.bind("TreeItem", "set_range_config");
		ptrcall!(void)(_GODOT_set_range_config, _godot_object, column, min, max, step, expr);
	}
	package(godot) static GodotMethod!(Dictionary, int) _GODOT_get_range_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range_config") = _GODOT_get_range_config;
	Dictionary get_range_config(in int column)
	{
		_GODOT_get_range_config.bind("TreeItem", "get_range_config");
		return ptrcall!(Dictionary)(_GODOT_get_range_config, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metadata") = _GODOT_set_metadata;
	void set_metadata(VariantArg1)(in int column, in VariantArg1 meta)
	{
		_GODOT_set_metadata.bind("TreeItem", "set_metadata");
		ptrcall!(void)(_GODOT_set_metadata, _godot_object, column, meta);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metadata") = _GODOT_get_metadata;
	Variant get_metadata(in int column) const
	{
		_GODOT_get_metadata.bind("TreeItem", "get_metadata");
		return ptrcall!(Variant)(_GODOT_get_metadata, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, GodotObject, String) _GODOT_set_custom_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_draw") = _GODOT_set_custom_draw;
	void set_custom_draw(StringArg2)(in int column, in GodotObject object, in StringArg2 callback)
	{
		_GODOT_set_custom_draw.bind("TreeItem", "set_custom_draw");
		ptrcall!(void)(_GODOT_set_custom_draw, _godot_object, column, object, callback);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collapsed") = _GODOT_set_collapsed;
	void set_collapsed(in bool enable)
	{
		_GODOT_set_collapsed.bind("TreeItem", "set_collapsed");
		ptrcall!(void)(_GODOT_set_collapsed, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_collapsed") = _GODOT_is_collapsed;
	bool is_collapsed()
	{
		_GODOT_is_collapsed.bind("TreeItem", "is_collapsed");
		return ptrcall!(bool)(_GODOT_is_collapsed, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_custom_minimum_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_minimum_height") = _GODOT_set_custom_minimum_height;
	void set_custom_minimum_height(in int height)
	{
		_GODOT_set_custom_minimum_height.bind("TreeItem", "set_custom_minimum_height");
		ptrcall!(void)(_GODOT_set_custom_minimum_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_custom_minimum_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_minimum_height") = _GODOT_get_custom_minimum_height;
	int get_custom_minimum_height() const
	{
		_GODOT_get_custom_minimum_height.bind("TreeItem", "get_custom_minimum_height");
		return ptrcall!(int)(_GODOT_get_custom_minimum_height, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next") = _GODOT_get_next;
	TreeItem get_next()
	{
		_GODOT_get_next.bind("TreeItem", "get_next");
		return ptrcall!(TreeItem)(_GODOT_get_next, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_prev;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_prev") = _GODOT_get_prev;
	TreeItem get_prev()
	{
		_GODOT_get_prev.bind("TreeItem", "get_prev");
		return ptrcall!(TreeItem)(_GODOT_get_prev, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent") = _GODOT_get_parent;
	TreeItem get_parent()
	{
		_GODOT_get_parent.bind("TreeItem", "get_parent");
		return ptrcall!(TreeItem)(_GODOT_get_parent, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_children;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_children") = _GODOT_get_children;
	TreeItem get_children()
	{
		_GODOT_get_children.bind("TreeItem", "get_children");
		return ptrcall!(TreeItem)(_GODOT_get_children, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_next_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next_visible") = _GODOT_get_next_visible;
	TreeItem get_next_visible()
	{
		_GODOT_get_next_visible.bind("TreeItem", "get_next_visible");
		return ptrcall!(TreeItem)(_GODOT_get_next_visible, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_prev_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_prev_visible") = _GODOT_get_prev_visible;
	TreeItem get_prev_visible()
	{
		_GODOT_get_prev_visible.bind("TreeItem", "get_prev_visible");
		return ptrcall!(TreeItem)(_GODOT_get_prev_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_child") = _GODOT_remove_child;
	void remove_child(in GodotObject child)
	{
		_GODOT_remove_child.bind("TreeItem", "remove_child");
		ptrcall!(void)(_GODOT_remove_child, _godot_object, child);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selectable") = _GODOT_set_selectable;
	void set_selectable(in int column, in bool selectable)
	{
		_GODOT_set_selectable.bind("TreeItem", "set_selectable");
		ptrcall!(void)(_GODOT_set_selectable, _godot_object, column, selectable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selectable") = _GODOT_is_selectable;
	bool is_selectable(in int column) const
	{
		_GODOT_is_selectable.bind("TreeItem", "is_selectable");
		return ptrcall!(bool)(_GODOT_is_selectable, _godot_object, column);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selected") = _GODOT_is_selected;
	bool is_selected(in int column)
	{
		_GODOT_is_selected.bind("TreeItem", "is_selected");
		return ptrcall!(bool)(_GODOT_is_selected, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	void select(in int column)
	{
		_GODOT_select.bind("TreeItem", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_deselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "deselect") = _GODOT_deselect;
	void deselect(in int column)
	{
		_GODOT_deselect.bind("TreeItem", "deselect");
		ptrcall!(void)(_GODOT_deselect, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	void set_editable(in int column, in bool enabled)
	{
		_GODOT_set_editable.bind("TreeItem", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, column, enabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	bool is_editable(in int column)
	{
		_GODOT_is_editable.bind("TreeItem", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, Color) _GODOT_set_custom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_color") = _GODOT_set_custom_color;
	void set_custom_color(in int column, in Color color)
	{
		_GODOT_set_custom_color.bind("TreeItem", "set_custom_color");
		ptrcall!(void)(_GODOT_set_custom_color, _godot_object, column, color);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_clear_custom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_custom_color") = _GODOT_clear_custom_color;
	void clear_custom_color(in int column)
	{
		_GODOT_clear_custom_color.bind("TreeItem", "clear_custom_color");
		ptrcall!(void)(_GODOT_clear_custom_color, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, Color, bool) _GODOT_set_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_bg_color") = _GODOT_set_custom_bg_color;
	void set_custom_bg_color(in int column, in Color color, in bool just_outline = false)
	{
		_GODOT_set_custom_bg_color.bind("TreeItem", "set_custom_bg_color");
		ptrcall!(void)(_GODOT_set_custom_bg_color, _godot_object, column, color, just_outline);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_clear_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_custom_bg_color") = _GODOT_clear_custom_bg_color;
	void clear_custom_bg_color(in int column)
	{
		_GODOT_clear_custom_bg_color.bind("TreeItem", "clear_custom_bg_color");
		ptrcall!(void)(_GODOT_clear_custom_bg_color, _godot_object, column);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_bg_color") = _GODOT_get_custom_bg_color;
	Color get_custom_bg_color(in int column) const
	{
		_GODOT_get_custom_bg_color.bind("TreeItem", "get_custom_bg_color");
		return ptrcall!(Color)(_GODOT_get_custom_bg_color, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_custom_as_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_as_button") = _GODOT_set_custom_as_button;
	void set_custom_as_button(in int column, in bool enable)
	{
		_GODOT_set_custom_as_button.bind("TreeItem", "set_custom_as_button");
		ptrcall!(void)(_GODOT_set_custom_as_button, _godot_object, column, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_custom_set_as_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_custom_set_as_button") = _GODOT_is_custom_set_as_button;
	bool is_custom_set_as_button(in int column) const
	{
		_GODOT_is_custom_set_as_button.bind("TreeItem", "is_custom_set_as_button");
		return ptrcall!(bool)(_GODOT_is_custom_set_as_button, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, Texture, int, bool, String) _GODOT_add_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_button") = _GODOT_add_button;
	void add_button(StringArg4)(in int column, in Texture button, in int button_idx = -1, in bool disabled = false, in StringArg4 tooltip = "")
	{
		_GODOT_add_button.bind("TreeItem", "add_button");
		ptrcall!(void)(_GODOT_add_button, _godot_object, column, button, button_idx, disabled, tooltip);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_button_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_count") = _GODOT_get_button_count;
	int get_button_count(in int column) const
	{
		_GODOT_get_button_count.bind("TreeItem", "get_button_count");
		return ptrcall!(int)(_GODOT_get_button_count, _godot_object, column);
	}
	package(godot) static GodotMethod!(Texture, int, int) _GODOT_get_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button") = _GODOT_get_button;
	Texture get_button(in int column, in int button_idx) const
	{
		_GODOT_get_button.bind("TreeItem", "get_button");
		return ptrcall!(Texture)(_GODOT_get_button, _godot_object, column, button_idx);
	}
	package(godot) static GodotMethod!(void, int, int, Texture) _GODOT_set_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button") = _GODOT_set_button;
	void set_button(in int column, in int button_idx, in Texture button)
	{
		_GODOT_set_button.bind("TreeItem", "set_button");
		ptrcall!(void)(_GODOT_set_button, _godot_object, column, button_idx, button);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_erase_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_button") = _GODOT_erase_button;
	void erase_button(in int column, in int button_idx)
	{
		_GODOT_erase_button.bind("TreeItem", "erase_button");
		ptrcall!(void)(_GODOT_erase_button, _godot_object, column, button_idx);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_is_button_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_button_disabled") = _GODOT_is_button_disabled;
	bool is_button_disabled(in int column, in int button_idx) const
	{
		_GODOT_is_button_disabled.bind("TreeItem", "is_button_disabled");
		return ptrcall!(bool)(_GODOT_is_button_disabled, _godot_object, column, button_idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_expand_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_right") = _GODOT_set_expand_right;
	void set_expand_right(in int column, in bool enable)
	{
		_GODOT_set_expand_right.bind("TreeItem", "set_expand_right");
		ptrcall!(void)(_GODOT_set_expand_right, _godot_object, column, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_expand_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_right") = _GODOT_get_expand_right;
	bool get_expand_right(in int column) const
	{
		_GODOT_get_expand_right.bind("TreeItem", "get_expand_right");
		return ptrcall!(bool)(_GODOT_get_expand_right, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tooltip") = _GODOT_set_tooltip;
	void set_tooltip(StringArg1)(in int column, in StringArg1 tooltip)
	{
		_GODOT_set_tooltip.bind("TreeItem", "set_tooltip");
		ptrcall!(void)(_GODOT_set_tooltip, _godot_object, column, tooltip);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tooltip") = _GODOT_get_tooltip;
	String get_tooltip(in int column) const
	{
		_GODOT_get_tooltip.bind("TreeItem", "get_tooltip");
		return ptrcall!(String)(_GODOT_get_tooltip, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text_align") = _GODOT_set_text_align;
	void set_text_align(in int column, in int text_align)
	{
		_GODOT_set_text_align.bind("TreeItem", "set_text_align");
		ptrcall!(void)(_GODOT_set_text_align, _godot_object, column, text_align);
	}
	package(godot) static GodotMethod!(TreeItem.TextAlign, int) _GODOT_get_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text_align") = _GODOT_get_text_align;
	TreeItem.TextAlign get_text_align(in int column) const
	{
		_GODOT_get_text_align.bind("TreeItem", "get_text_align");
		return ptrcall!(TreeItem.TextAlign)(_GODOT_get_text_align, _godot_object, column);
	}
	package(godot) static GodotMethod!(void) _GODOT_move_to_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_to_top") = _GODOT_move_to_top;
	void move_to_top()
	{
		_GODOT_move_to_top.bind("TreeItem", "move_to_top");
		ptrcall!(void)(_GODOT_move_to_top, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_move_to_bottom;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_to_bottom") = _GODOT_move_to_bottom;
	void move_to_bottom()
	{
		_GODOT_move_to_bottom.bind("TreeItem", "move_to_bottom");
		ptrcall!(void)(_GODOT_move_to_bottom, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_folding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_folding") = _GODOT_set_disable_folding;
	void set_disable_folding(in bool disable)
	{
		_GODOT_set_disable_folding.bind("TreeItem", "set_disable_folding");
		ptrcall!(void)(_GODOT_set_disable_folding, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_folding_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_folding_disabled") = _GODOT_is_folding_disabled;
	bool is_folding_disabled() const
	{
		_GODOT_is_folding_disabled.bind("TreeItem", "is_folding_disabled");
		return ptrcall!(bool)(_GODOT_is_folding_disabled, _godot_object);
	}
}
