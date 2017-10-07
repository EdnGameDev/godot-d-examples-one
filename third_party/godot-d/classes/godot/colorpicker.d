module godot.colorpicker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.boxcontainer;
import godot.inputevent;
@GodotBaseClass struct ColorPicker
{
	static immutable string _GODOT_internal_name = "ColorPicker";
public:
	union { godot_object _godot_object; BoxContainer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ColorPicker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ColorPicker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ColorPicker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ColorPicker");
		if(constructor is null) return typeof(this).init;
		return cast(ColorPicker)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_pick_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pick_color") = _GODOT_set_pick_color;
	void set_pick_color(in Color color)
	{
		_GODOT_set_pick_color.bind("ColorPicker", "set_pick_color");
		ptrcall!(void)(_GODOT_set_pick_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_pick_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pick_color") = _GODOT_get_pick_color;
	Color get_pick_color() const
	{
		_GODOT_get_pick_color.bind("ColorPicker", "get_pick_color");
		return ptrcall!(Color)(_GODOT_get_pick_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_raw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_raw_mode") = _GODOT_set_raw_mode;
	void set_raw_mode(in bool mode)
	{
		_GODOT_set_raw_mode.bind("ColorPicker", "set_raw_mode");
		ptrcall!(void)(_GODOT_set_raw_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_raw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_raw_mode") = _GODOT_is_raw_mode;
	bool is_raw_mode() const
	{
		_GODOT_is_raw_mode.bind("ColorPicker", "is_raw_mode");
		return ptrcall!(bool)(_GODOT_is_raw_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_edit_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edit_alpha") = _GODOT_set_edit_alpha;
	void set_edit_alpha(in bool show)
	{
		_GODOT_set_edit_alpha.bind("ColorPicker", "set_edit_alpha");
		ptrcall!(void)(_GODOT_set_edit_alpha, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editing_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editing_alpha") = _GODOT_is_editing_alpha;
	bool is_editing_alpha() const
	{
		_GODOT_is_editing_alpha.bind("ColorPicker", "is_editing_alpha");
		return ptrcall!(bool)(_GODOT_is_editing_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_add_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_preset") = _GODOT_add_preset;
	void add_preset(in Color color)
	{
		_GODOT_add_preset.bind("ColorPicker", "add_preset");
		ptrcall!(void)(_GODOT_add_preset, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__value_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_value_changed") = _GODOT__value_changed;
	void _value_changed(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__html_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_html_entered") = _GODOT__html_entered;
	void _html_entered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_html_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__text_type_toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_type_toggled") = _GODOT__text_type_toggled;
	void _text_type_toggled()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_type_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__add_preset_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_add_preset_pressed") = _GODOT__add_preset_pressed;
	void _add_preset_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_add_preset_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__screen_pick_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_screen_pick_pressed") = _GODOT__screen_pick_pressed;
	void _screen_pick_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_screen_pick_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__sample_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_sample_draw") = _GODOT__sample_draw;
	void _sample_draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_sample_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, GodotObject) _GODOT__hsv_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_hsv_draw") = _GODOT__hsv_draw;
	void _hsv_draw(in int arg0, in GodotObject arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_hsv_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__uv_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_uv_input") = _GODOT__uv_input;
	void _uv_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_uv_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__w_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_w_input") = _GODOT__w_input;
	void _w_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_w_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__preset_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_preset_input") = _GODOT__preset_input;
	void _preset_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_preset_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__screen_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_screen_input") = _GODOT__screen_input;
	void _screen_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_screen_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
