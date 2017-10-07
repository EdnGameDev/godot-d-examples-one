module godot.planeshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape;
@GodotBaseClass struct PlaneShape
{
	static immutable string _GODOT_internal_name = "PlaneShape";
public:
	union { godot_object _godot_object; Shape base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PlaneShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PlaneShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PlaneShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PlaneShape");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneShape)(constructor());
	}
	package(godot) static GodotMethod!(void, Plane) _GODOT_set_plane;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_plane") = _GODOT_set_plane;
	void set_plane(in Plane plane)
	{
		_GODOT_set_plane.bind("PlaneShape", "set_plane");
		ptrcall!(void)(_GODOT_set_plane, _godot_object, plane);
	}
	package(godot) static GodotMethod!(Plane) _GODOT_get_plane;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_plane") = _GODOT_get_plane;
	Plane get_plane() const
	{
		_GODOT_get_plane.bind("PlaneShape", "get_plane");
		return ptrcall!(Plane)(_GODOT_get_plane, _godot_object);
	}
}
