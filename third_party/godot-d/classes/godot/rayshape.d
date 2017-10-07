module godot.rayshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape;
@GodotBaseClass struct RayShape
{
	static immutable string _GODOT_internal_name = "RayShape";
public:
	union { godot_object _godot_object; Shape base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RayShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RayShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RayShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RayShape");
		if(constructor is null) return typeof(this).init;
		return cast(RayShape)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	void set_length(in float length)
	{
		_GODOT_set_length.bind("RayShape", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	float get_length() const
	{
		_GODOT_get_length.bind("RayShape", "get_length");
		return ptrcall!(float)(_GODOT_get_length, _godot_object);
	}
}
