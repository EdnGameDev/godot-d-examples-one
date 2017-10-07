module godot.navigationmeshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.navigationmesh;
@GodotBaseClass struct NavigationMeshInstance
{
	static immutable string _GODOT_internal_name = "NavigationMeshInstance";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NavigationMeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationMeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NavigationMeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationMeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationMeshInstance)(constructor());
	}
	package(godot) static GodotMethod!(void, NavigationMesh) _GODOT_set_navigation_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_navigation_mesh") = _GODOT_set_navigation_mesh;
	void set_navigation_mesh(in NavigationMesh navmesh)
	{
		_GODOT_set_navigation_mesh.bind("NavigationMeshInstance", "set_navigation_mesh");
		ptrcall!(void)(_GODOT_set_navigation_mesh, _godot_object, navmesh);
	}
	package(godot) static GodotMethod!(NavigationMesh) _GODOT_get_navigation_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_navigation_mesh") = _GODOT_get_navigation_mesh;
	NavigationMesh get_navigation_mesh() const
	{
		_GODOT_get_navigation_mesh.bind("NavigationMeshInstance", "get_navigation_mesh");
		return ptrcall!(NavigationMesh)(_GODOT_get_navigation_mesh, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled") = _GODOT_set_enabled;
	void set_enabled(in bool enabled)
	{
		_GODOT_set_enabled.bind("NavigationMeshInstance", "set_enabled");
		ptrcall!(void)(_GODOT_set_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabled") = _GODOT_is_enabled;
	bool is_enabled() const
	{
		_GODOT_is_enabled.bind("NavigationMeshInstance", "is_enabled");
		return ptrcall!(bool)(_GODOT_is_enabled, _godot_object);
	}
}
