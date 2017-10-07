module godot.viewportcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.container;
@GodotBaseClass struct ViewportContainer
{
	static immutable string _GODOT_internal_name = "ViewportContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ViewportContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ViewportContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ViewportContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ViewportContainer");
		if(constructor is null) return typeof(this).init;
		return cast(ViewportContainer)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch") = _GODOT_set_stretch;
	void set_stretch(in bool enable)
	{
		_GODOT_set_stretch.bind("ViewportContainer", "set_stretch");
		ptrcall!(void)(_GODOT_set_stretch, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stretch_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stretch_enabled") = _GODOT_is_stretch_enabled;
	bool is_stretch_enabled() const
	{
		_GODOT_is_stretch_enabled.bind("ViewportContainer", "is_stretch_enabled");
		return ptrcall!(bool)(_GODOT_is_stretch_enabled, _godot_object);
	}
}
