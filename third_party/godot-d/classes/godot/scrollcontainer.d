module godot.scrollcontainer;
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
@GodotBaseClass struct ScrollContainer
{
	static immutable string _GODOT_internal_name = "ScrollContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ScrollContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScrollContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ScrollContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ScrollContainer");
		if(constructor is null) return typeof(this).init;
		return cast(ScrollContainer)(constructor());
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
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_h_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_h_scroll") = _GODOT_set_enable_h_scroll;
	void set_enable_h_scroll(in bool enable)
	{
		_GODOT_set_enable_h_scroll.bind("ScrollContainer", "set_enable_h_scroll");
		ptrcall!(void)(_GODOT_set_enable_h_scroll, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_h_scroll_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_h_scroll_enabled") = _GODOT_is_h_scroll_enabled;
	bool is_h_scroll_enabled() const
	{
		_GODOT_is_h_scroll_enabled.bind("ScrollContainer", "is_h_scroll_enabled");
		return ptrcall!(bool)(_GODOT_is_h_scroll_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_v_scroll") = _GODOT_set_enable_v_scroll;
	void set_enable_v_scroll(in bool enable)
	{
		_GODOT_set_enable_v_scroll.bind("ScrollContainer", "set_enable_v_scroll");
		ptrcall!(void)(_GODOT_set_enable_v_scroll, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_v_scroll_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_v_scroll_enabled") = _GODOT_is_v_scroll_enabled;
	bool is_v_scroll_enabled() const
	{
		_GODOT_is_v_scroll_enabled.bind("ScrollContainer", "is_v_scroll_enabled");
		return ptrcall!(bool)(_GODOT_is_v_scroll_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_scrollbar_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_scrollbar_position") = _GODOT__update_scrollbar_position;
	void _update_scrollbar_position()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scrollbar_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_h_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_scroll") = _GODOT_set_h_scroll;
	void set_h_scroll(in int val)
	{
		_GODOT_set_h_scroll.bind("ScrollContainer", "set_h_scroll");
		ptrcall!(void)(_GODOT_set_h_scroll, _godot_object, val);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_h_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_scroll") = _GODOT_get_h_scroll;
	int get_h_scroll() const
	{
		_GODOT_get_h_scroll.bind("ScrollContainer", "get_h_scroll");
		return ptrcall!(int)(_GODOT_get_h_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_scroll") = _GODOT_set_v_scroll;
	void set_v_scroll(in int val)
	{
		_GODOT_set_v_scroll.bind("ScrollContainer", "set_v_scroll");
		ptrcall!(void)(_GODOT_set_v_scroll, _godot_object, val);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll") = _GODOT_get_v_scroll;
	int get_v_scroll() const
	{
		_GODOT_get_v_scroll.bind("ScrollContainer", "get_v_scroll");
		return ptrcall!(int)(_GODOT_get_v_scroll, _godot_object);
	}
}
