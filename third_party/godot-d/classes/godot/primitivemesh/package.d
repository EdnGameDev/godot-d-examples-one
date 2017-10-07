module godot.primitivemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.mesh;
import godot.material;
@GodotBaseClass struct PrimitiveMesh
{
	static immutable string _GODOT_internal_name = "PrimitiveMesh";
public:
	union { godot_object _godot_object; Mesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PrimitiveMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PrimitiveMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PrimitiveMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PrimitiveMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PrimitiveMesh)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT__update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update") = _GODOT__update;
	void _update() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	void set_material(in Material material)
	{
		_GODOT_set_material.bind("PrimitiveMesh", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material") = _GODOT_get_material;
	Material get_material() const
	{
		_GODOT_get_material.bind("PrimitiveMesh", "get_material");
		return ptrcall!(Material)(_GODOT_get_material, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_mesh_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh_arrays") = _GODOT_get_mesh_arrays;
	Array get_mesh_arrays() const
	{
		_GODOT_get_mesh_arrays.bind("PrimitiveMesh", "get_mesh_arrays");
		return ptrcall!(Array)(_GODOT_get_mesh_arrays, _godot_object);
	}
}
