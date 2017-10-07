module godot.boxshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape;
@GodotBaseClass struct BoxShape
{
	static immutable string _GODOT_internal_name = "BoxShape";
public:
	union { godot_object _godot_object; Shape base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BoxShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoxShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BoxShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BoxShape");
		if(constructor is null) return typeof(this).init;
		return cast(BoxShape)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	void set_extents(in Vector3 extents)
	{
		_GODOT_set_extents.bind("BoxShape", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	Vector3 get_extents() const
	{
		_GODOT_get_extents.bind("BoxShape", "get_extents");
		return ptrcall!(Vector3)(_GODOT_get_extents, _godot_object);
	}
}
