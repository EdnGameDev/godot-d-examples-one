module godot.multimesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
@GodotBaseClass struct MultiMesh
{
	static immutable string _GODOT_internal_name = "MultiMesh";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MultiMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MultiMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MultiMesh");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMesh)(constructor());
	}
	enum TransformFormat : int
	{
		TRANSFORM_3D = 1,
		TRANSFORM_2D = 0,
	}
	enum ColorFormat : int
	{
		COLOR_FLOAT = 2,
		COLOR_8BIT = 1,
		COLOR_NONE = 0,
	}
	enum int COLOR_FLOAT = 2;
	enum int COLOR_8BIT = 1;
	enum int TRANSFORM_3D = 1;
	enum int COLOR_NONE = 0;
	enum int TRANSFORM_2D = 0;
	package(godot) static GodotMethod!(void, Mesh) _GODOT_set_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mesh") = _GODOT_set_mesh;
	void set_mesh(in Mesh mesh)
	{
		_GODOT_set_mesh.bind("MultiMesh", "set_mesh");
		ptrcall!(void)(_GODOT_set_mesh, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(Mesh) _GODOT_get_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh") = _GODOT_get_mesh;
	Mesh get_mesh() const
	{
		_GODOT_get_mesh.bind("MultiMesh", "get_mesh");
		return ptrcall!(Mesh)(_GODOT_get_mesh, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_color_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color_format") = _GODOT_set_color_format;
	void set_color_format(in int format)
	{
		_GODOT_set_color_format.bind("MultiMesh", "set_color_format");
		ptrcall!(void)(_GODOT_set_color_format, _godot_object, format);
	}
	package(godot) static GodotMethod!(MultiMesh.ColorFormat) _GODOT_get_color_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color_format") = _GODOT_get_color_format;
	MultiMesh.ColorFormat get_color_format() const
	{
		_GODOT_get_color_format.bind("MultiMesh", "get_color_format");
		return ptrcall!(MultiMesh.ColorFormat)(_GODOT_get_color_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_transform_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform_format") = _GODOT_set_transform_format;
	void set_transform_format(in int format)
	{
		_GODOT_set_transform_format.bind("MultiMesh", "set_transform_format");
		ptrcall!(void)(_GODOT_set_transform_format, _godot_object, format);
	}
	package(godot) static GodotMethod!(MultiMesh.TransformFormat) _GODOT_get_transform_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform_format") = _GODOT_get_transform_format;
	MultiMesh.TransformFormat get_transform_format() const
	{
		_GODOT_get_transform_format.bind("MultiMesh", "get_transform_format");
		return ptrcall!(MultiMesh.TransformFormat)(_GODOT_get_transform_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_instance_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_count") = _GODOT_set_instance_count;
	void set_instance_count(in int count)
	{
		_GODOT_set_instance_count.bind("MultiMesh", "set_instance_count");
		ptrcall!(void)(_GODOT_set_instance_count, _godot_object, count);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_instance_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_count") = _GODOT_get_instance_count;
	int get_instance_count() const
	{
		_GODOT_get_instance_count.bind("MultiMesh", "get_instance_count");
		return ptrcall!(int)(_GODOT_get_instance_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Transform) _GODOT_set_instance_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_transform") = _GODOT_set_instance_transform;
	void set_instance_transform(in int instance, in Transform transform)
	{
		_GODOT_set_instance_transform.bind("MultiMesh", "set_instance_transform");
		ptrcall!(void)(_GODOT_set_instance_transform, _godot_object, instance, transform);
	}
	package(godot) static GodotMethod!(Transform, int) _GODOT_get_instance_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_transform") = _GODOT_get_instance_transform;
	Transform get_instance_transform(in int instance) const
	{
		_GODOT_get_instance_transform.bind("MultiMesh", "get_instance_transform");
		return ptrcall!(Transform)(_GODOT_get_instance_transform, _godot_object, instance);
	}
	package(godot) static GodotMethod!(void, int, Color) _GODOT_set_instance_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_color") = _GODOT_set_instance_color;
	void set_instance_color(in int instance, in Color color)
	{
		_GODOT_set_instance_color.bind("MultiMesh", "set_instance_color");
		ptrcall!(void)(_GODOT_set_instance_color, _godot_object, instance, color);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_instance_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_color") = _GODOT_get_instance_color;
	Color get_instance_color(in int instance) const
	{
		_GODOT_get_instance_color.bind("MultiMesh", "get_instance_color");
		return ptrcall!(Color)(_GODOT_get_instance_color, _godot_object, instance);
	}
	package(godot) static GodotMethod!(Rect3) _GODOT_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aabb") = _GODOT_get_aabb;
	Rect3 get_aabb() const
	{
		_GODOT_get_aabb.bind("MultiMesh", "get_aabb");
		return ptrcall!(Rect3)(_GODOT_get_aabb, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT__set_transform_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_transform_array") = _GODOT__set_transform_array;
	void _set_transform_array(in PoolVector3Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_transform_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT__get_transform_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_transform_array") = _GODOT__get_transform_array;
	PoolVector3Array _get_transform_array() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_transform_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolVector3Array);
	}
	package(godot) static GodotMethod!(void, PoolColorArray) _GODOT__set_color_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_color_array") = _GODOT__set_color_array;
	void _set_color_array(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_color_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolColorArray) _GODOT__get_color_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_color_array") = _GODOT__get_color_array;
	PoolColorArray _get_color_array() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_color_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolColorArray);
	}
}
