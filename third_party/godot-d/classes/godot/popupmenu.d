module godot.popupmenu;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.popup;
import godot.inputevent;
import godot.texture;
import godot.shortcut;
@GodotBaseClass struct PopupMenu
{
	static immutable string _GODOT_internal_name = "PopupMenu";
public:
	union { godot_object _godot_object; Popup base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PopupMenu other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PopupMenu opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PopupMenu _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PopupMenu");
		if(constructor is null) return typeof(this).init;
		return cast(PopupMenu)(constructor());
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
	package(godot) static GodotMethod!(void, Texture, String, int, int) _GODOT_add_icon_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_item") = _GODOT_add_icon_item;
	void add_icon_item(StringArg1)(in Texture texture, in StringArg1 label, in int id = -1, in int accel = 0)
	{
		_GODOT_add_icon_item.bind("PopupMenu", "add_icon_item");
		ptrcall!(void)(_GODOT_add_icon_item, _godot_object, texture, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, int, int) _GODOT_add_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_item") = _GODOT_add_item;
	void add_item(StringArg0)(in StringArg0 label, in int id = -1, in int accel = 0)
	{
		_GODOT_add_item.bind("PopupMenu", "add_item");
		ptrcall!(void)(_GODOT_add_item, _godot_object, label, id, accel);
	}
	package(godot) static GodotMethod!(void, Texture, String, int, int) _GODOT_add_icon_check_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_check_item") = _GODOT_add_icon_check_item;
	void add_icon_check_item(StringArg1)(in Texture texture, in StringArg1 label, in int id = -1, in int accel = 0)
	{
		_GODOT_add_icon_check_item.bind("PopupMenu", "add_icon_check_item");
		ptrcall!(void)(_GODOT_add_icon_check_item, _godot_object, texture, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, int, int) _GODOT_add_check_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_check_item") = _GODOT_add_check_item;
	void add_check_item(StringArg0)(in StringArg0 label, in int id = -1, in int accel = 0)
	{
		_GODOT_add_check_item.bind("PopupMenu", "add_check_item");
		ptrcall!(void)(_GODOT_add_check_item, _godot_object, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, String, int) _GODOT_add_submenu_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_submenu_item") = _GODOT_add_submenu_item;
	void add_submenu_item(StringArg0, StringArg1)(in StringArg0 label, in StringArg1 submenu, in int id = -1)
	{
		_GODOT_add_submenu_item.bind("PopupMenu", "add_submenu_item");
		ptrcall!(void)(_GODOT_add_submenu_item, _godot_object, label, submenu, id);
	}
	package(godot) static GodotMethod!(void, Texture, ShortCut, int, bool) _GODOT_add_icon_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_shortcut") = _GODOT_add_icon_shortcut;
	void add_icon_shortcut(in Texture texture, in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		_GODOT_add_icon_shortcut.bind("PopupMenu", "add_icon_shortcut");
		ptrcall!(void)(_GODOT_add_icon_shortcut, _godot_object, texture, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, ShortCut, int, bool) _GODOT_add_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_shortcut") = _GODOT_add_shortcut;
	void add_shortcut(in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		_GODOT_add_shortcut.bind("PopupMenu", "add_shortcut");
		ptrcall!(void)(_GODOT_add_shortcut, _godot_object, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, Texture, ShortCut, int, bool) _GODOT_add_icon_check_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_check_shortcut") = _GODOT_add_icon_check_shortcut;
	void add_icon_check_shortcut(in Texture texture, in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		_GODOT_add_icon_check_shortcut.bind("PopupMenu", "add_icon_check_shortcut");
		ptrcall!(void)(_GODOT_add_icon_check_shortcut, _godot_object, texture, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, ShortCut, int, bool) _GODOT_add_check_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_check_shortcut") = _GODOT_add_check_shortcut;
	void add_check_shortcut(in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		_GODOT_add_check_shortcut.bind("PopupMenu", "add_check_shortcut");
		ptrcall!(void)(_GODOT_add_check_shortcut, _godot_object, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_text") = _GODOT_set_item_text;
	void set_item_text(StringArg1)(in int idx, in StringArg1 text)
	{
		_GODOT_set_item_text.bind("PopupMenu", "set_item_text");
		ptrcall!(void)(_GODOT_set_item_text, _godot_object, idx, text);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon") = _GODOT_set_item_icon;
	void set_item_icon(in int idx, in Texture icon)
	{
		_GODOT_set_item_icon.bind("PopupMenu", "set_item_icon");
		ptrcall!(void)(_GODOT_set_item_icon, _godot_object, idx, icon);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_checked") = _GODOT_set_item_checked;
	void set_item_checked(in int idx, in bool checked)
	{
		_GODOT_set_item_checked.bind("PopupMenu", "set_item_checked");
		ptrcall!(void)(_GODOT_set_item_checked, _godot_object, idx, checked);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_id") = _GODOT_set_item_id;
	void set_item_id(in int idx, in int id)
	{
		_GODOT_set_item_id.bind("PopupMenu", "set_item_id");
		ptrcall!(void)(_GODOT_set_item_id, _godot_object, idx, id);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_item_accelerator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_accelerator") = _GODOT_set_item_accelerator;
	void set_item_accelerator(in int idx, in int accel)
	{
		_GODOT_set_item_accelerator.bind("PopupMenu", "set_item_accelerator");
		ptrcall!(void)(_GODOT_set_item_accelerator, _godot_object, idx, accel);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_metadata") = _GODOT_set_item_metadata;
	void set_item_metadata(VariantArg1)(in int idx, in VariantArg1 metadata)
	{
		_GODOT_set_item_metadata.bind("PopupMenu", "set_item_metadata");
		ptrcall!(void)(_GODOT_set_item_metadata, _godot_object, idx, metadata);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_disabled") = _GODOT_set_item_disabled;
	void set_item_disabled(in int idx, in bool disabled)
	{
		_GODOT_set_item_disabled.bind("PopupMenu", "set_item_disabled");
		ptrcall!(void)(_GODOT_set_item_disabled, _godot_object, idx, disabled);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_submenu;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_submenu") = _GODOT_set_item_submenu;
	void set_item_submenu(StringArg1)(in int idx, in StringArg1 submenu)
	{
		_GODOT_set_item_submenu.bind("PopupMenu", "set_item_submenu");
		ptrcall!(void)(_GODOT_set_item_submenu, _godot_object, idx, submenu);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_as_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_as_separator") = _GODOT_set_item_as_separator;
	void set_item_as_separator(in int idx, in bool enable)
	{
		_GODOT_set_item_as_separator.bind("PopupMenu", "set_item_as_separator");
		ptrcall!(void)(_GODOT_set_item_as_separator, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_as_checkable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_as_checkable") = _GODOT_set_item_as_checkable;
	void set_item_as_checkable(in int idx, in bool enable)
	{
		_GODOT_set_item_as_checkable.bind("PopupMenu", "set_item_as_checkable");
		ptrcall!(void)(_GODOT_set_item_as_checkable, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_tooltip") = _GODOT_set_item_tooltip;
	void set_item_tooltip(StringArg1)(in int idx, in StringArg1 tooltip)
	{
		_GODOT_set_item_tooltip.bind("PopupMenu", "set_item_tooltip");
		ptrcall!(void)(_GODOT_set_item_tooltip, _godot_object, idx, tooltip);
	}
	package(godot) static GodotMethod!(void, int, ShortCut, bool) _GODOT_set_item_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_shortcut") = _GODOT_set_item_shortcut;
	void set_item_shortcut(in int idx, in ShortCut shortcut, in bool global = false)
	{
		_GODOT_set_item_shortcut.bind("PopupMenu", "set_item_shortcut");
		ptrcall!(void)(_GODOT_set_item_shortcut, _godot_object, idx, shortcut, global);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_toggle_item_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "toggle_item_checked") = _GODOT_toggle_item_checked;
	void toggle_item_checked(in int idx)
	{
		_GODOT_toggle_item_checked.bind("PopupMenu", "toggle_item_checked");
		ptrcall!(void)(_GODOT_toggle_item_checked, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_text") = _GODOT_get_item_text;
	String get_item_text(in int idx) const
	{
		_GODOT_get_item_text.bind("PopupMenu", "get_item_text");
		return ptrcall!(String)(_GODOT_get_item_text, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon") = _GODOT_get_item_icon;
	Texture get_item_icon(in int idx) const
	{
		_GODOT_get_item_icon.bind("PopupMenu", "get_item_icon");
		return ptrcall!(Texture)(_GODOT_get_item_icon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_checked") = _GODOT_is_item_checked;
	bool is_item_checked(in int idx) const
	{
		_GODOT_is_item_checked.bind("PopupMenu", "is_item_checked");
		return ptrcall!(bool)(_GODOT_is_item_checked, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_id") = _GODOT_get_item_id;
	int get_item_id(in int idx) const
	{
		_GODOT_get_item_id.bind("PopupMenu", "get_item_id");
		return ptrcall!(int)(_GODOT_get_item_id, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_item_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_index") = _GODOT_get_item_index;
	int get_item_index(in int id) const
	{
		_GODOT_get_item_index.bind("PopupMenu", "get_item_index");
		return ptrcall!(int)(_GODOT_get_item_index, _godot_object, id);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_item_accelerator;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_accelerator") = _GODOT_get_item_accelerator;
	int get_item_accelerator(in int idx) const
	{
		_GODOT_get_item_accelerator.bind("PopupMenu", "get_item_accelerator");
		return ptrcall!(int)(_GODOT_get_item_accelerator, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_metadata") = _GODOT_get_item_metadata;
	Variant get_item_metadata(in int idx) const
	{
		_GODOT_get_item_metadata.bind("PopupMenu", "get_item_metadata");
		return ptrcall!(Variant)(_GODOT_get_item_metadata, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_disabled") = _GODOT_is_item_disabled;
	bool is_item_disabled(in int idx) const
	{
		_GODOT_is_item_disabled.bind("PopupMenu", "is_item_disabled");
		return ptrcall!(bool)(_GODOT_is_item_disabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_submenu;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_submenu") = _GODOT_get_item_submenu;
	String get_item_submenu(in int idx) const
	{
		_GODOT_get_item_submenu.bind("PopupMenu", "get_item_submenu");
		return ptrcall!(String)(_GODOT_get_item_submenu, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_separator") = _GODOT_is_item_separator;
	bool is_item_separator(in int idx) const
	{
		_GODOT_is_item_separator.bind("PopupMenu", "is_item_separator");
		return ptrcall!(bool)(_GODOT_is_item_separator, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_checkable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_checkable") = _GODOT_is_item_checkable;
	bool is_item_checkable(in int idx) const
	{
		_GODOT_is_item_checkable.bind("PopupMenu", "is_item_checkable");
		return ptrcall!(bool)(_GODOT_is_item_checkable, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_tooltip") = _GODOT_get_item_tooltip;
	String get_item_tooltip(in int idx) const
	{
		_GODOT_get_item_tooltip.bind("PopupMenu", "get_item_tooltip");
		return ptrcall!(String)(_GODOT_get_item_tooltip, _godot_object, idx);
	}
	package(godot) static GodotMethod!(ShortCut, int) _GODOT_get_item_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_shortcut") = _GODOT_get_item_shortcut;
	ShortCut get_item_shortcut(in int idx) const
	{
		_GODOT_get_item_shortcut.bind("PopupMenu", "get_item_shortcut");
		return ptrcall!(ShortCut)(_GODOT_get_item_shortcut, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_item_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_count") = _GODOT_get_item_count;
	int get_item_count() const
	{
		_GODOT_get_item_count.bind("PopupMenu", "get_item_count");
		return ptrcall!(int)(_GODOT_get_item_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	void remove_item(in int idx)
	{
		_GODOT_remove_item.bind("PopupMenu", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_add_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_separator") = _GODOT_add_separator;
	void add_separator()
	{
		_GODOT_add_separator.bind("PopupMenu", "add_separator");
		ptrcall!(void)(_GODOT_add_separator, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("PopupMenu", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
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
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_item_selection") = _GODOT_set_hide_on_item_selection;
	void set_hide_on_item_selection(in bool enable)
	{
		_GODOT_set_hide_on_item_selection.bind("PopupMenu", "set_hide_on_item_selection");
		ptrcall!(void)(_GODOT_set_hide_on_item_selection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hide_on_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hide_on_item_selection") = _GODOT_is_hide_on_item_selection;
	bool is_hide_on_item_selection()
	{
		_GODOT_is_hide_on_item_selection.bind("PopupMenu", "is_hide_on_item_selection");
		return ptrcall!(bool)(_GODOT_is_hide_on_item_selection, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_checkable_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_checkable_item_selection") = _GODOT_set_hide_on_checkable_item_selection;
	void set_hide_on_checkable_item_selection(in bool enable)
	{
		_GODOT_set_hide_on_checkable_item_selection.bind("PopupMenu", "set_hide_on_checkable_item_selection");
		ptrcall!(void)(_GODOT_set_hide_on_checkable_item_selection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hide_on_checkable_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hide_on_checkable_item_selection") = _GODOT_is_hide_on_checkable_item_selection;
	bool is_hide_on_checkable_item_selection()
	{
		_GODOT_is_hide_on_checkable_item_selection.bind("PopupMenu", "is_hide_on_checkable_item_selection");
		return ptrcall!(bool)(_GODOT_is_hide_on_checkable_item_selection, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__submenu_timeout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_submenu_timeout") = _GODOT__submenu_timeout;
	void _submenu_timeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_submenu_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
