module godot.lightoccluder2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.occluderpolygon2d;
@GodotBaseClass struct LightOccluder2D
{
	static immutable string _GODOT_internal_name = "LightOccluder2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in LightOccluder2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LightOccluder2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LightOccluder2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LightOccluder2D");
		if(constructor is null) return typeof(this).init;
		return cast(LightOccluder2D)(constructor());
	}
	package(godot) static GodotMethod!(void, OccluderPolygon2D) _GODOT_set_occluder_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_occluder_polygon") = _GODOT_set_occluder_polygon;
	void set_occluder_polygon(in OccluderPolygon2D polygon)
	{
		_GODOT_set_occluder_polygon.bind("LightOccluder2D", "set_occluder_polygon");
		ptrcall!(void)(_GODOT_set_occluder_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(OccluderPolygon2D) _GODOT_get_occluder_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_occluder_polygon") = _GODOT_get_occluder_polygon;
	OccluderPolygon2D get_occluder_polygon() const
	{
		_GODOT_get_occluder_polygon.bind("LightOccluder2D", "get_occluder_polygon");
		return ptrcall!(OccluderPolygon2D)(_GODOT_get_occluder_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_occluder_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_occluder_light_mask") = _GODOT_set_occluder_light_mask;
	void set_occluder_light_mask(in int mask)
	{
		_GODOT_set_occluder_light_mask.bind("LightOccluder2D", "set_occluder_light_mask");
		ptrcall!(void)(_GODOT_set_occluder_light_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_occluder_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_occluder_light_mask") = _GODOT_get_occluder_light_mask;
	int get_occluder_light_mask() const
	{
		_GODOT_get_occluder_light_mask.bind("LightOccluder2D", "get_occluder_light_mask");
		return ptrcall!(int)(_GODOT_get_occluder_light_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__poly_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_poly_changed") = _GODOT__poly_changed;
	void _poly_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_poly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
