module godot.surfacetool;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.material;
import godot.mesh;
import godot.arraymesh;
@GodotBaseClass struct SurfaceTool
{
	static immutable string _GODOT_internal_name = "SurfaceTool";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SurfaceTool other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SurfaceTool opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SurfaceTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SurfaceTool");
		if(constructor is null) return typeof(this).init;
		return cast(SurfaceTool)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "begin") = _GODOT_begin;
	void begin(in int primitive)
	{
		_GODOT_begin.bind("SurfaceTool", "begin");
		ptrcall!(void)(_GODOT_begin, _godot_object, primitive);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_vertex") = _GODOT_add_vertex;
	void add_vertex(in Vector3 vertex)
	{
		_GODOT_add_vertex.bind("SurfaceTool", "add_vertex");
		ptrcall!(void)(_GODOT_add_vertex, _godot_object, vertex);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_add_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_color") = _GODOT_add_color;
	void add_color(in Color color)
	{
		_GODOT_add_color.bind("SurfaceTool", "add_color");
		ptrcall!(void)(_GODOT_add_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_normal") = _GODOT_add_normal;
	void add_normal(in Vector3 normal)
	{
		_GODOT_add_normal.bind("SurfaceTool", "add_normal");
		ptrcall!(void)(_GODOT_add_normal, _godot_object, normal);
	}
	package(godot) static GodotMethod!(void, Plane) _GODOT_add_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tangent") = _GODOT_add_tangent;
	void add_tangent(in Plane tangent)
	{
		_GODOT_add_tangent.bind("SurfaceTool", "add_tangent");
		ptrcall!(void)(_GODOT_add_tangent, _godot_object, tangent);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_add_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_uv") = _GODOT_add_uv;
	void add_uv(in Vector2 uv)
	{
		_GODOT_add_uv.bind("SurfaceTool", "add_uv");
		ptrcall!(void)(_GODOT_add_uv, _godot_object, uv);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_add_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_uv2") = _GODOT_add_uv2;
	void add_uv2(in Vector2 uv2)
	{
		_GODOT_add_uv2.bind("SurfaceTool", "add_uv2");
		ptrcall!(void)(_GODOT_add_uv2, _godot_object, uv2);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_add_bones;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bones") = _GODOT_add_bones;
	void add_bones(in PoolIntArray bones)
	{
		_GODOT_add_bones.bind("SurfaceTool", "add_bones");
		ptrcall!(void)(_GODOT_add_bones, _godot_object, bones);
	}
	package(godot) static GodotMethod!(void, PoolRealArray) _GODOT_add_weights;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_weights") = _GODOT_add_weights;
	void add_weights(in PoolRealArray weights)
	{
		_GODOT_add_weights.bind("SurfaceTool", "add_weights");
		ptrcall!(void)(_GODOT_add_weights, _godot_object, weights);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_add_smooth_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_smooth_group") = _GODOT_add_smooth_group;
	void add_smooth_group(in bool smooth)
	{
		_GODOT_add_smooth_group.bind("SurfaceTool", "add_smooth_group");
		ptrcall!(void)(_GODOT_add_smooth_group, _godot_object, smooth);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array, PoolVector2Array, PoolColorArray, PoolVector2Array, PoolVector3Array, Array) _GODOT_add_triangle_fan;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_triangle_fan") = _GODOT_add_triangle_fan;
	void add_triangle_fan(in PoolVector3Array vertexes, in PoolVector2Array uvs = PoolVector2Array.empty, in PoolColorArray colors = PoolColorArray.empty, in PoolVector2Array uv2s = PoolVector2Array.empty, in PoolVector3Array normals = PoolVector3Array.empty, in Array tangents = Array.empty_array)
	{
		_GODOT_add_triangle_fan.bind("SurfaceTool", "add_triangle_fan");
		ptrcall!(void)(_GODOT_add_triangle_fan, _godot_object, vertexes, uvs, colors, uv2s, normals, tangents);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_add_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_index") = _GODOT_add_index;
	void add_index(in int index)
	{
		_GODOT_add_index.bind("SurfaceTool", "add_index");
		ptrcall!(void)(_GODOT_add_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(void) _GODOT_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "index") = _GODOT_index;
	void index()
	{
		_GODOT_index.bind("SurfaceTool", "index");
		ptrcall!(void)(_GODOT_index, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_deindex;
	package(godot) alias _GODOT_methodBindInfo(string name : "deindex") = _GODOT_deindex;
	void deindex()
	{
		_GODOT_deindex.bind("SurfaceTool", "deindex");
		ptrcall!(void)(_GODOT_deindex, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_generate_normals;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_normals") = _GODOT_generate_normals;
	void generate_normals()
	{
		_GODOT_generate_normals.bind("SurfaceTool", "generate_normals");
		ptrcall!(void)(_GODOT_generate_normals, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_generate_tangents;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_tangents") = _GODOT_generate_tangents;
	void generate_tangents()
	{
		_GODOT_generate_tangents.bind("SurfaceTool", "generate_tangents");
		ptrcall!(void)(_GODOT_generate_tangents, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_add_to_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_to_format") = _GODOT_add_to_format;
	void add_to_format(in int flags)
	{
		_GODOT_add_to_format.bind("SurfaceTool", "add_to_format");
		ptrcall!(void)(_GODOT_add_to_format, _godot_object, flags);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	void set_material(in Material material)
	{
		_GODOT_set_material.bind("SurfaceTool", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("SurfaceTool", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, Mesh, int) _GODOT_create_from;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from") = _GODOT_create_from;
	void create_from(in Mesh existing, in int surface)
	{
		_GODOT_create_from.bind("SurfaceTool", "create_from");
		ptrcall!(void)(_GODOT_create_from, _godot_object, existing, surface);
	}
	package(godot) static GodotMethod!(void, Mesh, int, Transform) _GODOT_append_from;
	package(godot) alias _GODOT_methodBindInfo(string name : "append_from") = _GODOT_append_from;
	void append_from(in Mesh existing, in int surface, in Transform transform)
	{
		_GODOT_append_from.bind("SurfaceTool", "append_from");
		ptrcall!(void)(_GODOT_append_from, _godot_object, existing, surface, transform);
	}
	package(godot) static GodotMethod!(ArrayMesh, ArrayMesh) _GODOT_commit;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit") = _GODOT_commit;
	ArrayMesh commit(in ArrayMesh existing = ArrayMesh.init)
	{
		_GODOT_commit.bind("SurfaceTool", "commit");
		return ptrcall!(ArrayMesh)(_GODOT_commit, _godot_object, existing);
	}
}
