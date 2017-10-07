module godot.arraymesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.mesh;
import godot.material;
@GodotBaseClass struct ArrayMesh
{
	static immutable string _GODOT_internal_name = "ArrayMesh";
public:
	union { godot_object _godot_object; Mesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ArrayMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ArrayMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ArrayMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ArrayMesh");
		if(constructor is null) return typeof(this).init;
		return cast(ArrayMesh)(constructor());
	}
	enum ArrayFormat : int
	{
		ARRAY_FORMAT_NORMAL = 2,
		ARRAY_FORMAT_WEIGHTS = 128,
		ARRAY_FORMAT_TEX_UV2 = 32,
		ARRAY_FORMAT_TANGENT = 4,
		ARRAY_FORMAT_INDEX = 256,
		ARRAY_FORMAT_COLOR = 8,
		ARRAY_FORMAT_BONES = 64,
		ARRAY_FORMAT_VERTEX = 1,
		ARRAY_FORMAT_TEX_UV = 16,
	}
	enum ArrayType : int
	{
		ARRAY_TANGENT = 2,
		ARRAY_TEX_UV2 = 5,
		ARRAY_WEIGHTS = 7,
		ARRAY_INDEX = 8,
		ARRAY_MAX = 9,
		ARRAY_COLOR = 3,
		ARRAY_TEX_UV = 4,
		ARRAY_NORMAL = 1,
		ARRAY_BONES = 6,
		ARRAY_VERTEX = 0,
	}
	enum int ARRAY_WEIGHTS_SIZE = 4;
	enum int ARRAY_FORMAT_VERTEX = 1;
	enum int ARRAY_FORMAT_NORMAL = 2;
	enum int ARRAY_FORMAT_WEIGHTS = 128;
	enum int ARRAY_FORMAT_TEX_UV2 = 32;
	enum int ARRAY_TANGENT = 2;
	enum int ARRAY_FORMAT_TANGENT = 4;
	enum int ARRAY_TEX_UV2 = 5;
	enum int ARRAY_FORMAT_INDEX = 256;
	enum int ARRAY_FORMAT_COLOR = 8;
	enum int ARRAY_FORMAT_BONES = 64;
	enum int ARRAY_WEIGHTS = 7;
	enum int ARRAY_INDEX = 8;
	enum int ARRAY_MAX = 9;
	enum int ARRAY_COLOR = 3;
	enum int ARRAY_TEX_UV = 4;
	enum int ARRAY_NORMAL = 1;
	enum int ARRAY_BONES = 6;
	enum int ARRAY_VERTEX = 0;
	enum int NO_INDEX_ARRAY = -1;
	enum int ARRAY_FORMAT_TEX_UV = 16;
	package(godot) static GodotMethod!(void, String) _GODOT_add_blend_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_blend_shape") = _GODOT_add_blend_shape;
	void add_blend_shape(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_blend_shape.bind("ArrayMesh", "add_blend_shape");
		ptrcall!(void)(_GODOT_add_blend_shape, _godot_object, name);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_blend_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_shape_count") = _GODOT_get_blend_shape_count;
	int get_blend_shape_count() const
	{
		_GODOT_get_blend_shape_count.bind("ArrayMesh", "get_blend_shape_count");
		return ptrcall!(int)(_GODOT_get_blend_shape_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_blend_shape_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_shape_name") = _GODOT_get_blend_shape_name;
	String get_blend_shape_name(in int index) const
	{
		_GODOT_get_blend_shape_name.bind("ArrayMesh", "get_blend_shape_name");
		return ptrcall!(String)(_GODOT_get_blend_shape_name, _godot_object, index);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_blend_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_blend_shapes") = _GODOT_clear_blend_shapes;
	void clear_blend_shapes()
	{
		_GODOT_clear_blend_shapes.bind("ArrayMesh", "clear_blend_shapes");
		ptrcall!(void)(_GODOT_clear_blend_shapes, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_blend_shape_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_shape_mode") = _GODOT_set_blend_shape_mode;
	void set_blend_shape_mode(in int mode)
	{
		_GODOT_set_blend_shape_mode.bind("ArrayMesh", "set_blend_shape_mode");
		ptrcall!(void)(_GODOT_set_blend_shape_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Mesh.BlendShapeMode) _GODOT_get_blend_shape_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_shape_mode") = _GODOT_get_blend_shape_mode;
	Mesh.BlendShapeMode get_blend_shape_mode() const
	{
		_GODOT_get_blend_shape_mode.bind("ArrayMesh", "get_blend_shape_mode");
		return ptrcall!(Mesh.BlendShapeMode)(_GODOT_get_blend_shape_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Array, Array, int) _GODOT_add_surface_from_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_surface_from_arrays") = _GODOT_add_surface_from_arrays;
	void add_surface_from_arrays(in int primitive, in Array arrays, in Array blend_shapes = Array.empty_array, in int compress_flags = 97792)
	{
		_GODOT_add_surface_from_arrays.bind("ArrayMesh", "add_surface_from_arrays");
		ptrcall!(void)(_GODOT_add_surface_from_arrays, _godot_object, primitive, arrays, blend_shapes, compress_flags);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_surface_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_surface_count") = _GODOT_get_surface_count;
	int get_surface_count() const
	{
		_GODOT_get_surface_count.bind("ArrayMesh", "get_surface_count");
		return ptrcall!(int)(_GODOT_get_surface_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_surface_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_remove") = _GODOT_surface_remove;
	void surface_remove(in int surf_idx)
	{
		_GODOT_surface_remove.bind("ArrayMesh", "surface_remove");
		ptrcall!(void)(_GODOT_surface_remove, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_surface_get_array_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_array_len") = _GODOT_surface_get_array_len;
	int surface_get_array_len(in int surf_idx) const
	{
		_GODOT_surface_get_array_len.bind("ArrayMesh", "surface_get_array_len");
		return ptrcall!(int)(_GODOT_surface_get_array_len, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_surface_get_array_index_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_array_index_len") = _GODOT_surface_get_array_index_len;
	int surface_get_array_index_len(in int surf_idx) const
	{
		_GODOT_surface_get_array_index_len.bind("ArrayMesh", "surface_get_array_index_len");
		return ptrcall!(int)(_GODOT_surface_get_array_index_len, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_surface_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_format") = _GODOT_surface_get_format;
	int surface_get_format(in int surf_idx) const
	{
		_GODOT_surface_get_format.bind("ArrayMesh", "surface_get_format");
		return ptrcall!(int)(_GODOT_surface_get_format, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(Mesh.PrimitiveType, int) _GODOT_surface_get_primitive_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_primitive_type") = _GODOT_surface_get_primitive_type;
	Mesh.PrimitiveType surface_get_primitive_type(in int surf_idx) const
	{
		_GODOT_surface_get_primitive_type.bind("ArrayMesh", "surface_get_primitive_type");
		return ptrcall!(Mesh.PrimitiveType)(_GODOT_surface_get_primitive_type, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void, int, Material) _GODOT_surface_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_set_material") = _GODOT_surface_set_material;
	void surface_set_material(in int surf_idx, in Material material)
	{
		_GODOT_surface_set_material.bind("ArrayMesh", "surface_set_material");
		ptrcall!(void)(_GODOT_surface_set_material, _godot_object, surf_idx, material);
	}
	package(godot) static GodotMethod!(Material, int) _GODOT_surface_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_material") = _GODOT_surface_get_material;
	Material surface_get_material(in int surf_idx) const
	{
		_GODOT_surface_get_material.bind("ArrayMesh", "surface_get_material");
		return ptrcall!(Material)(_GODOT_surface_get_material, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_surface_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_set_name") = _GODOT_surface_set_name;
	void surface_set_name(StringArg1)(in int surf_idx, in StringArg1 name)
	{
		_GODOT_surface_set_name.bind("ArrayMesh", "surface_set_name");
		ptrcall!(void)(_GODOT_surface_set_name, _godot_object, surf_idx, name);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_surface_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_name") = _GODOT_surface_get_name;
	String surface_get_name(in int surf_idx) const
	{
		_GODOT_surface_get_name.bind("ArrayMesh", "surface_get_name");
		return ptrcall!(String)(_GODOT_surface_get_name, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_surface_get_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_arrays") = _GODOT_surface_get_arrays;
	Array surface_get_arrays(in int surf_idx) const
	{
		_GODOT_surface_get_arrays.bind("ArrayMesh", "surface_get_arrays");
		return ptrcall!(Array)(_GODOT_surface_get_arrays, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_surface_get_blend_shape_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_blend_shape_arrays") = _GODOT_surface_get_blend_shape_arrays;
	Array surface_get_blend_shape_arrays(in int surf_idx) const
	{
		_GODOT_surface_get_blend_shape_arrays.bind("ArrayMesh", "surface_get_blend_shape_arrays");
		return ptrcall!(Array)(_GODOT_surface_get_blend_shape_arrays, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_center_geometry;
	package(godot) alias _GODOT_methodBindInfo(string name : "center_geometry") = _GODOT_center_geometry;
	void center_geometry()
	{
		_GODOT_center_geometry.bind("ArrayMesh", "center_geometry");
		ptrcall!(void)(_GODOT_center_geometry, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_regen_normalmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "regen_normalmaps") = _GODOT_regen_normalmaps;
	void regen_normalmaps()
	{
		_GODOT_regen_normalmaps.bind("ArrayMesh", "regen_normalmaps");
		ptrcall!(void)(_GODOT_regen_normalmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect3) _GODOT_set_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_aabb") = _GODOT_set_custom_aabb;
	void set_custom_aabb(in Rect3 aabb)
	{
		_GODOT_set_custom_aabb.bind("ArrayMesh", "set_custom_aabb");
		ptrcall!(void)(_GODOT_set_custom_aabb, _godot_object, aabb);
	}
	package(godot) static GodotMethod!(Rect3) _GODOT_get_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_aabb") = _GODOT_get_custom_aabb;
	Rect3 get_custom_aabb() const
	{
		_GODOT_get_custom_aabb.bind("ArrayMesh", "get_custom_aabb");
		return ptrcall!(Rect3)(_GODOT_get_custom_aabb, _godot_object);
	}
}
