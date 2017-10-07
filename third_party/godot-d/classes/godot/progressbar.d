module godot.progressbar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.range;
@GodotBaseClass struct ProgressBar
{
	static immutable string _GODOT_internal_name = "ProgressBar";
public:
	union { godot_object _godot_object; Range base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ProgressBar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProgressBar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProgressBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ProgressBar");
		if(constructor is null) return typeof(this).init;
		return cast(ProgressBar)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_percent_visible") = _GODOT_set_percent_visible;
	void set_percent_visible(in bool visible)
	{
		_GODOT_set_percent_visible.bind("ProgressBar", "set_percent_visible");
		ptrcall!(void)(_GODOT_set_percent_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_percent_visible") = _GODOT_is_percent_visible;
	bool is_percent_visible() const
	{
		_GODOT_is_percent_visible.bind("ProgressBar", "is_percent_visible");
		return ptrcall!(bool)(_GODOT_is_percent_visible, _godot_object);
	}
}
