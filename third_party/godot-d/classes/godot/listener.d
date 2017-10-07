module godot.listener;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct Listener
{
	static immutable string _GODOT_internal_name = "Listener";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Listener other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Listener opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Listener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Listener");
		if(constructor is null) return typeof(this).init;
		return cast(Listener)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT_make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_current") = _GODOT_make_current;
	void make_current()
	{
		_GODOT_make_current.bind("Listener", "make_current");
		ptrcall!(void)(_GODOT_make_current, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_current") = _GODOT_clear_current;
	void clear_current()
	{
		_GODOT_clear_current.bind("Listener", "clear_current");
		ptrcall!(void)(_GODOT_clear_current, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_current") = _GODOT_is_current;
	bool is_current() const
	{
		_GODOT_is_current.bind("Listener", "is_current");
		return ptrcall!(bool)(_GODOT_is_current, _godot_object);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_listener_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_listener_transform") = _GODOT_get_listener_transform;
	Transform get_listener_transform() const
	{
		_GODOT_get_listener_transform.bind("Listener", "get_listener_transform");
		return ptrcall!(Transform)(_GODOT_get_listener_transform, _godot_object);
	}
}
