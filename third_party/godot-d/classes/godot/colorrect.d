module godot.colorrect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct ColorRect
{
	static immutable string _GODOT_internal_name = "ColorRect";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ColorRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ColorRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ColorRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ColorRect");
		if(constructor is null) return typeof(this).init;
		return cast(ColorRect)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_frame_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame_color") = _GODOT_set_frame_color;
	void set_frame_color(in Color color)
	{
		_GODOT_set_frame_color.bind("ColorRect", "set_frame_color");
		ptrcall!(void)(_GODOT_set_frame_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_frame_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame_color") = _GODOT_get_frame_color;
	Color get_frame_color() const
	{
		_GODOT_get_frame_color.bind("ColorRect", "get_frame_color");
		return ptrcall!(Color)(_GODOT_get_frame_color, _godot_object);
	}
}
