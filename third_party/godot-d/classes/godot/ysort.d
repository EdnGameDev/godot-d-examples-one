module godot.ysort;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct YSort
{
	static immutable string _GODOT_internal_name = "YSort";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in YSort other) const { return _godot_object.ptr is other._godot_object.ptr; }
	YSort opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static YSort _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("YSort");
		if(constructor is null) return typeof(this).init;
		return cast(YSort)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sort_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sort_enabled") = _GODOT_set_sort_enabled;
	void set_sort_enabled(in bool enabled)
	{
		_GODOT_set_sort_enabled.bind("YSort", "set_sort_enabled");
		ptrcall!(void)(_GODOT_set_sort_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sort_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sort_enabled") = _GODOT_is_sort_enabled;
	bool is_sort_enabled() const
	{
		_GODOT_is_sort_enabled.bind("YSort", "is_sort_enabled");
		return ptrcall!(bool)(_GODOT_is_sort_enabled, _godot_object);
	}
}
