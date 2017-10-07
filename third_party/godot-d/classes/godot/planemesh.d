module godot.planemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct PlaneMesh
{
	static immutable string _GODOT_internal_name = "PlaneMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PlaneMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PlaneMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PlaneMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PlaneMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in Vector2 size)
	{
		_GODOT_set_size.bind("PlaneMesh", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("PlaneMesh", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_subdivide_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_width") = _GODOT_set_subdivide_width;
	void set_subdivide_width(in int subdivide)
	{
		_GODOT_set_subdivide_width.bind("PlaneMesh", "set_subdivide_width");
		ptrcall!(void)(_GODOT_set_subdivide_width, _godot_object, subdivide);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_subdivide_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_width") = _GODOT_get_subdivide_width;
	int get_subdivide_width() const
	{
		_GODOT_get_subdivide_width.bind("PlaneMesh", "get_subdivide_width");
		return ptrcall!(int)(_GODOT_get_subdivide_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_subdivide_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_depth") = _GODOT_set_subdivide_depth;
	void set_subdivide_depth(in int subdivide)
	{
		_GODOT_set_subdivide_depth.bind("PlaneMesh", "set_subdivide_depth");
		ptrcall!(void)(_GODOT_set_subdivide_depth, _godot_object, subdivide);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_subdivide_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_depth") = _GODOT_get_subdivide_depth;
	int get_subdivide_depth() const
	{
		_GODOT_get_subdivide_depth.bind("PlaneMesh", "get_subdivide_depth");
		return ptrcall!(int)(_GODOT_get_subdivide_depth, _godot_object);
	}
}
