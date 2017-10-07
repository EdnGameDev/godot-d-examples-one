module godot.navigationpolygoninstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.navigationpolygon;
@GodotBaseClass struct NavigationPolygonInstance
{
	static immutable string _GODOT_internal_name = "NavigationPolygonInstance";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NavigationPolygonInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationPolygonInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NavigationPolygonInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationPolygonInstance");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygonInstance)(constructor());
	}
	package(godot) static GodotMethod!(void, NavigationPolygon) _GODOT_set_navigation_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_navigation_polygon") = _GODOT_set_navigation_polygon;
	void set_navigation_polygon(in NavigationPolygon navpoly)
	{
		_GODOT_set_navigation_polygon.bind("NavigationPolygonInstance", "set_navigation_polygon");
		ptrcall!(void)(_GODOT_set_navigation_polygon, _godot_object, navpoly);
	}
	package(godot) static GodotMethod!(NavigationPolygon) _GODOT_get_navigation_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_navigation_polygon") = _GODOT_get_navigation_polygon;
	NavigationPolygon get_navigation_polygon() const
	{
		_GODOT_get_navigation_polygon.bind("NavigationPolygonInstance", "get_navigation_polygon");
		return ptrcall!(NavigationPolygon)(_GODOT_get_navigation_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled") = _GODOT_set_enabled;
	void set_enabled(in bool enabled)
	{
		_GODOT_set_enabled.bind("NavigationPolygonInstance", "set_enabled");
		ptrcall!(void)(_GODOT_set_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabled") = _GODOT_is_enabled;
	bool is_enabled() const
	{
		_GODOT_is_enabled.bind("NavigationPolygonInstance", "is_enabled");
		return ptrcall!(bool)(_GODOT_is_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__navpoly_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_navpoly_changed") = _GODOT__navpoly_changed;
	void _navpoly_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_navpoly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
