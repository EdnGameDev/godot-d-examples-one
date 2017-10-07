module godot.visibilitynotifier2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct VisibilityNotifier2D
{
	static immutable string _GODOT_internal_name = "VisibilityNotifier2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisibilityNotifier2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityNotifier2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisibilityNotifier2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisibilityNotifier2D");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityNotifier2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rect") = _GODOT_set_rect;
	void set_rect(in Rect2 rect)
	{
		_GODOT_set_rect.bind("VisibilityNotifier2D", "set_rect");
		ptrcall!(void)(_GODOT_set_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	Rect2 get_rect() const
	{
		_GODOT_get_rect.bind("VisibilityNotifier2D", "get_rect");
		return ptrcall!(Rect2)(_GODOT_get_rect, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_screen") = _GODOT_is_on_screen;
	bool is_on_screen() const
	{
		_GODOT_is_on_screen.bind("VisibilityNotifier2D", "is_on_screen");
		return ptrcall!(bool)(_GODOT_is_on_screen, _godot_object);
	}
}
