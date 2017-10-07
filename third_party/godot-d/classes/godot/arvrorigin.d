module godot.arvrorigin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct ARVROrigin
{
	static immutable string _GODOT_internal_name = "ARVROrigin";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVROrigin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVROrigin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVROrigin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVROrigin");
		if(constructor is null) return typeof(this).init;
		return cast(ARVROrigin)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world_scale") = _GODOT_set_world_scale;
	void set_world_scale(in float world_scale)
	{
		_GODOT_set_world_scale.bind("ARVROrigin", "set_world_scale");
		ptrcall!(void)(_GODOT_set_world_scale, _godot_object, world_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_scale") = _GODOT_get_world_scale;
	float get_world_scale() const
	{
		_GODOT_get_world_scale.bind("ARVROrigin", "get_world_scale");
		return ptrcall!(float)(_GODOT_get_world_scale, _godot_object);
	}
}
