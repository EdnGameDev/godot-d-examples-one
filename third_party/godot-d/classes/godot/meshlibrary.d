module godot.meshlibrary;
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
import godot.navigationmesh;
import godot.texture;
@GodotBaseClass struct MeshLibrary
{
	static immutable string _GODOT_internal_name = "MeshLibrary";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MeshLibrary other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshLibrary opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshLibrary _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MeshLibrary");
		if(constructor is null) return typeof(this).init;
		return cast(MeshLibrary)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_create_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_item") = _GODOT_create_item;
	void create_item(in int id)
	{
		_GODOT_create_item.bind("MeshLibrary", "create_item");
		ptrcall!(void)(_GODOT_create_item, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_item_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_name") = _GODOT_set_item_name;
	void set_item_name(StringArg1)(in int id, in StringArg1 name)
	{
		_GODOT_set_item_name.bind("MeshLibrary", "set_item_name");
		ptrcall!(void)(_GODOT_set_item_name, _godot_object, id, name);
	}
	package(godot) static GodotMethod!(void, int, Mesh) _GODOT_set_item_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_mesh") = _GODOT_set_item_mesh;
	void set_item_mesh(in int id, in Mesh mesh)
	{
		_GODOT_set_item_mesh.bind("MeshLibrary", "set_item_mesh");
		ptrcall!(void)(_GODOT_set_item_mesh, _godot_object, id, mesh);
	}
	package(godot) static GodotMethod!(void, int, NavigationMesh) _GODOT_set_item_navmesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_navmesh") = _GODOT_set_item_navmesh;
	void set_item_navmesh(in int id, in NavigationMesh navmesh)
	{
		_GODOT_set_item_navmesh.bind("MeshLibrary", "set_item_navmesh");
		ptrcall!(void)(_GODOT_set_item_navmesh, _godot_object, id, navmesh);
	}
	package(godot) static GodotMethod!(void, int, Array) _GODOT_set_item_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_shapes") = _GODOT_set_item_shapes;
	void set_item_shapes(in int id, in Array shapes)
	{
		_GODOT_set_item_shapes.bind("MeshLibrary", "set_item_shapes");
		ptrcall!(void)(_GODOT_set_item_shapes, _godot_object, id, shapes);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_item_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_preview") = _GODOT_set_item_preview;
	void set_item_preview(in int id, in Texture texture)
	{
		_GODOT_set_item_preview.bind("MeshLibrary", "set_item_preview");
		ptrcall!(void)(_GODOT_set_item_preview, _godot_object, id, texture);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_item_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_name") = _GODOT_get_item_name;
	String get_item_name(in int id) const
	{
		_GODOT_get_item_name.bind("MeshLibrary", "get_item_name");
		return ptrcall!(String)(_GODOT_get_item_name, _godot_object, id);
	}
	package(godot) static GodotMethod!(Mesh, int) _GODOT_get_item_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_mesh") = _GODOT_get_item_mesh;
	Mesh get_item_mesh(in int id) const
	{
		_GODOT_get_item_mesh.bind("MeshLibrary", "get_item_mesh");
		return ptrcall!(Mesh)(_GODOT_get_item_mesh, _godot_object, id);
	}
	package(godot) static GodotMethod!(NavigationMesh, int) _GODOT_get_item_navmesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_navmesh") = _GODOT_get_item_navmesh;
	NavigationMesh get_item_navmesh(in int id) const
	{
		_GODOT_get_item_navmesh.bind("MeshLibrary", "get_item_navmesh");
		return ptrcall!(NavigationMesh)(_GODOT_get_item_navmesh, _godot_object, id);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_item_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_shapes") = _GODOT_get_item_shapes;
	Array get_item_shapes(in int id) const
	{
		_GODOT_get_item_shapes.bind("MeshLibrary", "get_item_shapes");
		return ptrcall!(Array)(_GODOT_get_item_shapes, _godot_object, id);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_item_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_preview") = _GODOT_get_item_preview;
	Texture get_item_preview(in int id) const
	{
		_GODOT_get_item_preview.bind("MeshLibrary", "get_item_preview");
		return ptrcall!(Texture)(_GODOT_get_item_preview, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	void remove_item(in int id)
	{
		_GODOT_remove_item.bind("MeshLibrary", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, id);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_find_item_by_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_item_by_name") = _GODOT_find_item_by_name;
	int find_item_by_name(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_item_by_name.bind("MeshLibrary", "find_item_by_name");
		return ptrcall!(int)(_GODOT_find_item_by_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("MeshLibrary", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_item_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_list") = _GODOT_get_item_list;
	PoolIntArray get_item_list() const
	{
		_GODOT_get_item_list.bind("MeshLibrary", "get_item_list");
		return ptrcall!(PoolIntArray)(_GODOT_get_item_list, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_last_unused_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_last_unused_item_id") = _GODOT_get_last_unused_item_id;
	int get_last_unused_item_id() const
	{
		_GODOT_get_last_unused_item_id.bind("MeshLibrary", "get_last_unused_item_id");
		return ptrcall!(int)(_GODOT_get_last_unused_item_id, _godot_object);
	}
}
