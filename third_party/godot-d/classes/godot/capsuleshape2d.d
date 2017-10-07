module godot.capsuleshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape2d;
@GodotBaseClass struct CapsuleShape2D
{
	static immutable string _GODOT_internal_name = "CapsuleShape2D";
public:
	union { godot_object _godot_object; Shape2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CapsuleShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CapsuleShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CapsuleShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CapsuleShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(CapsuleShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	void set_radius(in float radius)
	{
		_GODOT_set_radius.bind("CapsuleShape2D", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	float get_radius() const
	{
		_GODOT_get_radius.bind("CapsuleShape2D", "get_radius");
		return ptrcall!(float)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	void set_height(in float height)
	{
		_GODOT_set_height.bind("CapsuleShape2D", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	float get_height() const
	{
		_GODOT_get_height.bind("CapsuleShape2D", "get_height");
		return ptrcall!(float)(_GODOT_get_height, _godot_object);
	}
}
