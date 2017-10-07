module godot.graphnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.container;
import godot.inputevent;
import godot.texture;
@GodotBaseClass struct GraphNode
{
	static immutable string _GODOT_internal_name = "GraphNode";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GraphNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GraphNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GraphNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GraphNode");
		if(constructor is null) return typeof(this).init;
		return cast(GraphNode)(constructor());
	}
	enum Overlay : int
	{
		OVERLAY_BREAKPOINT = 1,
		OVERLAY_POSITION = 2,
		OVERLAY_DISABLED = 0,
	}
	enum int OVERLAY_BREAKPOINT = 1;
	enum int OVERLAY_POSITION = 2;
	enum int OVERLAY_DISABLED = 0;
	package(godot) static GodotMethod!(void, String) _GODOT_set_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_title") = _GODOT_set_title;
	void set_title(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_title.bind("GraphNode", "set_title");
		ptrcall!(void)(_GODOT_set_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_title") = _GODOT_get_title;
	String get_title() const
	{
		_GODOT_get_title.bind("GraphNode", "get_title");
		return ptrcall!(String)(_GODOT_get_title, _godot_object);
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
	package(godot) static GodotMethod!(void, int, bool, int, Color, bool, int, Color, Texture, Texture) _GODOT_set_slot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_slot") = _GODOT_set_slot;
	void set_slot(in int idx, in bool enable_left, in int type_left, in Color color_left, in bool enable_right, in int type_right, in Color color_right, in Texture custom_left = Texture.init, in Texture custom_right = Texture.init)
	{
		_GODOT_set_slot.bind("GraphNode", "set_slot");
		ptrcall!(void)(_GODOT_set_slot, _godot_object, idx, enable_left, type_left, color_left, enable_right, type_right, color_right, custom_left, custom_right);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_clear_slot;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_slot") = _GODOT_clear_slot;
	void clear_slot(in int idx)
	{
		_GODOT_clear_slot.bind("GraphNode", "clear_slot");
		ptrcall!(void)(_GODOT_clear_slot, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_all_slots;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_all_slots") = _GODOT_clear_all_slots;
	void clear_all_slots()
	{
		_GODOT_clear_all_slots.bind("GraphNode", "clear_all_slots");
		ptrcall!(void)(_GODOT_clear_all_slots, _godot_object);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_slot_enabled_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_slot_enabled_left") = _GODOT_is_slot_enabled_left;
	bool is_slot_enabled_left(in int idx) const
	{
		_GODOT_is_slot_enabled_left.bind("GraphNode", "is_slot_enabled_left");
		return ptrcall!(bool)(_GODOT_is_slot_enabled_left, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_slot_type_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_type_left") = _GODOT_get_slot_type_left;
	int get_slot_type_left(in int idx) const
	{
		_GODOT_get_slot_type_left.bind("GraphNode", "get_slot_type_left");
		return ptrcall!(int)(_GODOT_get_slot_type_left, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_slot_color_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_color_left") = _GODOT_get_slot_color_left;
	Color get_slot_color_left(in int idx) const
	{
		_GODOT_get_slot_color_left.bind("GraphNode", "get_slot_color_left");
		return ptrcall!(Color)(_GODOT_get_slot_color_left, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_slot_enabled_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_slot_enabled_right") = _GODOT_is_slot_enabled_right;
	bool is_slot_enabled_right(in int idx) const
	{
		_GODOT_is_slot_enabled_right.bind("GraphNode", "is_slot_enabled_right");
		return ptrcall!(bool)(_GODOT_is_slot_enabled_right, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_slot_type_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_type_right") = _GODOT_get_slot_type_right;
	int get_slot_type_right(in int idx) const
	{
		_GODOT_get_slot_type_right.bind("GraphNode", "get_slot_type_right");
		return ptrcall!(int)(_GODOT_get_slot_type_right, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_slot_color_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_color_right") = _GODOT_get_slot_color_right;
	Color get_slot_color_right(in int idx) const
	{
		_GODOT_get_slot_color_right.bind("GraphNode", "get_slot_color_right");
		return ptrcall!(Color)(_GODOT_get_slot_color_right, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("GraphNode", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("GraphNode", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_comment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_comment") = _GODOT_set_comment;
	void set_comment(in bool comment)
	{
		_GODOT_set_comment.bind("GraphNode", "set_comment");
		ptrcall!(void)(_GODOT_set_comment, _godot_object, comment);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_comment;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_comment") = _GODOT_is_comment;
	bool is_comment() const
	{
		_GODOT_is_comment.bind("GraphNode", "is_comment");
		return ptrcall!(bool)(_GODOT_is_comment, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_resizable") = _GODOT_set_resizable;
	void set_resizable(in bool resizable)
	{
		_GODOT_set_resizable.bind("GraphNode", "set_resizable");
		ptrcall!(void)(_GODOT_set_resizable, _godot_object, resizable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_resizable") = _GODOT_is_resizable;
	bool is_resizable() const
	{
		_GODOT_is_resizable.bind("GraphNode", "is_resizable");
		return ptrcall!(bool)(_GODOT_is_resizable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selected") = _GODOT_set_selected;
	void set_selected(in bool selected)
	{
		_GODOT_set_selected.bind("GraphNode", "set_selected");
		ptrcall!(void)(_GODOT_set_selected, _godot_object, selected);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selected") = _GODOT_is_selected;
	bool is_selected()
	{
		_GODOT_is_selected.bind("GraphNode", "is_selected");
		return ptrcall!(bool)(_GODOT_is_selected, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_connection_output_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_count") = _GODOT_get_connection_output_count;
	int get_connection_output_count()
	{
		_GODOT_get_connection_output_count.bind("GraphNode", "get_connection_output_count");
		return ptrcall!(int)(_GODOT_get_connection_output_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_connection_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_count") = _GODOT_get_connection_input_count;
	int get_connection_input_count()
	{
		_GODOT_get_connection_input_count.bind("GraphNode", "get_connection_input_count");
		return ptrcall!(int)(_GODOT_get_connection_input_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_connection_output_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_position") = _GODOT_get_connection_output_position;
	Vector2 get_connection_output_position(in int idx)
	{
		_GODOT_get_connection_output_position.bind("GraphNode", "get_connection_output_position");
		return ptrcall!(Vector2)(_GODOT_get_connection_output_position, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_connection_output_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_type") = _GODOT_get_connection_output_type;
	int get_connection_output_type(in int idx)
	{
		_GODOT_get_connection_output_type.bind("GraphNode", "get_connection_output_type");
		return ptrcall!(int)(_GODOT_get_connection_output_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_connection_output_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_color") = _GODOT_get_connection_output_color;
	Color get_connection_output_color(in int idx)
	{
		_GODOT_get_connection_output_color.bind("GraphNode", "get_connection_output_color");
		return ptrcall!(Color)(_GODOT_get_connection_output_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_connection_input_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_position") = _GODOT_get_connection_input_position;
	Vector2 get_connection_input_position(in int idx)
	{
		_GODOT_get_connection_input_position.bind("GraphNode", "get_connection_input_position");
		return ptrcall!(Vector2)(_GODOT_get_connection_input_position, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_connection_input_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_type") = _GODOT_get_connection_input_type;
	int get_connection_input_type(in int idx)
	{
		_GODOT_get_connection_input_type.bind("GraphNode", "get_connection_input_type");
		return ptrcall!(int)(_GODOT_get_connection_input_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_connection_input_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_color") = _GODOT_get_connection_input_color;
	Color get_connection_input_color(in int idx)
	{
		_GODOT_get_connection_input_color.bind("GraphNode", "get_connection_input_color");
		return ptrcall!(Color)(_GODOT_get_connection_input_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_close_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_close_button") = _GODOT_set_show_close_button;
	void set_show_close_button(in bool show)
	{
		_GODOT_set_show_close_button.bind("GraphNode", "set_show_close_button");
		ptrcall!(void)(_GODOT_set_show_close_button, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_close_button_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_close_button_visible") = _GODOT_is_close_button_visible;
	bool is_close_button_visible() const
	{
		_GODOT_is_close_button_visible.bind("GraphNode", "is_close_button_visible");
		return ptrcall!(bool)(_GODOT_is_close_button_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_overlay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_overlay") = _GODOT_set_overlay;
	void set_overlay(in int overlay)
	{
		_GODOT_set_overlay.bind("GraphNode", "set_overlay");
		ptrcall!(void)(_GODOT_set_overlay, _godot_object, overlay);
	}
	package(godot) static GodotMethod!(GraphNode.Overlay) _GODOT_get_overlay;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_overlay") = _GODOT_get_overlay;
	GraphNode.Overlay get_overlay() const
	{
		_GODOT_get_overlay.bind("GraphNode", "get_overlay");
		return ptrcall!(GraphNode.Overlay)(_GODOT_get_overlay, _godot_object);
	}
}
