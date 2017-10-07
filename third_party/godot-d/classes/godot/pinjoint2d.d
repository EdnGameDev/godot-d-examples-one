module godot.pinjoint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint2d;
@GodotBaseClass struct PinJoint2D
{
	static immutable string _GODOT_internal_name = "PinJoint2D";
public:
	union { godot_object _godot_object; Joint2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PinJoint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PinJoint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PinJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PinJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(PinJoint2D)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_softness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_softness") = _GODOT_set_softness;
	void set_softness(in float softness)
	{
		_GODOT_set_softness.bind("PinJoint2D", "set_softness");
		ptrcall!(void)(_GODOT_set_softness, _godot_object, softness);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_softness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_softness") = _GODOT_get_softness;
	float get_softness() const
	{
		_GODOT_get_softness.bind("PinJoint2D", "get_softness");
		return ptrcall!(float)(_GODOT_get_softness, _godot_object);
	}
}
