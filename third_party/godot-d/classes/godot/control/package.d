module godot.control;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.canvasitem;
import godot.inputevent;
import godot.theme;
import godot.texture;
import godot.shader;
import godot.stylebox;
import godot.font;
@GodotBaseClass struct Control
{
	static immutable string _GODOT_internal_name = "Control";
public:
	union { godot_object _godot_object; CanvasItem base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Control other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Control opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Control _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Control");
		if(constructor is null) return typeof(this).init;
		return cast(Control)(constructor());
	}
	enum Anchor : int
	{
		ANCHOR_BEGIN = 0,
		ANCHOR_END = 1,
	}
	enum FocusMode : int
	{
		FOCUS_NONE = 0,
		FOCUS_ALL = 2,
		FOCUS_CLICK = 1,
	}
	enum LayoutPresetMode : int
	{
		PRESET_MODE_MINSIZE = 0,
		PRESET_MODE_KEEP_SIZE = 3,
		PRESET_MODE_KEEP_WIDTH = 1,
		PRESET_MODE_KEEP_HEIGHT = 2,
	}
	enum MouseFilter : int
	{
		MOUSE_FILTER_PASS = 1,
		MOUSE_FILTER_IGNORE = 2,
		MOUSE_FILTER_STOP = 0,
	}
	enum CursorShape : int
	{
		CURSOR_FORBIDDEN = 8,
		CURSOR_HSPLIT = 15,
		CURSOR_FDIAGSIZE = 12,
		CURSOR_CROSS = 3,
		CURSOR_CAN_DROP = 7,
		CURSOR_VSIZE = 9,
		CURSOR_IBEAM = 1,
		CURSOR_VSPLIT = 14,
		CURSOR_MOVE = 13,
		CURSOR_HELP = 16,
		CURSOR_ARROW = 0,
		CURSOR_WAIT = 4,
		CURSOR_DRAG = 6,
		CURSOR_BDIAGSIZE = 11,
		CURSOR_POINTING_HAND = 2,
		CURSOR_HSIZE = 10,
		CURSOR_BUSY = 5,
	}
	enum GrowDirection : int
	{
		GROW_DIRECTION_BEGIN = 0,
		GROW_DIRECTION_END = 1,
	}
	enum SizeFlags : int
	{
		SIZE_EXPAND_FILL = 3,
		SIZE_EXPAND = 2,
		SIZE_SHRINK_CENTER = 4,
		SIZE_FILL = 1,
		SIZE_SHRINK_END = 8,
	}
	enum LayoutPreset : int
	{
		PRESET_CENTER_TOP = 5,
		PRESET_CENTER = 8,
		PRESET_BOTTOM_LEFT = 2,
		PRESET_BOTTOM_WIDE = 12,
		PRESET_HCENTER_WIDE = 14,
		PRESET_RIGHT_WIDE = 11,
		PRESET_TOP_RIGHT = 1,
		PRESET_CENTER_BOTTOM = 7,
		PRESET_BOTTOM_RIGHT = 3,
		PRESET_VCENTER_WIDE = 13,
		PRESET_LEFT_WIDE = 9,
		PRESET_CENTER_RIGHT = 6,
		PRESET_TOP_WIDE = 10,
		PRESET_WIDE = 15,
		PRESET_CENTER_LEFT = 4,
		PRESET_TOP_LEFT = 0,
	}
	enum int FOCUS_ALL = 2;
	enum int CURSOR_HSPLIT = 15;
	enum int CURSOR_FDIAGSIZE = 12;
	enum int NOTIFICATION_THEME_CHANGED = 45;
	enum int NOTIFICATION_MODAL_CLOSE = 46;
	enum int CURSOR_VSIZE = 9;
	enum int CURSOR_IBEAM = 1;
	enum int PRESET_BOTTOM_WIDE = 12;
	enum int SIZE_FILL = 1;
	enum int SIZE_SHRINK_END = 8;
	enum int SIZE_SHRINK_CENTER = 4;
	enum int CURSOR_ARROW = 0;
	enum int CURSOR_DRAG = 6;
	enum int PRESET_TOP_WIDE = 10;
	enum int CURSOR_BDIAGSIZE = 11;
	enum int GROW_DIRECTION_BEGIN = 0;
	enum int PRESET_CENTER_LEFT = 4;
	enum int ANCHOR_BEGIN = 0;
	enum int CURSOR_FORBIDDEN = 8;
	enum int PRESET_CENTER = 8;
	enum int FOCUS_CLICK = 1;
	enum int PRESET_MODE_MINSIZE = 0;
	enum int CURSOR_CROSS = 3;
	enum int SIZE_EXPAND_FILL = 3;
	enum int SIZE_EXPAND = 2;
	enum int PRESET_VCENTER_WIDE = 13;
	enum int NOTIFICATION_FOCUS_ENTER = 43;
	enum int CURSOR_WAIT = 4;
	enum int NOTIFICATION_RESIZED = 40;
	enum int PRESET_WIDE = 15;
	enum int NOTIFICATION_MOUSE_ENTER = 41;
	enum int CURSOR_POINTING_HAND = 2;
	enum int CURSOR_HSIZE = 10;
	enum int CURSOR_BUSY = 5;
	enum int NOTIFICATION_MOUSE_EXIT = 42;
	enum int PRESET_CENTER_TOP = 5;
	enum int ANCHOR_END = 1;
	enum int PRESET_MODE_KEEP_WIDTH = 1;
	enum int PRESET_HCENTER_WIDE = 14;
	enum int CURSOR_VSPLIT = 14;
	enum int PRESET_MODE_KEEP_SIZE = 3;
	enum int PRESET_BOTTOM_RIGHT = 3;
	enum int NOTIFICATION_FOCUS_EXIT = 44;
	enum int PRESET_LEFT_WIDE = 9;
	enum int PRESET_CENTER_RIGHT = 6;
	enum int GROW_DIRECTION_END = 1;
	enum int PRESET_TOP_LEFT = 0;
	enum int FOCUS_NONE = 0;
	enum int PRESET_BOTTOM_LEFT = 2;
	enum int MOUSE_FILTER_STOP = 0;
	enum int CURSOR_CAN_DROP = 7;
	enum int PRESET_RIGHT_WIDE = 11;
	enum int MOUSE_FILTER_IGNORE = 2;
	enum int CURSOR_HELP = 16;
	enum int CURSOR_MOVE = 13;
	enum int PRESET_TOP_RIGHT = 1;
	enum int PRESET_CENTER_BOTTOM = 7;
	enum int MOUSE_FILTER_PASS = 1;
	enum int PRESET_MODE_KEEP_HEIGHT = 2;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT__get_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_minimum_size") = _GODOT__get_minimum_size;
	Vector2 _get_minimum_size()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_minimum_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Vector2);
	}
	package(godot) static GodotMethod!(GodotObject, Vector2) _GODOT_get_drag_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_data") = _GODOT_get_drag_data;
	GodotObject get_drag_data(in Vector2 position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		String _GODOT_method_name = String("get_drag_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(GodotObject);
	}
	package(godot) static GodotMethod!(bool, Vector2, Variant) _GODOT_can_drop_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_drop_data") = _GODOT_can_drop_data;
	bool can_drop_data(VariantArg1)(in Vector2 position, in VariantArg1 data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("can_drop_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, Vector2, Variant) _GODOT_drop_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "drop_data") = _GODOT_drop_data;
	void drop_data(VariantArg1)(in Vector2 position, in VariantArg1 data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("drop_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, Vector2) _GODOT_has_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_point") = _GODOT_has_point;
	bool has_point(in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(point);
		String _GODOT_method_name = String("has_point");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void) _GODOT__size_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_size_changed") = _GODOT__size_changed;
	void _size_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_size_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_minimum_size") = _GODOT__update_minimum_size;
	void _update_minimum_size()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_minimum_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_accept_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "accept_event") = _GODOT_accept_event;
	void accept_event()
	{
		_GODOT_accept_event.bind("Control", "accept_event");
		ptrcall!(void)(_GODOT_accept_event, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_minimum_size") = _GODOT_get_minimum_size;
	Vector2 get_minimum_size() const
	{
		_GODOT_get_minimum_size.bind("Control", "get_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_combined_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_combined_minimum_size") = _GODOT_get_combined_minimum_size;
	Vector2 get_combined_minimum_size() const
	{
		_GODOT_get_combined_minimum_size.bind("Control", "get_combined_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_combined_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_anchors_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchors_preset") = _GODOT_set_anchors_preset;
	void set_anchors_preset(in int preset, in bool keep_margin = false)
	{
		_GODOT_set_anchors_preset.bind("Control", "set_anchors_preset");
		ptrcall!(void)(_GODOT_set_anchors_preset, _godot_object, preset, keep_margin);
	}
	package(godot) static GodotMethod!(void, int, int, int) _GODOT_set_margins_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margins_preset") = _GODOT_set_margins_preset;
	void set_margins_preset(in int preset, in int resize_mode = 0, in int margin = 0)
	{
		_GODOT_set_margins_preset.bind("Control", "set_margins_preset");
		ptrcall!(void)(_GODOT_set_margins_preset, _godot_object, preset, resize_mode, margin);
	}
	package(godot) static GodotMethod!(void, int, int, int) _GODOT_set_anchors_and_margins_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchors_and_margins_preset") = _GODOT_set_anchors_and_margins_preset;
	void set_anchors_and_margins_preset(in int preset, in int resize_mode = 0, in int margin = 0)
	{
		_GODOT_set_anchors_and_margins_preset.bind("Control", "set_anchors_and_margins_preset");
		ptrcall!(void)(_GODOT_set_anchors_and_margins_preset, _godot_object, preset, resize_mode, margin);
	}
	package(godot) static GodotMethod!(void, int, float, bool, bool) _GODOT_set_anchor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor") = _GODOT_set_anchor;
	void set_anchor(in int margin, in float anchor, in bool keep_margin = false, in bool push_opposite_anchor = true)
	{
		_GODOT_set_anchor.bind("Control", "set_anchor");
		ptrcall!(void)(_GODOT_set_anchor, _godot_object, margin, anchor, keep_margin, push_opposite_anchor);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT__set_anchor;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_anchor") = _GODOT__set_anchor;
	void _set_anchor(in int margin, in float anchor)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(margin);
		_GODOT_args.append(anchor);
		String _GODOT_method_name = String("_set_anchor");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_anchor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor") = _GODOT_get_anchor;
	float get_anchor(in int margin) const
	{
		_GODOT_get_anchor.bind("Control", "get_anchor");
		return ptrcall!(float)(_GODOT_get_anchor, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	void set_margin(in int margin, in float offset)
	{
		_GODOT_set_margin.bind("Control", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin, offset);
	}
	package(godot) static GodotMethod!(void, int, float, float, bool) _GODOT_set_anchor_and_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_and_margin") = _GODOT_set_anchor_and_margin;
	void set_anchor_and_margin(in int margin, in float anchor, in float offset, in bool push_opposite_anchor = false)
	{
		_GODOT_set_anchor_and_margin.bind("Control", "set_anchor_and_margin");
		ptrcall!(void)(_GODOT_set_anchor_and_margin, _godot_object, margin, anchor, offset, push_opposite_anchor);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_begin") = _GODOT_set_begin;
	void set_begin(in Vector2 position)
	{
		_GODOT_set_begin.bind("Control", "set_begin");
		ptrcall!(void)(_GODOT_set_begin, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_end") = _GODOT_set_end;
	void set_end(in Vector2 position)
	{
		_GODOT_set_end.bind("Control", "set_end");
		ptrcall!(void)(_GODOT_set_end, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	void set_position(in Vector2 position)
	{
		_GODOT_set_position.bind("Control", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in Vector2 size)
	{
		_GODOT_set_size.bind("Control", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_custom_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_minimum_size") = _GODOT_set_custom_minimum_size;
	void set_custom_minimum_size(in Vector2 size)
	{
		_GODOT_set_custom_minimum_size.bind("Control", "set_custom_minimum_size");
		ptrcall!(void)(_GODOT_set_custom_minimum_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_position") = _GODOT_set_global_position;
	void set_global_position(in Vector2 position)
	{
		_GODOT_set_global_position.bind("Control", "set_global_position");
		ptrcall!(void)(_GODOT_set_global_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	void set_rotation(in float radians)
	{
		_GODOT_set_rotation.bind("Control", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_deg") = _GODOT_set_rotation_deg;
	void set_rotation_deg(in float degrees)
	{
		_GODOT_set_rotation_deg.bind("Control", "set_rotation_deg");
		ptrcall!(void)(_GODOT_set_rotation_deg, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_rotation_deg") = _GODOT__set_rotation_deg;
	void _set_rotation_deg(in float degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_set_rotation_deg");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	void set_scale(in Vector2 scale)
	{
		_GODOT_set_scale.bind("Control", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_pivot_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pivot_offset") = _GODOT_set_pivot_offset;
	void set_pivot_offset(in Vector2 pivot_offset)
	{
		_GODOT_set_pivot_offset.bind("Control", "set_pivot_offset");
		ptrcall!(void)(_GODOT_set_pivot_offset, _godot_object, pivot_offset);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	float get_margin(in int margin) const
	{
		_GODOT_get_margin.bind("Control", "get_margin");
		return ptrcall!(float)(_GODOT_get_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_begin") = _GODOT_get_begin;
	Vector2 get_begin() const
	{
		_GODOT_get_begin.bind("Control", "get_begin");
		return ptrcall!(Vector2)(_GODOT_get_begin, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_end") = _GODOT_get_end;
	Vector2 get_end() const
	{
		_GODOT_get_end.bind("Control", "get_end");
		return ptrcall!(Vector2)(_GODOT_get_end, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector2 get_position() const
	{
		_GODOT_get_position.bind("Control", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("Control", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	float get_rotation() const
	{
		_GODOT_get_rotation.bind("Control", "get_rotation");
		return ptrcall!(float)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_deg") = _GODOT_get_rotation_deg;
	float get_rotation_deg() const
	{
		_GODOT_get_rotation_deg.bind("Control", "get_rotation_deg");
		return ptrcall!(float)(_GODOT_get_rotation_deg, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_rotation_deg") = _GODOT__get_rotation_deg;
	float _get_rotation_deg() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotation_deg");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	Vector2 get_scale() const
	{
		_GODOT_get_scale.bind("Control", "get_scale");
		return ptrcall!(Vector2)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_pivot_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pivot_offset") = _GODOT_get_pivot_offset;
	Vector2 get_pivot_offset() const
	{
		_GODOT_get_pivot_offset.bind("Control", "get_pivot_offset");
		return ptrcall!(Vector2)(_GODOT_get_pivot_offset, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_custom_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_minimum_size") = _GODOT_get_custom_minimum_size;
	Vector2 get_custom_minimum_size() const
	{
		_GODOT_get_custom_minimum_size.bind("Control", "get_custom_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_custom_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_parent_area_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_area_size") = _GODOT_get_parent_area_size;
	Vector2 get_parent_area_size() const
	{
		_GODOT_get_parent_area_size.bind("Control", "get_parent_area_size");
		return ptrcall!(Vector2)(_GODOT_get_parent_area_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_position") = _GODOT_get_global_position;
	Vector2 get_global_position() const
	{
		_GODOT_get_global_position.bind("Control", "get_global_position");
		return ptrcall!(Vector2)(_GODOT_get_global_position, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	Rect2 get_rect() const
	{
		_GODOT_get_rect.bind("Control", "get_rect");
		return ptrcall!(Rect2)(_GODOT_get_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_global_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_rect") = _GODOT_get_global_rect;
	Rect2 get_global_rect() const
	{
		_GODOT_get_global_rect.bind("Control", "get_global_rect");
		return ptrcall!(Rect2)(_GODOT_get_global_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_show_modal;
	package(godot) alias _GODOT_methodBindInfo(string name : "show_modal") = _GODOT_show_modal;
	void show_modal(in bool exclusive = false)
	{
		_GODOT_show_modal.bind("Control", "show_modal");
		ptrcall!(void)(_GODOT_show_modal, _godot_object, exclusive);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focus_mode") = _GODOT_set_focus_mode;
	void set_focus_mode(in int mode)
	{
		_GODOT_set_focus_mode.bind("Control", "set_focus_mode");
		ptrcall!(void)(_GODOT_set_focus_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Control.FocusMode) _GODOT_get_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_mode") = _GODOT_get_focus_mode;
	Control.FocusMode get_focus_mode() const
	{
		_GODOT_get_focus_mode.bind("Control", "get_focus_mode");
		return ptrcall!(Control.FocusMode)(_GODOT_get_focus_mode, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_focus") = _GODOT_has_focus;
	bool has_focus() const
	{
		_GODOT_has_focus.bind("Control", "has_focus");
		return ptrcall!(bool)(_GODOT_has_focus, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_grab_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "grab_focus") = _GODOT_grab_focus;
	void grab_focus()
	{
		_GODOT_grab_focus.bind("Control", "grab_focus");
		ptrcall!(void)(_GODOT_grab_focus, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_release_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "release_focus") = _GODOT_release_focus;
	void release_focus()
	{
		_GODOT_release_focus.bind("Control", "release_focus");
		ptrcall!(void)(_GODOT_release_focus, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_focus_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_owner") = _GODOT_get_focus_owner;
	Control get_focus_owner() const
	{
		_GODOT_get_focus_owner.bind("Control", "get_focus_owner");
		return ptrcall!(Control)(_GODOT_get_focus_owner, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_h_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_size_flags") = _GODOT_set_h_size_flags;
	void set_h_size_flags(in int flags)
	{
		_GODOT_set_h_size_flags.bind("Control", "set_h_size_flags");
		ptrcall!(void)(_GODOT_set_h_size_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_h_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_size_flags") = _GODOT_get_h_size_flags;
	int get_h_size_flags() const
	{
		_GODOT_get_h_size_flags.bind("Control", "get_h_size_flags");
		return ptrcall!(int)(_GODOT_get_h_size_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_stretch_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_ratio") = _GODOT_set_stretch_ratio;
	void set_stretch_ratio(in float ratio)
	{
		_GODOT_set_stretch_ratio.bind("Control", "set_stretch_ratio");
		ptrcall!(void)(_GODOT_set_stretch_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_stretch_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_ratio") = _GODOT_get_stretch_ratio;
	float get_stretch_ratio() const
	{
		_GODOT_get_stretch_ratio.bind("Control", "get_stretch_ratio");
		return ptrcall!(float)(_GODOT_get_stretch_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_v_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_size_flags") = _GODOT_set_v_size_flags;
	void set_v_size_flags(in int flags)
	{
		_GODOT_set_v_size_flags.bind("Control", "set_v_size_flags");
		ptrcall!(void)(_GODOT_set_v_size_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_v_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_size_flags") = _GODOT_get_v_size_flags;
	int get_v_size_flags() const
	{
		_GODOT_get_v_size_flags.bind("Control", "get_v_size_flags");
		return ptrcall!(int)(_GODOT_get_v_size_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, Theme) _GODOT_set_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_theme") = _GODOT_set_theme;
	void set_theme(in Theme theme)
	{
		_GODOT_set_theme.bind("Control", "set_theme");
		ptrcall!(void)(_GODOT_set_theme, _godot_object, theme);
	}
	package(godot) static GodotMethod!(Theme) _GODOT_get_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_theme") = _GODOT_get_theme;
	Theme get_theme() const
	{
		_GODOT_get_theme.bind("Control", "get_theme");
		return ptrcall!(Theme)(_GODOT_get_theme, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Texture) _GODOT_add_icon_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_override") = _GODOT_add_icon_override;
	void add_icon_override(StringArg0)(in StringArg0 name, in Texture texture)
	{
		_GODOT_add_icon_override.bind("Control", "add_icon_override");
		ptrcall!(void)(_GODOT_add_icon_override, _godot_object, name, texture);
	}
	package(godot) static GodotMethod!(void, String, Shader) _GODOT_add_shader_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_shader_override") = _GODOT_add_shader_override;
	void add_shader_override(StringArg0)(in StringArg0 name, in Shader shader)
	{
		_GODOT_add_shader_override.bind("Control", "add_shader_override");
		ptrcall!(void)(_GODOT_add_shader_override, _godot_object, name, shader);
	}
	package(godot) static GodotMethod!(void, String, StyleBox) _GODOT_add_style_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_style_override") = _GODOT_add_style_override;
	void add_style_override(StringArg0)(in StringArg0 name, in StyleBox stylebox)
	{
		_GODOT_add_style_override.bind("Control", "add_style_override");
		ptrcall!(void)(_GODOT_add_style_override, _godot_object, name, stylebox);
	}
	package(godot) static GodotMethod!(void, String, Font) _GODOT_add_font_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_font_override") = _GODOT_add_font_override;
	void add_font_override(StringArg0)(in StringArg0 name, in Font font)
	{
		_GODOT_add_font_override.bind("Control", "add_font_override");
		ptrcall!(void)(_GODOT_add_font_override, _godot_object, name, font);
	}
	package(godot) static GodotMethod!(void, String, Color) _GODOT_add_color_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_color_override") = _GODOT_add_color_override;
	void add_color_override(StringArg0)(in StringArg0 name, in Color color)
	{
		_GODOT_add_color_override.bind("Control", "add_color_override");
		ptrcall!(void)(_GODOT_add_color_override, _godot_object, name, color);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_add_constant_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_constant_override") = _GODOT_add_constant_override;
	void add_constant_override(StringArg0)(in StringArg0 name, in int constant)
	{
		_GODOT_add_constant_override.bind("Control", "add_constant_override");
		ptrcall!(void)(_GODOT_add_constant_override, _godot_object, name, constant);
	}
	package(godot) static GodotMethod!(Texture, String, String) _GODOT_get_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon") = _GODOT_get_icon;
	Texture get_icon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_icon.bind("Control", "get_icon");
		return ptrcall!(Texture)(_GODOT_get_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(StyleBox, String, String) _GODOT_get_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox") = _GODOT_get_stylebox;
	StyleBox get_stylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_stylebox.bind("Control", "get_stylebox");
		return ptrcall!(StyleBox)(_GODOT_get_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(Font, String, String) _GODOT_get_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font") = _GODOT_get_font;
	Font get_font(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_font.bind("Control", "get_font");
		return ptrcall!(Font)(_GODOT_get_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(Color, String, String) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_color.bind("Control", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(int, String, String) _GODOT_get_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant") = _GODOT_get_constant;
	int get_constant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_constant.bind("Control", "get_constant");
		return ptrcall!(int)(_GODOT_get_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_icon_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_icon_override") = _GODOT_has_icon_override;
	bool has_icon_override(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_icon_override.bind("Control", "has_icon_override");
		return ptrcall!(bool)(_GODOT_has_icon_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_stylebox_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_stylebox_override") = _GODOT_has_stylebox_override;
	bool has_stylebox_override(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_stylebox_override.bind("Control", "has_stylebox_override");
		return ptrcall!(bool)(_GODOT_has_stylebox_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_font_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_font_override") = _GODOT_has_font_override;
	bool has_font_override(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_font_override.bind("Control", "has_font_override");
		return ptrcall!(bool)(_GODOT_has_font_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_color_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_color_override") = _GODOT_has_color_override;
	bool has_color_override(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_color_override.bind("Control", "has_color_override");
		return ptrcall!(bool)(_GODOT_has_color_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_constant_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_constant_override") = _GODOT_has_constant_override;
	bool has_constant_override(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_constant_override.bind("Control", "has_constant_override");
		return ptrcall!(bool)(_GODOT_has_constant_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_icon") = _GODOT_has_icon;
	bool has_icon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_icon.bind("Control", "has_icon");
		return ptrcall!(bool)(_GODOT_has_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_stylebox") = _GODOT_has_stylebox;
	bool has_stylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_stylebox.bind("Control", "has_stylebox");
		return ptrcall!(bool)(_GODOT_has_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_font") = _GODOT_has_font;
	bool has_font(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_font.bind("Control", "has_font");
		return ptrcall!(bool)(_GODOT_has_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_color") = _GODOT_has_color;
	bool has_color(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_color.bind("Control", "has_color");
		return ptrcall!(bool)(_GODOT_has_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_constant") = _GODOT_has_constant;
	bool has_constant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_constant.bind("Control", "has_constant");
		return ptrcall!(bool)(_GODOT_has_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_parent_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_control") = _GODOT_get_parent_control;
	Control get_parent_control() const
	{
		_GODOT_get_parent_control.bind("Control", "get_parent_control");
		return ptrcall!(Control)(_GODOT_get_parent_control, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_h_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_grow_direction") = _GODOT_set_h_grow_direction;
	void set_h_grow_direction(in int direction)
	{
		_GODOT_set_h_grow_direction.bind("Control", "set_h_grow_direction");
		ptrcall!(void)(_GODOT_set_h_grow_direction, _godot_object, direction);
	}
	package(godot) static GodotMethod!(Control.GrowDirection) _GODOT_get_h_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_grow_direction") = _GODOT_get_h_grow_direction;
	Control.GrowDirection get_h_grow_direction() const
	{
		_GODOT_get_h_grow_direction.bind("Control", "get_h_grow_direction");
		return ptrcall!(Control.GrowDirection)(_GODOT_get_h_grow_direction, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_v_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_grow_direction") = _GODOT_set_v_grow_direction;
	void set_v_grow_direction(in int direction)
	{
		_GODOT_set_v_grow_direction.bind("Control", "set_v_grow_direction");
		ptrcall!(void)(_GODOT_set_v_grow_direction, _godot_object, direction);
	}
	package(godot) static GodotMethod!(Control.GrowDirection) _GODOT_get_v_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_grow_direction") = _GODOT_get_v_grow_direction;
	Control.GrowDirection get_v_grow_direction() const
	{
		_GODOT_get_v_grow_direction.bind("Control", "get_v_grow_direction");
		return ptrcall!(Control.GrowDirection)(_GODOT_get_v_grow_direction, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tooltip") = _GODOT_set_tooltip;
	void set_tooltip(StringArg0)(in StringArg0 tooltip)
	{
		_GODOT_set_tooltip.bind("Control", "set_tooltip");
		ptrcall!(void)(_GODOT_set_tooltip, _godot_object, tooltip);
	}
	package(godot) static GodotMethod!(String, Vector2) _GODOT_get_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tooltip") = _GODOT_get_tooltip;
	String get_tooltip(in Vector2 at_position = Vector2(0, 0)) const
	{
		_GODOT_get_tooltip.bind("Control", "get_tooltip");
		return ptrcall!(String)(_GODOT_get_tooltip, _godot_object, at_position);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_tooltip") = _GODOT__get_tooltip;
	String _get_tooltip() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_default_cursor_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_cursor_shape") = _GODOT_set_default_cursor_shape;
	void set_default_cursor_shape(in int shape)
	{
		_GODOT_set_default_cursor_shape.bind("Control", "set_default_cursor_shape");
		ptrcall!(void)(_GODOT_set_default_cursor_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Control.CursorShape) _GODOT_get_default_cursor_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_cursor_shape") = _GODOT_get_default_cursor_shape;
	Control.CursorShape get_default_cursor_shape() const
	{
		_GODOT_get_default_cursor_shape.bind("Control", "get_default_cursor_shape");
		return ptrcall!(Control.CursorShape)(_GODOT_get_default_cursor_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Control.CursorShape, Vector2) _GODOT_get_cursor_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cursor_shape") = _GODOT_get_cursor_shape;
	Control.CursorShape get_cursor_shape(in Vector2 position = Vector2(0, 0)) const
	{
		_GODOT_get_cursor_shape.bind("Control", "get_cursor_shape");
		return ptrcall!(Control.CursorShape)(_GODOT_get_cursor_shape, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, int, NodePath) _GODOT_set_focus_neighbour;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focus_neighbour") = _GODOT_set_focus_neighbour;
	void set_focus_neighbour(NodePathArg1)(in int margin, in NodePathArg1 neighbour)
	{
		_GODOT_set_focus_neighbour.bind("Control", "set_focus_neighbour");
		ptrcall!(void)(_GODOT_set_focus_neighbour, _godot_object, margin, neighbour);
	}
	package(godot) static GodotMethod!(NodePath, int) _GODOT_get_focus_neighbour;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_neighbour") = _GODOT_get_focus_neighbour;
	NodePath get_focus_neighbour(in int margin) const
	{
		_GODOT_get_focus_neighbour.bind("Control", "get_focus_neighbour");
		return ptrcall!(NodePath)(_GODOT_get_focus_neighbour, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, Variant, GodotObject) _GODOT_force_drag;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_drag") = _GODOT_force_drag;
	void force_drag(VariantArg0)(in VariantArg0 data, in GodotObject preview)
	{
		_GODOT_force_drag.bind("Control", "force_drag");
		ptrcall!(void)(_GODOT_force_drag, _godot_object, data, preview);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mouse_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mouse_filter") = _GODOT_set_mouse_filter;
	void set_mouse_filter(in int filter)
	{
		_GODOT_set_mouse_filter.bind("Control", "set_mouse_filter");
		ptrcall!(void)(_GODOT_set_mouse_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(Control.MouseFilter) _GODOT_get_mouse_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_filter") = _GODOT_get_mouse_filter;
	Control.MouseFilter get_mouse_filter() const
	{
		_GODOT_get_mouse_filter.bind("Control", "get_mouse_filter");
		return ptrcall!(Control.MouseFilter)(_GODOT_get_mouse_filter, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_contents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_contents") = _GODOT_set_clip_contents;
	void set_clip_contents(in bool enable)
	{
		_GODOT_set_clip_contents.bind("Control", "set_clip_contents");
		ptrcall!(void)(_GODOT_set_clip_contents, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_clipping_contents;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_clipping_contents") = _GODOT_is_clipping_contents;
	bool is_clipping_contents()
	{
		_GODOT_is_clipping_contents.bind("Control", "is_clipping_contents");
		return ptrcall!(bool)(_GODOT_is_clipping_contents, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_grab_click_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "grab_click_focus") = _GODOT_grab_click_focus;
	void grab_click_focus()
	{
		_GODOT_grab_click_focus.bind("Control", "grab_click_focus");
		ptrcall!(void)(_GODOT_grab_click_focus, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_drag_forwarding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_forwarding") = _GODOT_set_drag_forwarding;
	void set_drag_forwarding(in GodotObject target)
	{
		_GODOT_set_drag_forwarding.bind("Control", "set_drag_forwarding");
		ptrcall!(void)(_GODOT_set_drag_forwarding, _godot_object, target);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_drag_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_preview") = _GODOT_set_drag_preview;
	void set_drag_preview(in GodotObject control)
	{
		_GODOT_set_drag_preview.bind("Control", "set_drag_preview");
		ptrcall!(void)(_GODOT_set_drag_preview, _godot_object, control);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_warp_mouse;
	package(godot) alias _GODOT_methodBindInfo(string name : "warp_mouse") = _GODOT_warp_mouse;
	void warp_mouse(in Vector2 to_position)
	{
		_GODOT_warp_mouse.bind("Control", "warp_mouse");
		ptrcall!(void)(_GODOT_warp_mouse, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_minimum_size_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "minimum_size_changed") = _GODOT_minimum_size_changed;
	void minimum_size_changed()
	{
		_GODOT_minimum_size_changed.bind("Control", "minimum_size_changed");
		ptrcall!(void)(_GODOT_minimum_size_changed, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__theme_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_theme_changed") = _GODOT__theme_changed;
	void _theme_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__font_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_font_changed") = _GODOT__font_changed;
	void _font_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_font_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
