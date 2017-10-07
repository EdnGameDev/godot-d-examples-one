module godot.editorspatialgizmo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatialgizmo;
import godot.camera;
import godot.material;
import godot.arraymesh;
import godot.trianglemesh;
@GodotBaseClass struct EditorSpatialGizmo
{
	static immutable string _GODOT_internal_name = "EditorSpatialGizmo";
public:
	union { godot_object _godot_object; SpatialGizmo base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorSpatialGizmo other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSpatialGizmo opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSpatialGizmo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorSpatialGizmo");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpatialGizmo)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT_redraw;
	package(godot) alias _GODOT_methodBindInfo(string name : "redraw") = _GODOT_redraw;
	void redraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_handle_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_handle_name") = _GODOT_get_handle_name;
	String get_handle_name(in int index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(Variant, int) _GODOT_get_handle_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_handle_value") = _GODOT_get_handle_value;
	Variant get_handle_value(in int index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, Camera, Vector2) _GODOT_set_handle;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_handle") = _GODOT_set_handle;
	void set_handle(in int index, in Camera camera, in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(camera);
		_GODOT_args.append(point);
		String _GODOT_method_name = String("set_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, Variant, bool) _GODOT_commit_handle;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit_handle") = _GODOT_commit_handle;
	void commit_handle(VariantArg1)(in int index, in VariantArg1 restore, in bool cancel)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(restore);
		_GODOT_args.append(cancel);
		String _GODOT_method_name = String("commit_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array, Material, bool) _GODOT_add_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_lines") = _GODOT_add_lines;
	void add_lines(in PoolVector3Array lines, in Material material, in bool billboard = false)
	{
		_GODOT_add_lines.bind("EditorSpatialGizmo", "add_lines");
		ptrcall!(void)(_GODOT_add_lines, _godot_object, lines, material, billboard);
	}
	package(godot) static GodotMethod!(void, ArrayMesh, bool, RID) _GODOT_add_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_mesh") = _GODOT_add_mesh;
	void add_mesh(in ArrayMesh mesh, in bool billboard = false, in RID skeleton = RID.init)
	{
		_GODOT_add_mesh.bind("EditorSpatialGizmo", "add_mesh");
		ptrcall!(void)(_GODOT_add_mesh, _godot_object, mesh, billboard, skeleton);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_add_collision_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_collision_segments") = _GODOT_add_collision_segments;
	void add_collision_segments(in PoolVector3Array segments)
	{
		_GODOT_add_collision_segments.bind("EditorSpatialGizmo", "add_collision_segments");
		ptrcall!(void)(_GODOT_add_collision_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(void, TriangleMesh, Rect3) _GODOT_add_collision_triangles;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_collision_triangles") = _GODOT_add_collision_triangles;
	void add_collision_triangles(in TriangleMesh triangles, in Rect3 bounds)
	{
		_GODOT_add_collision_triangles.bind("EditorSpatialGizmo", "add_collision_triangles");
		ptrcall!(void)(_GODOT_add_collision_triangles, _godot_object, triangles, bounds);
	}
	package(godot) static GodotMethod!(void, Material, float) _GODOT_add_unscaled_billboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_unscaled_billboard") = _GODOT_add_unscaled_billboard;
	void add_unscaled_billboard(in Material material, in float default_scale = 1)
	{
		_GODOT_add_unscaled_billboard.bind("EditorSpatialGizmo", "add_unscaled_billboard");
		ptrcall!(void)(_GODOT_add_unscaled_billboard, _godot_object, material, default_scale);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array, bool, bool) _GODOT_add_handles;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_handles") = _GODOT_add_handles;
	void add_handles(in PoolVector3Array handles, in bool billboard = false, in bool secondary = false)
	{
		_GODOT_add_handles.bind("EditorSpatialGizmo", "add_handles");
		ptrcall!(void)(_GODOT_add_handles, _godot_object, handles, billboard, secondary);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_spatial_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spatial_node") = _GODOT_set_spatial_node;
	void set_spatial_node(in GodotObject node)
	{
		_GODOT_set_spatial_node.bind("EditorSpatialGizmo", "set_spatial_node");
		ptrcall!(void)(_GODOT_set_spatial_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("EditorSpatialGizmo", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
