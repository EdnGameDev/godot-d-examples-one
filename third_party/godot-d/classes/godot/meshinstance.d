module godot.meshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.mesh;
import godot.material;
@GodotBaseClass struct MeshInstance
{
	static immutable string _GODOT_internal_name = "MeshInstance";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MeshInstance)(constructor());
	}
	package(godot) static GodotMethod!(void, Mesh) _GODOT_set_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mesh") = _GODOT_set_mesh;
	void set_mesh(in Mesh mesh)
	{
		_GODOT_set_mesh.bind("MeshInstance", "set_mesh");
		ptrcall!(void)(_GODOT_set_mesh, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(Mesh) _GODOT_get_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh") = _GODOT_get_mesh;
	Mesh get_mesh() const
	{
		_GODOT_get_mesh.bind("MeshInstance", "get_mesh");
		return ptrcall!(Mesh)(_GODOT_get_mesh, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_skeleton_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_skeleton_path") = _GODOT_set_skeleton_path;
	void set_skeleton_path(NodePathArg0)(in NodePathArg0 skeleton_path)
	{
		_GODOT_set_skeleton_path.bind("MeshInstance", "set_skeleton_path");
		ptrcall!(void)(_GODOT_set_skeleton_path, _godot_object, skeleton_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_skeleton_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_skeleton_path") = _GODOT_get_skeleton_path;
	NodePath get_skeleton_path()
	{
		_GODOT_get_skeleton_path.bind("MeshInstance", "get_skeleton_path");
		return ptrcall!(NodePath)(_GODOT_get_skeleton_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Material) _GODOT_set_surface_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_surface_material") = _GODOT_set_surface_material;
	void set_surface_material(in int surface, in Material material)
	{
		_GODOT_set_surface_material.bind("MeshInstance", "set_surface_material");
		ptrcall!(void)(_GODOT_set_surface_material, _godot_object, surface, material);
	}
	package(godot) static GodotMethod!(Material, int) _GODOT_get_surface_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_surface_material") = _GODOT_get_surface_material;
	Material get_surface_material(in int surface) const
	{
		_GODOT_get_surface_material.bind("MeshInstance", "get_surface_material");
		return ptrcall!(Material)(_GODOT_get_surface_material, _godot_object, surface);
	}
	package(godot) static GodotMethod!(void) _GODOT_create_trimesh_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_trimesh_collision") = _GODOT_create_trimesh_collision;
	void create_trimesh_collision()
	{
		_GODOT_create_trimesh_collision.bind("MeshInstance", "create_trimesh_collision");
		ptrcall!(void)(_GODOT_create_trimesh_collision, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_create_convex_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_convex_collision") = _GODOT_create_convex_collision;
	void create_convex_collision()
	{
		_GODOT_create_convex_collision.bind("MeshInstance", "create_convex_collision");
		ptrcall!(void)(_GODOT_create_convex_collision, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__mesh_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_mesh_changed") = _GODOT__mesh_changed;
	void _mesh_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_create_debug_tangents;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_debug_tangents") = _GODOT_create_debug_tangents;
	void create_debug_tangents()
	{
		_GODOT_create_debug_tangents.bind("MeshInstance", "create_debug_tangents");
		ptrcall!(void)(_GODOT_create_debug_tangents, _godot_object);
	}
}
