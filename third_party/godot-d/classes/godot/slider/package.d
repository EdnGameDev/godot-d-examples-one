module godot.slider;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.range;
import godot.inputevent;
@GodotBaseClass struct Slider
{
	static immutable string _GODOT_internal_name = "Slider";
public:
	union { godot_object _godot_object; Range base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Slider other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Slider opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Slider _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Slider");
		if(constructor is null) return typeof(this).init;
		return cast(Slider)(constructor());
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
	package(godot) static GodotMethod!(void, int) _GODOT_set_ticks;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ticks") = _GODOT_set_ticks;
	void set_ticks(in int count)
	{
		_GODOT_set_ticks.bind("Slider", "set_ticks");
		ptrcall!(void)(_GODOT_set_ticks, _godot_object, count);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_ticks;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ticks") = _GODOT_get_ticks;
	int get_ticks() const
	{
		_GODOT_get_ticks.bind("Slider", "get_ticks");
		return ptrcall!(int)(_GODOT_get_ticks, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_ticks_on_borders;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ticks_on_borders") = _GODOT_get_ticks_on_borders;
	bool get_ticks_on_borders() const
	{
		_GODOT_get_ticks_on_borders.bind("Slider", "get_ticks_on_borders");
		return ptrcall!(bool)(_GODOT_get_ticks_on_borders, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ticks_on_borders;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ticks_on_borders") = _GODOT_set_ticks_on_borders;
	void set_ticks_on_borders(in bool ticks_on_border)
	{
		_GODOT_set_ticks_on_borders.bind("Slider", "set_ticks_on_borders");
		ptrcall!(void)(_GODOT_set_ticks_on_borders, _godot_object, ticks_on_border);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	void set_editable(in bool editable)
	{
		_GODOT_set_editable.bind("Slider", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, editable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	bool is_editable() const
	{
		_GODOT_is_editable.bind("Slider", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object);
	}
}
