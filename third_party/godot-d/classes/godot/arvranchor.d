module godot.arvranchor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct ARVRAnchor
{
	static immutable string _GODOT_internal_name = "ARVRAnchor";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRAnchor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRAnchor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRAnchor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRAnchor");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRAnchor)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_anchor_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_id") = _GODOT_set_anchor_id;
	void set_anchor_id(in int anchor_id)
	{
		_GODOT_set_anchor_id.bind("ARVRAnchor", "set_anchor_id");
		ptrcall!(void)(_GODOT_set_anchor_id, _godot_object, anchor_id);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_anchor_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_id") = _GODOT_get_anchor_id;
	int get_anchor_id() const
	{
		_GODOT_get_anchor_id.bind("ARVRAnchor", "get_anchor_id");
		return ptrcall!(int)(_GODOT_get_anchor_id, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_anchor_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_name") = _GODOT_get_anchor_name;
	String get_anchor_name() const
	{
		_GODOT_get_anchor_name.bind("ARVRAnchor", "get_anchor_name");
		return ptrcall!(String)(_GODOT_get_anchor_name, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_is_active") = _GODOT_get_is_active;
	bool get_is_active() const
	{
		_GODOT_get_is_active.bind("ARVRAnchor", "get_is_active");
		return ptrcall!(bool)(_GODOT_get_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector3 get_size() const
	{
		_GODOT_get_size.bind("ARVRAnchor", "get_size");
		return ptrcall!(Vector3)(_GODOT_get_size, _godot_object);
	}
}
