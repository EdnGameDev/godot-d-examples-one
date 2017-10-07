module godot.touchscreenbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
import godot.bitmap;
import godot.shape2d;
import godot.inputevent;
@GodotBaseClass struct TouchScreenButton
{
	static immutable string _GODOT_internal_name = "TouchScreenButton";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TouchScreenButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TouchScreenButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TouchScreenButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TouchScreenButton");
		if(constructor is null) return typeof(this).init;
		return cast(TouchScreenButton)(constructor());
	}
	enum VisibilityMode : int
	{
		VISIBILITY_TOUCHSCREEN_ONLY = 1,
		VISIBILITY_ALWAYS = 0,
	}
	enum int VISIBILITY_TOUCHSCREEN_ONLY = 1;
	enum int VISIBILITY_ALWAYS = 0;
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("TouchScreenButton", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("TouchScreenButton", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_pressed") = _GODOT_set_texture_pressed;
	void set_texture_pressed(in Texture texture_pressed)
	{
		_GODOT_set_texture_pressed.bind("TouchScreenButton", "set_texture_pressed");
		ptrcall!(void)(_GODOT_set_texture_pressed, _godot_object, texture_pressed);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_pressed") = _GODOT_get_texture_pressed;
	Texture get_texture_pressed() const
	{
		_GODOT_get_texture_pressed.bind("TouchScreenButton", "get_texture_pressed");
		return ptrcall!(Texture)(_GODOT_get_texture_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(void, BitMap) _GODOT_set_bitmask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bitmask") = _GODOT_set_bitmask;
	void set_bitmask(in BitMap bitmask)
	{
		_GODOT_set_bitmask.bind("TouchScreenButton", "set_bitmask");
		ptrcall!(void)(_GODOT_set_bitmask, _godot_object, bitmask);
	}
	package(godot) static GodotMethod!(BitMap) _GODOT_get_bitmask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bitmask") = _GODOT_get_bitmask;
	BitMap get_bitmask() const
	{
		_GODOT_get_bitmask.bind("TouchScreenButton", "get_bitmask");
		return ptrcall!(BitMap)(_GODOT_get_bitmask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Shape2D) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	void set_shape(in Shape2D shape)
	{
		_GODOT_set_shape.bind("TouchScreenButton", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Shape2D) _GODOT_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape") = _GODOT_get_shape;
	Shape2D get_shape() const
	{
		_GODOT_get_shape.bind("TouchScreenButton", "get_shape");
		return ptrcall!(Shape2D)(_GODOT_get_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shape_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_centered") = _GODOT_set_shape_centered;
	void set_shape_centered(in bool _bool)
	{
		_GODOT_set_shape_centered.bind("TouchScreenButton", "set_shape_centered");
		ptrcall!(void)(_GODOT_set_shape_centered, _godot_object, _bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_shape_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_centered") = _GODOT_is_shape_centered;
	bool is_shape_centered() const
	{
		_GODOT_is_shape_centered.bind("TouchScreenButton", "is_shape_centered");
		return ptrcall!(bool)(_GODOT_is_shape_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shape_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_visible") = _GODOT_set_shape_visible;
	void set_shape_visible(in bool _bool)
	{
		_GODOT_set_shape_visible.bind("TouchScreenButton", "set_shape_visible");
		ptrcall!(void)(_GODOT_set_shape_visible, _godot_object, _bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_shape_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_visible") = _GODOT_is_shape_visible;
	bool is_shape_visible() const
	{
		_GODOT_is_shape_visible.bind("TouchScreenButton", "is_shape_visible");
		return ptrcall!(bool)(_GODOT_is_shape_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action") = _GODOT_set_action;
	void set_action(StringArg0)(in StringArg0 action)
	{
		_GODOT_set_action.bind("TouchScreenButton", "set_action");
		ptrcall!(void)(_GODOT_set_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action") = _GODOT_get_action;
	String get_action() const
	{
		_GODOT_get_action.bind("TouchScreenButton", "get_action");
		return ptrcall!(String)(_GODOT_get_action, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_visibility_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visibility_mode") = _GODOT_set_visibility_mode;
	void set_visibility_mode(in int mode)
	{
		_GODOT_set_visibility_mode.bind("TouchScreenButton", "set_visibility_mode");
		ptrcall!(void)(_GODOT_set_visibility_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(TouchScreenButton.VisibilityMode) _GODOT_get_visibility_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visibility_mode") = _GODOT_get_visibility_mode;
	TouchScreenButton.VisibilityMode get_visibility_mode() const
	{
		_GODOT_get_visibility_mode.bind("TouchScreenButton", "get_visibility_mode");
		return ptrcall!(TouchScreenButton.VisibilityMode)(_GODOT_get_visibility_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_passby_press;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_passby_press") = _GODOT_set_passby_press;
	void set_passby_press(in bool enabled)
	{
		_GODOT_set_passby_press.bind("TouchScreenButton", "set_passby_press");
		ptrcall!(void)(_GODOT_set_passby_press, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_passby_press_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_passby_press_enabled") = _GODOT_is_passby_press_enabled;
	bool is_passby_press_enabled() const
	{
		_GODOT_is_passby_press_enabled.bind("TouchScreenButton", "is_passby_press_enabled");
		return ptrcall!(bool)(_GODOT_is_passby_press_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pressed") = _GODOT_is_pressed;
	bool is_pressed() const
	{
		_GODOT_is_pressed.bind("TouchScreenButton", "is_pressed");
		return ptrcall!(bool)(_GODOT_is_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input") = _GODOT__input;
	void _input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
