module godot.centercontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.container;
@GodotBaseClass struct CenterContainer
{
	static immutable string _GODOT_internal_name = "CenterContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CenterContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CenterContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CenterContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CenterContainer");
		if(constructor is null) return typeof(this).init;
		return cast(CenterContainer)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_top_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_top_left") = _GODOT_set_use_top_left;
	void set_use_top_left(in bool enable)
	{
		_GODOT_set_use_top_left.bind("CenterContainer", "set_use_top_left");
		ptrcall!(void)(_GODOT_set_use_top_left, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_top_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_top_left") = _GODOT_is_using_top_left;
	bool is_using_top_left() const
	{
		_GODOT_is_using_top_left.bind("CenterContainer", "is_using_top_left");
		return ptrcall!(bool)(_GODOT_is_using_top_left, _godot_object);
	}
}
