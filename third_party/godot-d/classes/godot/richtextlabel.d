module godot.richtextlabel;
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
import godot.texture;
import godot.font;
import godot.vscrollbar;
@GodotBaseClass struct RichTextLabel
{
	static immutable string _GODOT_internal_name = "RichTextLabel";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RichTextLabel other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RichTextLabel opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RichTextLabel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RichTextLabel");
		if(constructor is null) return typeof(this).init;
		return cast(RichTextLabel)(constructor());
	}
	enum Align : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
		ALIGN_FILL = 3,
	}
	enum ListType : int
	{
		LIST_LETTERS = 1,
		LIST_DOTS = 2,
		LIST_NUMBERS = 0,
	}
	enum ItemType : int
	{
		ITEM_IMAGE = 2,
		ITEM_ALIGN = 7,
		ITEM_FRAME = 0,
		ITEM_META = 11,
		ITEM_TEXT = 1,
		ITEM_FONT = 4,
		ITEM_COLOR = 5,
		ITEM_UNDERLINE = 6,
		ITEM_LIST = 9,
		ITEM_NEWLINE = 3,
		ITEM_INDENT = 8,
	}
	enum int LIST_DOTS = 2;
	enum int ALIGN_FILL = 3;
	enum int ITEM_IMAGE = 2;
	enum int ITEM_ALIGN = 7;
	enum int ITEM_FRAME = 0;
	enum int ITEM_META = 11;
	enum int LIST_LETTERS = 1;
	enum int ITEM_TEXT = 1;
	enum int ITEM_COLOR = 5;
	enum int ITEM_FONT = 4;
	enum int ITEM_UNDERLINE = 6;
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
	enum int ITEM_NEWLINE = 3;
	enum int ITEM_INDENT = 8;
	enum int LIST_NUMBERS = 0;
	enum int ITEM_LIST = 9;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text()
	{
		_GODOT_get_text.bind("RichTextLabel", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_text") = _GODOT_add_text;
	void add_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_add_text.bind("RichTextLabel", "add_text");
		ptrcall!(void)(_GODOT_add_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("RichTextLabel", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_add_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_image") = _GODOT_add_image;
	void add_image(in Texture image)
	{
		_GODOT_add_image.bind("RichTextLabel", "add_image");
		ptrcall!(void)(_GODOT_add_image, _godot_object, image);
	}
	package(godot) static GodotMethod!(void) _GODOT_newline;
	package(godot) alias _GODOT_methodBindInfo(string name : "newline") = _GODOT_newline;
	void newline()
	{
		_GODOT_newline.bind("RichTextLabel", "newline");
		ptrcall!(void)(_GODOT_newline, _godot_object);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_remove_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_line") = _GODOT_remove_line;
	bool remove_line(in int line)
	{
		_GODOT_remove_line.bind("RichTextLabel", "remove_line");
		return ptrcall!(bool)(_GODOT_remove_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, Font) _GODOT_push_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_font") = _GODOT_push_font;
	void push_font(in Font font)
	{
		_GODOT_push_font.bind("RichTextLabel", "push_font");
		ptrcall!(void)(_GODOT_push_font, _godot_object, font);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_push_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_color") = _GODOT_push_color;
	void push_color(in Color color)
	{
		_GODOT_push_color.bind("RichTextLabel", "push_color");
		ptrcall!(void)(_GODOT_push_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_push_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_align") = _GODOT_push_align;
	void push_align(in int _align)
	{
		_GODOT_push_align.bind("RichTextLabel", "push_align");
		ptrcall!(void)(_GODOT_push_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_push_indent;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_indent") = _GODOT_push_indent;
	void push_indent(in int level)
	{
		_GODOT_push_indent.bind("RichTextLabel", "push_indent");
		ptrcall!(void)(_GODOT_push_indent, _godot_object, level);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_push_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_list") = _GODOT_push_list;
	void push_list(in int type)
	{
		_GODOT_push_list.bind("RichTextLabel", "push_list");
		ptrcall!(void)(_GODOT_push_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_push_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_meta") = _GODOT_push_meta;
	void push_meta(VariantArg0)(in VariantArg0 data)
	{
		_GODOT_push_meta.bind("RichTextLabel", "push_meta");
		ptrcall!(void)(_GODOT_push_meta, _godot_object, data);
	}
	package(godot) static GodotMethod!(void) _GODOT_push_underline;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_underline") = _GODOT_push_underline;
	void push_underline()
	{
		_GODOT_push_underline.bind("RichTextLabel", "push_underline");
		ptrcall!(void)(_GODOT_push_underline, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_push_table;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_table") = _GODOT_push_table;
	void push_table(in int columns)
	{
		_GODOT_push_table.bind("RichTextLabel", "push_table");
		ptrcall!(void)(_GODOT_push_table, _godot_object, columns);
	}
	package(godot) static GodotMethod!(void, int, bool, int) _GODOT_set_table_column_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_table_column_expand") = _GODOT_set_table_column_expand;
	void set_table_column_expand(in int column, in bool expand, in int ratio)
	{
		_GODOT_set_table_column_expand.bind("RichTextLabel", "set_table_column_expand");
		ptrcall!(void)(_GODOT_set_table_column_expand, _godot_object, column, expand, ratio);
	}
	package(godot) static GodotMethod!(void) _GODOT_push_cell;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_cell") = _GODOT_push_cell;
	void push_cell()
	{
		_GODOT_push_cell.bind("RichTextLabel", "push_cell");
		ptrcall!(void)(_GODOT_push_cell, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_pop;
	package(godot) alias _GODOT_methodBindInfo(string name : "pop") = _GODOT_pop;
	void pop()
	{
		_GODOT_pop.bind("RichTextLabel", "pop");
		ptrcall!(void)(_GODOT_pop, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("RichTextLabel", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_meta_underline;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_meta_underline") = _GODOT_set_meta_underline;
	void set_meta_underline(in bool enable)
	{
		_GODOT_set_meta_underline.bind("RichTextLabel", "set_meta_underline");
		ptrcall!(void)(_GODOT_set_meta_underline, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_meta_underlined;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_meta_underlined") = _GODOT_is_meta_underlined;
	bool is_meta_underlined() const
	{
		_GODOT_is_meta_underlined.bind("RichTextLabel", "is_meta_underlined");
		return ptrcall!(bool)(_GODOT_is_meta_underlined, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scroll_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_active") = _GODOT_set_scroll_active;
	void set_scroll_active(in bool active)
	{
		_GODOT_set_scroll_active.bind("RichTextLabel", "set_scroll_active");
		ptrcall!(void)(_GODOT_set_scroll_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_scroll_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scroll_active") = _GODOT_is_scroll_active;
	bool is_scroll_active() const
	{
		_GODOT_is_scroll_active.bind("RichTextLabel", "is_scroll_active");
		return ptrcall!(bool)(_GODOT_is_scroll_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scroll_follow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_follow") = _GODOT_set_scroll_follow;
	void set_scroll_follow(in bool follow)
	{
		_GODOT_set_scroll_follow.bind("RichTextLabel", "set_scroll_follow");
		ptrcall!(void)(_GODOT_set_scroll_follow, _godot_object, follow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_scroll_following;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scroll_following") = _GODOT_is_scroll_following;
	bool is_scroll_following() const
	{
		_GODOT_is_scroll_following.bind("RichTextLabel", "is_scroll_following");
		return ptrcall!(bool)(_GODOT_is_scroll_following, _godot_object);
	}
	package(godot) static GodotMethod!(VScrollBar) _GODOT_get_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll") = _GODOT_get_v_scroll;
	VScrollBar get_v_scroll()
	{
		_GODOT_get_v_scroll.bind("RichTextLabel", "get_v_scroll");
		return ptrcall!(VScrollBar)(_GODOT_get_v_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_scroll_to_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "scroll_to_line") = _GODOT_scroll_to_line;
	void scroll_to_line(in int line)
	{
		_GODOT_scroll_to_line.bind("RichTextLabel", "scroll_to_line");
		ptrcall!(void)(_GODOT_scroll_to_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tab_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_size") = _GODOT_set_tab_size;
	void set_tab_size(in int spaces)
	{
		_GODOT_set_tab_size.bind("RichTextLabel", "set_tab_size");
		ptrcall!(void)(_GODOT_set_tab_size, _godot_object, spaces);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_tab_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_size") = _GODOT_get_tab_size;
	int get_tab_size() const
	{
		_GODOT_get_tab_size.bind("RichTextLabel", "get_tab_size");
		return ptrcall!(int)(_GODOT_get_tab_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_selection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selection_enabled") = _GODOT_set_selection_enabled;
	void set_selection_enabled(in bool enabled)
	{
		_GODOT_set_selection_enabled.bind("RichTextLabel", "set_selection_enabled");
		ptrcall!(void)(_GODOT_set_selection_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_selection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selection_enabled") = _GODOT_is_selection_enabled;
	bool is_selection_enabled() const
	{
		_GODOT_is_selection_enabled.bind("RichTextLabel", "is_selection_enabled");
		return ptrcall!(bool)(_GODOT_is_selection_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_parse_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "parse_bbcode") = _GODOT_parse_bbcode;
	GodotError parse_bbcode(StringArg0)(in StringArg0 bbcode)
	{
		_GODOT_parse_bbcode.bind("RichTextLabel", "parse_bbcode");
		return ptrcall!(GodotError)(_GODOT_parse_bbcode, _godot_object, bbcode);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_append_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "append_bbcode") = _GODOT_append_bbcode;
	GodotError append_bbcode(StringArg0)(in StringArg0 bbcode)
	{
		_GODOT_append_bbcode.bind("RichTextLabel", "append_bbcode");
		return ptrcall!(GodotError)(_GODOT_append_bbcode, _godot_object, bbcode);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bbcode") = _GODOT_set_bbcode;
	void set_bbcode(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_bbcode.bind("RichTextLabel", "set_bbcode");
		ptrcall!(void)(_GODOT_set_bbcode, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bbcode") = _GODOT_get_bbcode;
	String get_bbcode() const
	{
		_GODOT_get_bbcode.bind("RichTextLabel", "get_bbcode");
		return ptrcall!(String)(_GODOT_get_bbcode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible_characters") = _GODOT_set_visible_characters;
	void set_visible_characters(in int amount)
	{
		_GODOT_set_visible_characters.bind("RichTextLabel", "set_visible_characters");
		ptrcall!(void)(_GODOT_set_visible_characters, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_characters") = _GODOT_get_visible_characters;
	int get_visible_characters() const
	{
		_GODOT_get_visible_characters.bind("RichTextLabel", "get_visible_characters");
		return ptrcall!(int)(_GODOT_get_visible_characters, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_percent_visible") = _GODOT_set_percent_visible;
	void set_percent_visible(in float percent_visible)
	{
		_GODOT_set_percent_visible.bind("RichTextLabel", "set_percent_visible");
		ptrcall!(void)(_GODOT_set_percent_visible, _godot_object, percent_visible);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_percent_visible") = _GODOT_get_percent_visible;
	float get_percent_visible() const
	{
		_GODOT_get_percent_visible.bind("RichTextLabel", "get_percent_visible");
		return ptrcall!(float)(_GODOT_get_percent_visible, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_total_character_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_character_count") = _GODOT_get_total_character_count;
	int get_total_character_count() const
	{
		_GODOT_get_total_character_count.bind("RichTextLabel", "get_total_character_count");
		return ptrcall!(int)(_GODOT_get_total_character_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_bbcode") = _GODOT_set_use_bbcode;
	void set_use_bbcode(in bool enable)
	{
		_GODOT_set_use_bbcode.bind("RichTextLabel", "set_use_bbcode");
		ptrcall!(void)(_GODOT_set_use_bbcode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_bbcode") = _GODOT_is_using_bbcode;
	bool is_using_bbcode() const
	{
		_GODOT_is_using_bbcode.bind("RichTextLabel", "is_using_bbcode");
		return ptrcall!(bool)(_GODOT_is_using_bbcode, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_count") = _GODOT_get_line_count;
	int get_line_count() const
	{
		_GODOT_get_line_count.bind("RichTextLabel", "get_line_count");
		return ptrcall!(int)(_GODOT_get_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_visible_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_line_count") = _GODOT_get_visible_line_count;
	int get_visible_line_count() const
	{
		_GODOT_get_visible_line_count.bind("RichTextLabel", "get_visible_line_count");
		return ptrcall!(int)(_GODOT_get_visible_line_count, _godot_object);
	}
}
