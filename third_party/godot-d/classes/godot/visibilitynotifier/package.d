module godot.visibilitynotifier;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct VisibilityNotifier
{
	static immutable string _GODOT_internal_name = "VisibilityNotifier";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisibilityNotifier other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityNotifier opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisibilityNotifier _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisibilityNotifier");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityNotifier)(constructor());
	}
	package(godot) static GodotMethod!(void, Rect3) _GODOT_set_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_aabb") = _GODOT_set_aabb;
	void set_aabb(in Rect3 rect)
	{
		_GODOT_set_aabb.bind("VisibilityNotifier", "set_aabb");
		ptrcall!(void)(_GODOT_set_aabb, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect3) _GODOT_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aabb") = _GODOT_get_aabb;
	Rect3 get_aabb() const
	{
		_GODOT_get_aabb.bind("VisibilityNotifier", "get_aabb");
		return ptrcall!(Rect3)(_GODOT_get_aabb, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_screen") = _GODOT_is_on_screen;
	bool is_on_screen() const
	{
		_GODOT_is_on_screen.bind("VisibilityNotifier", "is_on_screen");
		return ptrcall!(bool)(_GODOT_is_on_screen, _godot_object);
	}
}
