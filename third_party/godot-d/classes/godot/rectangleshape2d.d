module godot.rectangleshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape2d;
@GodotBaseClass struct RectangleShape2D
{
	static immutable string _GODOT_internal_name = "RectangleShape2D";
public:
	union { godot_object _godot_object; Shape2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RectangleShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RectangleShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RectangleShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RectangleShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(RectangleShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	void set_extents(in Vector2 extents)
	{
		_GODOT_set_extents.bind("RectangleShape2D", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	Vector2 get_extents() const
	{
		_GODOT_get_extents.bind("RectangleShape2D", "get_extents");
		return ptrcall!(Vector2)(_GODOT_get_extents, _godot_object);
	}
}
