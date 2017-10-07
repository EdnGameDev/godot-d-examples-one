module godot.mesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
import godot.shape;
import godot.trianglemesh;
@GodotBaseClass struct Mesh
{
	static immutable string _GODOT_internal_name = "Mesh";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Mesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Mesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Mesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Mesh");
		if(constructor is null) return typeof(this).init;
		return cast(Mesh)(constructor());
	}
	enum BlendShapeMode : int
	{
		BLEND_SHAPE_MODE_RELATIVE = 1,
		BLEND_SHAPE_MODE_NORMALIZED = 0,
	}
	enum PrimitiveType : int
	{
		PRIMITIVE_TRIANGLES = 4,
		PRIMITIVE_TRIANGLE_STRIP = 5,
		PRIMITIVE_LINES = 1,
		PRIMITIVE_TRIANGLE_FAN = 6,
		PRIMITIVE_LINE_LOOP = 3,
		PRIMITIVE_LINE_STRIP = 2,
		PRIMITIVE_POINTS = 0,
	}
	enum ArrayFormat : int
	{
		ARRAY_COMPRESS_BASE = 9,
		ARRAY_COMPRESS_TANGENT = 2048,
		ARRAY_FORMAT_NORMAL = 2,
		ARRAY_FORMAT_WEIGHTS = 128,
		ARRAY_FORMAT_TEX_UV2 = 32,
		ARRAY_COMPRESS_INDEX = 131072,
		ARRAY_FORMAT_TANGENT = 4,
		ARRAY_COMPRESS_VERTEX = 512,
		ARRAY_COMPRESS_DEFAULT = 97792,
		ARRAY_FORMAT_INDEX = 256,
		ARRAY_FORMAT_COLOR = 8,
		ARRAY_FLAG_USE_2D_VERTICES = 262144,
		ARRAY_COMPRESS_TEX_UV = 8192,
		ARRAY_COMPRESS_BONES = 32768,
		ARRAY_FORMAT_BONES = 64,
		ARRAY_FORMAT_VERTEX = 1,
		ARRAY_FLAG_USE_16_BIT_BONES = 524288,
		ARRAY_COMPRESS_COLOR = 4096,
		ARRAY_COMPRESS_NORMAL = 1024,
		ARRAY_COMPRESS_TEX_UV2 = 16384,
		ARRAY_COMPRESS_WEIGHTS = 65536,
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
	enum int ARRAY_FORMAT_TEX_UV2 = 32;
	enum int PRIMITIVE_LINES = 1;
	enum int PRIMITIVE_TRIANGLE_FAN = 6;
	enum int PRIMITIVE_LINE_LOOP = 3;
	enum int ARRAY_FORMAT_VERTEX = 1;
	enum int ARRAY_MAX = 9;
	enum int ARRAY_NORMAL = 1;
	enum int ARRAY_BONES = 6;
	enum int BLEND_SHAPE_MODE_NORMALIZED = 0;
	enum int ARRAY_VERTEX = 0;
	enum int ARRAY_FORMAT_TEX_UV = 16;
	enum int PRIMITIVE_POINTS = 0;
	enum int PRIMITIVE_TRIANGLES = 4;
	enum int ARRAY_COMPRESS_DEFAULT = 97792;
	enum int ARRAY_TEX_UV2 = 5;
	enum int ARRAY_FORMAT_INDEX = 256;
	enum int ARRAY_FORMAT_COLOR = 8;
	enum int ARRAY_FORMAT_BONES = 64;
	enum int ARRAY_INDEX = 8;
	enum int ARRAY_COMPRESS_COLOR = 4096;
	enum int PRIMITIVE_LINE_STRIP = 2;
	enum int ARRAY_COMPRESS_BASE = 9;
	enum int ARRAY_COMPRESS_TANGENT = 2048;
	enum int ARRAY_FLAG_USE_16_BIT_BONES = 524288;
	enum int ARRAY_FORMAT_TANGENT = 4;
	enum int ARRAY_TANGENT = 2;
	enum int ARRAY_FLAG_USE_2D_VERTICES = 262144;
	enum int ARRAY_WEIGHTS = 7;
	enum int ARRAY_COLOR = 3;
	enum int ARRAY_TEX_UV = 4;
	enum int ARRAY_COMPRESS_TEX_UV2 = 16384;
	enum int ARRAY_COMPRESS_WEIGHTS = 65536;
	enum int ARRAY_FORMAT_NORMAL = 2;
	enum int ARRAY_FORMAT_WEIGHTS = 128;
	enum int PRIMITIVE_TRIANGLE_STRIP = 5;
	enum int ARRAY_COMPRESS_VERTEX = 512;
	enum int ARRAY_COMPRESS_INDEX = 131072;
	enum int ARRAY_COMPRESS_TEX_UV = 8192;
	enum int ARRAY_COMPRESS_BONES = 32768;
	enum int BLEND_SHAPE_MODE_RELATIVE = 1;
	enum int ARRAY_COMPRESS_NORMAL = 1024;
	package(godot) static GodotMethod!(Shape) _GODOT_create_trimesh_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_trimesh_shape") = _GODOT_create_trimesh_shape;
	Shape create_trimesh_shape() const
	{
		_GODOT_create_trimesh_shape.bind("Mesh", "create_trimesh_shape");
		return ptrcall!(Shape)(_GODOT_create_trimesh_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Shape) _GODOT_create_convex_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_convex_shape") = _GODOT_create_convex_shape;
	Shape create_convex_shape() const
	{
		_GODOT_create_convex_shape.bind("Mesh", "create_convex_shape");
		return ptrcall!(Shape)(_GODOT_create_convex_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Mesh, float) _GODOT_create_outline;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_outline") = _GODOT_create_outline;
	Mesh create_outline(in float margin) const
	{
		_GODOT_create_outline.bind("Mesh", "create_outline");
		return ptrcall!(Mesh)(_GODOT_create_outline, _godot_object, margin);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_faces") = _GODOT_get_faces;
	PoolVector3Array get_faces() const
	{
		_GODOT_get_faces.bind("Mesh", "get_faces");
		return ptrcall!(PoolVector3Array)(_GODOT_get_faces, _godot_object);
	}
	package(godot) static GodotMethod!(TriangleMesh) _GODOT_generate_triangle_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_triangle_mesh") = _GODOT_generate_triangle_mesh;
	TriangleMesh generate_triangle_mesh() const
	{
		_GODOT_generate_triangle_mesh.bind("Mesh", "generate_triangle_mesh");
		return ptrcall!(TriangleMesh)(_GODOT_generate_triangle_mesh, _godot_object);
	}
}
