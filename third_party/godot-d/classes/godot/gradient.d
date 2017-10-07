module godot.gradient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Gradient
{
	static immutable string _GODOT_internal_name = "Gradient";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Gradient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Gradient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Gradient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Gradient");
		if(constructor is null) return typeof(this).init;
		return cast(Gradient)(constructor());
	}
	package(godot) static GodotMethod!(void, float, Color) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	void add_point(in float offset, in Color color)
	{
		_GODOT_add_point.bind("Gradient", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, offset, color);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	void remove_point(in int offset)
	{
		_GODOT_remove_point.bind("Gradient", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in int point, in float offset)
	{
		_GODOT_set_offset.bind("Gradient", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, point, offset);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	float get_offset(in int point) const
	{
		_GODOT_get_offset.bind("Gradient", "get_offset");
		return ptrcall!(float)(_GODOT_get_offset, _godot_object, point);
	}
	package(godot) static GodotMethod!(void, int, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(in int point, in Color color)
	{
		_GODOT_set_color.bind("Gradient", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, point, color);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color(in int point) const
	{
		_GODOT_get_color.bind("Gradient", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object, point);
	}
	package(godot) static GodotMethod!(Color, float) _GODOT_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate") = _GODOT_interpolate;
	Color interpolate(in float offset)
	{
		_GODOT_interpolate.bind("Gradient", "interpolate");
		return ptrcall!(Color)(_GODOT_interpolate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_count") = _GODOT_get_point_count;
	int get_point_count() const
	{
		_GODOT_get_point_count.bind("Gradient", "get_point_count");
		return ptrcall!(int)(_GODOT_get_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolRealArray) _GODOT_set_offsets;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offsets") = _GODOT_set_offsets;
	void set_offsets(in PoolRealArray offsets)
	{
		_GODOT_set_offsets.bind("Gradient", "set_offsets");
		ptrcall!(void)(_GODOT_set_offsets, _godot_object, offsets);
	}
	package(godot) static GodotMethod!(PoolRealArray) _GODOT_get_offsets;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offsets") = _GODOT_get_offsets;
	PoolRealArray get_offsets() const
	{
		_GODOT_get_offsets.bind("Gradient", "get_offsets");
		return ptrcall!(PoolRealArray)(_GODOT_get_offsets, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolColorArray) _GODOT_set_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_colors") = _GODOT_set_colors;
	void set_colors(in PoolColorArray colors)
	{
		_GODOT_set_colors.bind("Gradient", "set_colors");
		ptrcall!(void)(_GODOT_set_colors, _godot_object, colors);
	}
	package(godot) static GodotMethod!(PoolColorArray) _GODOT_get_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_colors") = _GODOT_get_colors;
	PoolColorArray get_colors() const
	{
		_GODOT_get_colors.bind("Gradient", "get_colors");
		return ptrcall!(PoolColorArray)(_GODOT_get_colors, _godot_object);
	}
}
