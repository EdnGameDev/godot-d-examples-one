module godot.meshdatatool;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.arraymesh;
import godot.material;
@GodotBaseClass struct MeshDataTool
{
	static immutable string _GODOT_internal_name = "MeshDataTool";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MeshDataTool other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshDataTool opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshDataTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MeshDataTool");
		if(constructor is null) return typeof(this).init;
		return cast(MeshDataTool)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("MeshDataTool", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, ArrayMesh, int) _GODOT_create_from_surface;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_surface") = _GODOT_create_from_surface;
	GodotError create_from_surface(in ArrayMesh mesh, in int surface)
	{
		_GODOT_create_from_surface.bind("MeshDataTool", "create_from_surface");
		return ptrcall!(GodotError)(_GODOT_create_from_surface, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(GodotError, ArrayMesh) _GODOT_commit_to_surface;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit_to_surface") = _GODOT_commit_to_surface;
	GodotError commit_to_surface(in ArrayMesh mesh)
	{
		_GODOT_commit_to_surface.bind("MeshDataTool", "commit_to_surface");
		return ptrcall!(GodotError)(_GODOT_commit_to_surface, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	int get_format() const
	{
		_GODOT_get_format.bind("MeshDataTool", "get_format");
		return ptrcall!(int)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_vertex_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_count") = _GODOT_get_vertex_count;
	int get_vertex_count() const
	{
		_GODOT_get_vertex_count.bind("MeshDataTool", "get_vertex_count");
		return ptrcall!(int)(_GODOT_get_vertex_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_edge_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_count") = _GODOT_get_edge_count;
	int get_edge_count() const
	{
		_GODOT_get_edge_count.bind("MeshDataTool", "get_edge_count");
		return ptrcall!(int)(_GODOT_get_edge_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_face_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_face_count") = _GODOT_get_face_count;
	int get_face_count() const
	{
		_GODOT_get_face_count.bind("MeshDataTool", "get_face_count");
		return ptrcall!(int)(_GODOT_get_face_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Vector3) _GODOT_set_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex") = _GODOT_set_vertex;
	void set_vertex(in int idx, in Vector3 vertex)
	{
		_GODOT_set_vertex.bind("MeshDataTool", "set_vertex");
		ptrcall!(void)(_GODOT_set_vertex, _godot_object, idx, vertex);
	}
	package(godot) static GodotMethod!(Vector3, int) _GODOT_get_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex") = _GODOT_get_vertex;
	Vector3 get_vertex(in int idx) const
	{
		_GODOT_get_vertex.bind("MeshDataTool", "get_vertex");
		return ptrcall!(Vector3)(_GODOT_get_vertex, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Vector3) _GODOT_set_vertex_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_normal") = _GODOT_set_vertex_normal;
	void set_vertex_normal(in int idx, in Vector3 normal)
	{
		_GODOT_set_vertex_normal.bind("MeshDataTool", "set_vertex_normal");
		ptrcall!(void)(_GODOT_set_vertex_normal, _godot_object, idx, normal);
	}
	package(godot) static GodotMethod!(Vector3, int) _GODOT_get_vertex_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_normal") = _GODOT_get_vertex_normal;
	Vector3 get_vertex_normal(in int idx) const
	{
		_GODOT_get_vertex_normal.bind("MeshDataTool", "get_vertex_normal");
		return ptrcall!(Vector3)(_GODOT_get_vertex_normal, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Plane) _GODOT_set_vertex_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_tangent") = _GODOT_set_vertex_tangent;
	void set_vertex_tangent(in int idx, in Plane tangent)
	{
		_GODOT_set_vertex_tangent.bind("MeshDataTool", "set_vertex_tangent");
		ptrcall!(void)(_GODOT_set_vertex_tangent, _godot_object, idx, tangent);
	}
	package(godot) static GodotMethod!(Plane, int) _GODOT_get_vertex_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_tangent") = _GODOT_get_vertex_tangent;
	Plane get_vertex_tangent(in int idx) const
	{
		_GODOT_get_vertex_tangent.bind("MeshDataTool", "get_vertex_tangent");
		return ptrcall!(Plane)(_GODOT_get_vertex_tangent, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_vertex_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_uv") = _GODOT_set_vertex_uv;
	void set_vertex_uv(in int idx, in Vector2 uv)
	{
		_GODOT_set_vertex_uv.bind("MeshDataTool", "set_vertex_uv");
		ptrcall!(void)(_GODOT_set_vertex_uv, _godot_object, idx, uv);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_vertex_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_uv") = _GODOT_get_vertex_uv;
	Vector2 get_vertex_uv(in int idx) const
	{
		_GODOT_get_vertex_uv.bind("MeshDataTool", "get_vertex_uv");
		return ptrcall!(Vector2)(_GODOT_get_vertex_uv, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_vertex_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_uv2") = _GODOT_set_vertex_uv2;
	void set_vertex_uv2(in int idx, in Vector2 uv2)
	{
		_GODOT_set_vertex_uv2.bind("MeshDataTool", "set_vertex_uv2");
		ptrcall!(void)(_GODOT_set_vertex_uv2, _godot_object, idx, uv2);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_vertex_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_uv2") = _GODOT_get_vertex_uv2;
	Vector2 get_vertex_uv2(in int idx) const
	{
		_GODOT_get_vertex_uv2.bind("MeshDataTool", "get_vertex_uv2");
		return ptrcall!(Vector2)(_GODOT_get_vertex_uv2, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Color) _GODOT_set_vertex_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_color") = _GODOT_set_vertex_color;
	void set_vertex_color(in int idx, in Color color)
	{
		_GODOT_set_vertex_color.bind("MeshDataTool", "set_vertex_color");
		ptrcall!(void)(_GODOT_set_vertex_color, _godot_object, idx, color);
	}
	package(godot) static GodotMethod!(Color, int) _GODOT_get_vertex_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_color") = _GODOT_get_vertex_color;
	Color get_vertex_color(in int idx) const
	{
		_GODOT_get_vertex_color.bind("MeshDataTool", "get_vertex_color");
		return ptrcall!(Color)(_GODOT_get_vertex_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, PoolIntArray) _GODOT_set_vertex_bones;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_bones") = _GODOT_set_vertex_bones;
	void set_vertex_bones(in int idx, in PoolIntArray bones)
	{
		_GODOT_set_vertex_bones.bind("MeshDataTool", "set_vertex_bones");
		ptrcall!(void)(_GODOT_set_vertex_bones, _godot_object, idx, bones);
	}
	package(godot) static GodotMethod!(PoolIntArray, int) _GODOT_get_vertex_bones;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_bones") = _GODOT_get_vertex_bones;
	PoolIntArray get_vertex_bones(in int idx) const
	{
		_GODOT_get_vertex_bones.bind("MeshDataTool", "get_vertex_bones");
		return ptrcall!(PoolIntArray)(_GODOT_get_vertex_bones, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, PoolRealArray) _GODOT_set_vertex_weights;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_weights") = _GODOT_set_vertex_weights;
	void set_vertex_weights(in int idx, in PoolRealArray weights)
	{
		_GODOT_set_vertex_weights.bind("MeshDataTool", "set_vertex_weights");
		ptrcall!(void)(_GODOT_set_vertex_weights, _godot_object, idx, weights);
	}
	package(godot) static GodotMethod!(PoolRealArray, int) _GODOT_get_vertex_weights;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_weights") = _GODOT_get_vertex_weights;
	PoolRealArray get_vertex_weights(in int idx) const
	{
		_GODOT_get_vertex_weights.bind("MeshDataTool", "get_vertex_weights");
		return ptrcall!(PoolRealArray)(_GODOT_get_vertex_weights, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_vertex_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_meta") = _GODOT_set_vertex_meta;
	void set_vertex_meta(VariantArg1)(in int idx, in VariantArg1 meta)
	{
		_GODOT_set_vertex_meta.bind("MeshDataTool", "set_vertex_meta");
		ptrcall!(void)(_GODOT_set_vertex_meta, _godot_object, idx, meta);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_vertex_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_meta") = _GODOT_get_vertex_meta;
	Variant get_vertex_meta(in int idx) const
	{
		_GODOT_get_vertex_meta.bind("MeshDataTool", "get_vertex_meta");
		return ptrcall!(Variant)(_GODOT_get_vertex_meta, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolIntArray, int) _GODOT_get_vertex_edges;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_edges") = _GODOT_get_vertex_edges;
	PoolIntArray get_vertex_edges(in int idx) const
	{
		_GODOT_get_vertex_edges.bind("MeshDataTool", "get_vertex_edges");
		return ptrcall!(PoolIntArray)(_GODOT_get_vertex_edges, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolIntArray, int) _GODOT_get_vertex_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_faces") = _GODOT_get_vertex_faces;
	PoolIntArray get_vertex_faces(in int idx) const
	{
		_GODOT_get_vertex_faces.bind("MeshDataTool", "get_vertex_faces");
		return ptrcall!(PoolIntArray)(_GODOT_get_vertex_faces, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int, int) _GODOT_get_edge_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_vertex") = _GODOT_get_edge_vertex;
	int get_edge_vertex(in int idx, in int vertex) const
	{
		_GODOT_get_edge_vertex.bind("MeshDataTool", "get_edge_vertex");
		return ptrcall!(int)(_GODOT_get_edge_vertex, _godot_object, idx, vertex);
	}
	package(godot) static GodotMethod!(PoolIntArray, int) _GODOT_get_edge_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_faces") = _GODOT_get_edge_faces;
	PoolIntArray get_edge_faces(in int idx) const
	{
		_GODOT_get_edge_faces.bind("MeshDataTool", "get_edge_faces");
		return ptrcall!(PoolIntArray)(_GODOT_get_edge_faces, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_edge_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edge_meta") = _GODOT_set_edge_meta;
	void set_edge_meta(VariantArg1)(in int idx, in VariantArg1 meta)
	{
		_GODOT_set_edge_meta.bind("MeshDataTool", "set_edge_meta");
		ptrcall!(void)(_GODOT_set_edge_meta, _godot_object, idx, meta);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_edge_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_meta") = _GODOT_get_edge_meta;
	Variant get_edge_meta(in int idx) const
	{
		_GODOT_get_edge_meta.bind("MeshDataTool", "get_edge_meta");
		return ptrcall!(Variant)(_GODOT_get_edge_meta, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int, int) _GODOT_get_face_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_face_vertex") = _GODOT_get_face_vertex;
	int get_face_vertex(in int idx, in int vertex) const
	{
		_GODOT_get_face_vertex.bind("MeshDataTool", "get_face_vertex");
		return ptrcall!(int)(_GODOT_get_face_vertex, _godot_object, idx, vertex);
	}
	package(godot) static GodotMethod!(int, int, int) _GODOT_get_face_edge;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_face_edge") = _GODOT_get_face_edge;
	int get_face_edge(in int idx, in int edge) const
	{
		_GODOT_get_face_edge.bind("MeshDataTool", "get_face_edge");
		return ptrcall!(int)(_GODOT_get_face_edge, _godot_object, idx, edge);
	}
	package(godot) static GodotMethod!(void, int, Variant) _GODOT_set_face_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_face_meta") = _GODOT_set_face_meta;
	void set_face_meta(VariantArg1)(in int idx, in VariantArg1 meta)
	{
		_GODOT_set_face_meta.bind("MeshDataTool", "set_face_meta");
		ptrcall!(void)(_GODOT_set_face_meta, _godot_object, idx, meta);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_face_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_face_meta") = _GODOT_get_face_meta;
	Variant get_face_meta(in int idx) const
	{
		_GODOT_get_face_meta.bind("MeshDataTool", "get_face_meta");
		return ptrcall!(Variant)(_GODOT_get_face_meta, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Vector3, int) _GODOT_get_face_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_face_normal") = _GODOT_get_face_normal;
	Vector3 get_face_normal(in int idx) const
	{
		_GODOT_get_face_normal.bind("MeshDataTool", "get_face_normal");
		return ptrcall!(Vector3)(_GODOT_get_face_normal, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	void set_material(in Material material)
	{
		_GODOT_set_material.bind("MeshDataTool", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material") = _GODOT_get_material;
	Material get_material() const
	{
		_GODOT_get_material.bind("MeshDataTool", "get_material");
		return ptrcall!(Material)(_GODOT_get_material, _godot_object);
	}
}
