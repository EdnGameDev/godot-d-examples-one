module godot.optionbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.button;
import godot.texture;
@GodotBaseClass struct OptionButton
{
	static immutable string _GODOT_internal_name = "OptionButton";
public:
	union { godot_object _godot_object; Button base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in OptionButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OptionButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OptionButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("OptionButton");
		if(constructor is null) return typeof(this).init;
		return cast(OptionButton)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT__selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_selected") = _GODOT__selected;
	void _selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_add_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_item") = _GODOT_add_item;
	void add_item(StringArg0)(in StringArg0 label, in int id = -1)
	{
		_GODOT_add_item.bind("OptionButton", "add_item");
		ptrcall!(void)(_GODOT_add_item, _godot_object, label, id);
	}
	package(godot) static GodotMethod!(void, Texture, String, int) _GODOT_add_icon_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_item") = _GODOT_add_icon_item;
	void add_icon_item(StringArg1)(in Texture texture, in StringArg1 label, in int id)
	{
		_GODOT_add_icon_item.bind("OptionButton", "add_icon_item");
		ptrcall!(void)(_GODOT_add_icon_item, _godot_object, texture, label, id);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_text") = _GODOT_set_item_text;
	void set_item_text(StringArg1)(in int idx, in StringArg1 text)
	{
		_GODOT_set_item_text.bind("OptionButton", "set_item_text");
		ptrcall!(void)(_GODOT_set_item_text, _godot_object, idx, text);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon") = _GODOT_set_item_icon;
	void set_item_icon(in int idx, in Texture texture)
	{
		_GODOT_set_item_icon.bind("OptionButton", "set_item_icon");
		ptrcall!(void)(_GODOT_set_item_icon, _godot_object, idx, texture);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_disabled") = _GODOT_set_item_disabled;
	void set_item_disabled(in int idx, in bool disabled)
	{
		_GODOT_set_item_disabled.bind("OptionButton", "set_item_disabled");
		ptrcall!(void)(_GODOT_set_item_disabled, _godot_object, idx, disabled);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_id") = _GODOT_set_item_id;
	void set_item_id(in int idx, in int id)
	{
		_GODOT_set_item_id.bind("OptionButton", "set_item_id");
		ptrcall!(void)(_GODOT_set_item_id, _godot_object, idx, id);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_metadata") = _GODOT_set_item_metadata;
	void set_item_metadata(VariantArg1)(in int idx, in VariantArg1 metadata)
	{
		_GODOT_set_item_metadata.bind("OptionButton", "set_item_metadata");
		ptrcall!(void)(_GODOT_set_item_metadata, _godot_object, idx, metadata);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_text") = _GODOT_get_item_text;
	String get_item_text(in int idx) const
	{
		_GODOT_get_item_text.bind("OptionButton", "get_item_text");
		return ptrcall!(String)(_GODOT_get_item_text, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon") = _GODOT_get_item_icon;
	Texture get_item_icon(in int idx) const
	{
		_GODOT_get_item_icon.bind("OptionButton", "get_item_icon");
		return ptrcall!(Texture)(_GODOT_get_item_icon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_id") = _GODOT_get_item_id;
	int get_item_id(in int idx) const
	{
		_GODOT_get_item_id.bind("OptionButton", "get_item_id");
		return ptrcall!(int)(_GODOT_get_item_id, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_metadata") = _GODOT_get_item_metadata;
	Variant get_item_metadata(in int idx) const
	{
		_GODOT_get_item_metadata.bind("OptionButton", "get_item_metadata");
		return ptrcall!(Variant)(_GODOT_get_item_metadata, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_disabled") = _GODOT_is_item_disabled;
	bool is_item_disabled(in int idx) const
	{
		_GODOT_is_item_disabled.bind("OptionButton", "is_item_disabled");
		return ptrcall!(bool)(_GODOT_is_item_disabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_item_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_count") = _GODOT_get_item_count;
	int get_item_count() const
	{
		_GODOT_get_item_count.bind("OptionButton", "get_item_count");
		return ptrcall!(int)(_GODOT_get_item_count, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_add_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_separator") = _GODOT_add_separator;
	void add_separator()
	{
		_GODOT_add_separator.bind("OptionButton", "add_separator");
		ptrcall!(void)(_GODOT_add_separator, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("OptionButton", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	void select(in int idx)
	{
		_GODOT_select.bind("OptionButton", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected") = _GODOT_get_selected;
	int get_selected() const
	{
		_GODOT_get_selected.bind("OptionButton", "get_selected");
		return ptrcall!(int)(_GODOT_get_selected, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_selected_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_id") = _GODOT_get_selected_id;
	int get_selected_id() const
	{
		_GODOT_get_selected_id.bind("OptionButton", "get_selected_id");
		return ptrcall!(int)(_GODOT_get_selected_id, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_selected_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_metadata") = _GODOT_get_selected_metadata;
	Variant get_selected_metadata() const
	{
		_GODOT_get_selected_metadata.bind("OptionButton", "get_selected_metadata");
		return ptrcall!(Variant)(_GODOT_get_selected_metadata, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	void remove_item(in int idx)
	{
		_GODOT_remove_item.bind("OptionButton", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__select_int;
	package(godot) alias _GODOT_methodBindInfo(string name : "_select_int") = _GODOT__select_int;
	void _select_int(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_int");
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
