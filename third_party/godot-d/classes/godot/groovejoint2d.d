module godot.groovejoint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.joint2d;
@GodotBaseClass struct GrooveJoint2D
{
	static immutable string _GODOT_internal_name = "GrooveJoint2D";
public:
	union { godot_object _godot_object; Joint2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GrooveJoint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GrooveJoint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GrooveJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GrooveJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(GrooveJoint2D)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	void set_length(in float length)
	{
		_GODOT_set_length.bind("GrooveJoint2D", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	float get_length() const
	{
		_GODOT_get_length.bind("GrooveJoint2D", "get_length");
		return ptrcall!(float)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_initial_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_initial_offset") = _GODOT_set_initial_offset;
	void set_initial_offset(in float offset)
	{
		_GODOT_set_initial_offset.bind("GrooveJoint2D", "set_initial_offset");
		ptrcall!(void)(_GODOT_set_initial_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_initial_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_initial_offset") = _GODOT_get_initial_offset;
	float get_initial_offset() const
	{
		_GODOT_get_initial_offset.bind("GrooveJoint2D", "get_initial_offset");
		return ptrcall!(float)(_GODOT_get_initial_offset, _godot_object);
	}
}
