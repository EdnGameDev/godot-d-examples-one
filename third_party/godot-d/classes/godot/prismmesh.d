module godot.prismmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct PrismMesh
{
	static immutable string _GODOT_internal_name = "PrismMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PrismMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PrismMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PrismMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PrismMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PrismMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_left_to_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_left_to_right") = _GODOT_set_left_to_right;
	void set_left_to_right(in float left_to_right)
	{
		_GODOT_set_left_to_right.bind("PrismMesh", "set_left_to_right");
		ptrcall!(void)(_GODOT_set_left_to_right, _godot_object, left_to_right);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_left_to_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_left_to_right") = _GODOT_get_left_to_right;
	float get_left_to_right() const
	{
		_GODOT_get_left_to_right.bind("PrismMesh", "get_left_to_right");
		return ptrcall!(float)(_GODOT_get_left_to_right, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in Vector3 size)
	{
		_GODOT_set_size.bind("PrismMesh", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector3 get_size() const
	{
		_GODOT_get_size.bind("PrismMesh", "get_size");
		return ptrcall!(Vector3)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_subdivide_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_width") = _GODOT_set_subdivide_width;
	void set_subdivide_width(in int segments)
	{
		_GODOT_set_subdivide_width.bind("PrismMesh", "set_subdivide_width");
		ptrcall!(void)(_GODOT_set_subdivide_width, _godot_object, segments);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_subdivide_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_width") = _GODOT_get_subdivide_width;
	int get_subdivide_width() const
	{
		_GODOT_get_subdivide_width.bind("PrismMesh", "get_subdivide_width");
		return ptrcall!(int)(_GODOT_get_subdivide_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_subdivide_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_height") = _GODOT_set_subdivide_height;
	void set_subdivide_height(in int segments)
	{
		_GODOT_set_subdivide_height.bind("PrismMesh", "set_subdivide_height");
		ptrcall!(void)(_GODOT_set_subdivide_height, _godot_object, segments);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_subdivide_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_height") = _GODOT_get_subdivide_height;
	int get_subdivide_height() const
	{
		_GODOT_get_subdivide_height.bind("PrismMesh", "get_subdivide_height");
		return ptrcall!(int)(_GODOT_get_subdivide_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_subdivide_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_depth") = _GODOT_set_subdivide_depth;
	void set_subdivide_depth(in int segments)
	{
		_GODOT_set_subdivide_depth.bind("PrismMesh", "set_subdivide_depth");
		ptrcall!(void)(_GODOT_set_subdivide_depth, _godot_object, segments);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_subdivide_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_depth") = _GODOT_get_subdivide_depth;
	int get_subdivide_depth() const
	{
		_GODOT_get_subdivide_depth.bind("PrismMesh", "get_subdivide_depth");
		return ptrcall!(int)(_GODOT_get_subdivide_depth, _godot_object);
	}
}
