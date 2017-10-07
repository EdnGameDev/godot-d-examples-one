module godot.camera2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.node;
@GodotBaseClass struct Camera2D
{
	static immutable string _GODOT_internal_name = "Camera2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Camera2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Camera2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Camera2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Camera2D");
		if(constructor is null) return typeof(this).init;
		return cast(Camera2D)(constructor());
	}
	enum AnchorMode : int
	{
		ANCHOR_MODE_DRAG_CENTER = 1,
		ANCHOR_MODE_FIXED_TOP_LEFT = 0,
	}
	enum int ANCHOR_MODE_DRAG_CENTER = 1;
	enum int ANCHOR_MODE_FIXED_TOP_LEFT = 0;
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("Camera2D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("Camera2D", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_anchor_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_mode") = _GODOT_set_anchor_mode;
	void set_anchor_mode(in int anchor_mode)
	{
		_GODOT_set_anchor_mode.bind("Camera2D", "set_anchor_mode");
		ptrcall!(void)(_GODOT_set_anchor_mode, _godot_object, anchor_mode);
	}
	package(godot) static GodotMethod!(Camera2D.AnchorMode) _GODOT_get_anchor_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_mode") = _GODOT_get_anchor_mode;
	Camera2D.AnchorMode get_anchor_mode() const
	{
		_GODOT_get_anchor_mode.bind("Camera2D", "get_anchor_mode");
		return ptrcall!(Camera2D.AnchorMode)(_GODOT_get_anchor_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_rotating;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotating") = _GODOT_set_rotating;
	void set_rotating(in bool rotating)
	{
		_GODOT_set_rotating.bind("Camera2D", "set_rotating");
		ptrcall!(void)(_GODOT_set_rotating, _godot_object, rotating);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_rotating;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_rotating") = _GODOT_is_rotating;
	bool is_rotating() const
	{
		_GODOT_is_rotating.bind("Camera2D", "is_rotating");
		return ptrcall!(bool)(_GODOT_is_rotating, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_current") = _GODOT_make_current;
	void make_current()
	{
		_GODOT_make_current.bind("Camera2D", "make_current");
		ptrcall!(void)(_GODOT_make_current, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_current") = _GODOT_clear_current;
	void clear_current()
	{
		_GODOT_clear_current.bind("Camera2D", "clear_current");
		ptrcall!(void)(_GODOT_clear_current, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "_make_current") = _GODOT__make_current;
	void _make_current(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_make_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_scroll") = _GODOT__update_scroll;
	void _update_scroll()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_current") = _GODOT__set_current;
	void _set_current(in bool current)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(current);
		String _GODOT_method_name = String("_set_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_current") = _GODOT_is_current;
	bool is_current() const
	{
		_GODOT_is_current.bind("Camera2D", "is_current");
		return ptrcall!(bool)(_GODOT_is_current, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit") = _GODOT_set_limit;
	void set_limit(in int margin, in int limit)
	{
		_GODOT_set_limit.bind("Camera2D", "set_limit");
		ptrcall!(void)(_GODOT_set_limit, _godot_object, margin, limit);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_limit") = _GODOT_get_limit;
	int get_limit(in int margin) const
	{
		_GODOT_get_limit.bind("Camera2D", "get_limit");
		return ptrcall!(int)(_GODOT_get_limit, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_limit_smoothing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_smoothing_enabled") = _GODOT_set_limit_smoothing_enabled;
	void set_limit_smoothing_enabled(in bool limit_smoothing_enabled)
	{
		_GODOT_set_limit_smoothing_enabled.bind("Camera2D", "set_limit_smoothing_enabled");
		ptrcall!(void)(_GODOT_set_limit_smoothing_enabled, _godot_object, limit_smoothing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_limit_smoothing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_limit_smoothing_enabled") = _GODOT_is_limit_smoothing_enabled;
	bool is_limit_smoothing_enabled() const
	{
		_GODOT_is_limit_smoothing_enabled.bind("Camera2D", "is_limit_smoothing_enabled");
		return ptrcall!(bool)(_GODOT_is_limit_smoothing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_v_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_drag_enabled") = _GODOT_set_v_drag_enabled;
	void set_v_drag_enabled(in bool enabled)
	{
		_GODOT_set_v_drag_enabled.bind("Camera2D", "set_v_drag_enabled");
		ptrcall!(void)(_GODOT_set_v_drag_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_v_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_v_drag_enabled") = _GODOT_is_v_drag_enabled;
	bool is_v_drag_enabled() const
	{
		_GODOT_is_v_drag_enabled.bind("Camera2D", "is_v_drag_enabled");
		return ptrcall!(bool)(_GODOT_is_v_drag_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_h_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_drag_enabled") = _GODOT_set_h_drag_enabled;
	void set_h_drag_enabled(in bool enabled)
	{
		_GODOT_set_h_drag_enabled.bind("Camera2D", "set_h_drag_enabled");
		ptrcall!(void)(_GODOT_set_h_drag_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_h_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_h_drag_enabled") = _GODOT_is_h_drag_enabled;
	bool is_h_drag_enabled() const
	{
		_GODOT_is_h_drag_enabled.bind("Camera2D", "is_h_drag_enabled");
		return ptrcall!(bool)(_GODOT_is_h_drag_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	void set_v_offset(in float ofs)
	{
		_GODOT_set_v_offset.bind("Camera2D", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	float get_v_offset() const
	{
		_GODOT_get_v_offset.bind("Camera2D", "get_v_offset");
		return ptrcall!(float)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	void set_h_offset(in float ofs)
	{
		_GODOT_set_h_offset.bind("Camera2D", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	float get_h_offset() const
	{
		_GODOT_get_h_offset.bind("Camera2D", "get_h_offset");
		return ptrcall!(float)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_drag_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_margin") = _GODOT_set_drag_margin;
	void set_drag_margin(in int margin, in float drag_margin)
	{
		_GODOT_set_drag_margin.bind("Camera2D", "set_drag_margin");
		ptrcall!(void)(_GODOT_set_drag_margin, _godot_object, margin, drag_margin);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_drag_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_margin") = _GODOT_get_drag_margin;
	float get_drag_margin(in int margin) const
	{
		_GODOT_get_drag_margin.bind("Camera2D", "get_drag_margin");
		return ptrcall!(float)(_GODOT_get_drag_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_camera_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera_position") = _GODOT_get_camera_position;
	Vector2 get_camera_position() const
	{
		_GODOT_get_camera_position.bind("Camera2D", "get_camera_position");
		return ptrcall!(Vector2)(_GODOT_get_camera_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_camera_screen_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera_screen_center") = _GODOT_get_camera_screen_center;
	Vector2 get_camera_screen_center() const
	{
		_GODOT_get_camera_screen_center.bind("Camera2D", "get_camera_screen_center");
		return ptrcall!(Vector2)(_GODOT_get_camera_screen_center, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_zoom") = _GODOT_set_zoom;
	void set_zoom(in Vector2 zoom)
	{
		_GODOT_set_zoom.bind("Camera2D", "set_zoom");
		ptrcall!(void)(_GODOT_set_zoom, _godot_object, zoom);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_zoom") = _GODOT_get_zoom;
	Vector2 get_zoom() const
	{
		_GODOT_get_zoom.bind("Camera2D", "get_zoom");
		return ptrcall!(Vector2)(_GODOT_get_zoom, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_viewport") = _GODOT_set_custom_viewport;
	void set_custom_viewport(in GodotObject viewport)
	{
		_GODOT_set_custom_viewport.bind("Camera2D", "set_custom_viewport");
		ptrcall!(void)(_GODOT_set_custom_viewport, _godot_object, viewport);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_viewport") = _GODOT_get_custom_viewport;
	Node get_custom_viewport() const
	{
		_GODOT_get_custom_viewport.bind("Camera2D", "get_custom_viewport");
		return ptrcall!(Node)(_GODOT_get_custom_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_follow_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_follow_smoothing") = _GODOT_set_follow_smoothing;
	void set_follow_smoothing(in float follow_smoothing)
	{
		_GODOT_set_follow_smoothing.bind("Camera2D", "set_follow_smoothing");
		ptrcall!(void)(_GODOT_set_follow_smoothing, _godot_object, follow_smoothing);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_follow_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_follow_smoothing") = _GODOT_get_follow_smoothing;
	float get_follow_smoothing() const
	{
		_GODOT_get_follow_smoothing.bind("Camera2D", "get_follow_smoothing");
		return ptrcall!(float)(_GODOT_get_follow_smoothing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_follow_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_follow_smoothing") = _GODOT_set_enable_follow_smoothing;
	void set_enable_follow_smoothing(in bool follow_smoothing)
	{
		_GODOT_set_enable_follow_smoothing.bind("Camera2D", "set_enable_follow_smoothing");
		ptrcall!(void)(_GODOT_set_enable_follow_smoothing, _godot_object, follow_smoothing);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_follow_smoothing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_follow_smoothing_enabled") = _GODOT_is_follow_smoothing_enabled;
	bool is_follow_smoothing_enabled() const
	{
		_GODOT_is_follow_smoothing_enabled.bind("Camera2D", "is_follow_smoothing_enabled");
		return ptrcall!(bool)(_GODOT_is_follow_smoothing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_force_update_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_update_scroll") = _GODOT_force_update_scroll;
	void force_update_scroll()
	{
		_GODOT_force_update_scroll.bind("Camera2D", "force_update_scroll");
		ptrcall!(void)(_GODOT_force_update_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_reset_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset_smoothing") = _GODOT_reset_smoothing;
	void reset_smoothing()
	{
		_GODOT_reset_smoothing.bind("Camera2D", "reset_smoothing");
		ptrcall!(void)(_GODOT_reset_smoothing, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__align;
	package(godot) alias _GODOT_methodBindInfo(string name : "align") = _GODOT__align;
	void _align()
	{
		_GODOT__align.bind("Camera2D", "align");
		ptrcall!(void)(_GODOT__align, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_old_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_old_smoothing") = _GODOT__set_old_smoothing;
	void _set_old_smoothing(in float follow_smoothing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(follow_smoothing);
		String _GODOT_method_name = String("_set_old_smoothing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_screen_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_screen_drawing_enabled") = _GODOT_set_screen_drawing_enabled;
	void set_screen_drawing_enabled(in bool screen_drawing_enabled)
	{
		_GODOT_set_screen_drawing_enabled.bind("Camera2D", "set_screen_drawing_enabled");
		ptrcall!(void)(_GODOT_set_screen_drawing_enabled, _godot_object, screen_drawing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_screen_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_screen_drawing_enabled") = _GODOT_is_screen_drawing_enabled;
	bool is_screen_drawing_enabled() const
	{
		_GODOT_is_screen_drawing_enabled.bind("Camera2D", "is_screen_drawing_enabled");
		return ptrcall!(bool)(_GODOT_is_screen_drawing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_limit_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_drawing_enabled") = _GODOT_set_limit_drawing_enabled;
	void set_limit_drawing_enabled(in bool limit_drawing_enabled)
	{
		_GODOT_set_limit_drawing_enabled.bind("Camera2D", "set_limit_drawing_enabled");
		ptrcall!(void)(_GODOT_set_limit_drawing_enabled, _godot_object, limit_drawing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_limit_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_limit_drawing_enabled") = _GODOT_is_limit_drawing_enabled;
	bool is_limit_drawing_enabled() const
	{
		_GODOT_is_limit_drawing_enabled.bind("Camera2D", "is_limit_drawing_enabled");
		return ptrcall!(bool)(_GODOT_is_limit_drawing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_margin_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin_drawing_enabled") = _GODOT_set_margin_drawing_enabled;
	void set_margin_drawing_enabled(in bool margin_drawing_enabled)
	{
		_GODOT_set_margin_drawing_enabled.bind("Camera2D", "set_margin_drawing_enabled");
		ptrcall!(void)(_GODOT_set_margin_drawing_enabled, _godot_object, margin_drawing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_margin_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_margin_drawing_enabled") = _GODOT_is_margin_drawing_enabled;
	bool is_margin_drawing_enabled() const
	{
		_GODOT_is_margin_drawing_enabled.bind("Camera2D", "is_margin_drawing_enabled");
		return ptrcall!(bool)(_GODOT_is_margin_drawing_enabled, _godot_object);
	}
}
