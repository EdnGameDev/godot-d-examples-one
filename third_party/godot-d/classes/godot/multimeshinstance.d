module godot.multimeshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.multimesh;
@GodotBaseClass struct MultiMeshInstance
{
	static immutable string _GODOT_internal_name = "MultiMeshInstance";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MultiMeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MultiMeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MultiMeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMeshInstance)(constructor());
	}
	package(godot) static GodotMethod!(void, MultiMesh) _GODOT_set_multimesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_multimesh") = _GODOT_set_multimesh;
	void set_multimesh(in MultiMesh multimesh)
	{
		_GODOT_set_multimesh.bind("MultiMeshInstance", "set_multimesh");
		ptrcall!(void)(_GODOT_set_multimesh, _godot_object, multimesh);
	}
	package(godot) static GodotMethod!(MultiMesh) _GODOT_get_multimesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_multimesh") = _GODOT_get_multimesh;
	MultiMesh get_multimesh() const
	{
		_GODOT_get_multimesh.bind("MultiMeshInstance", "get_multimesh");
		return ptrcall!(MultiMesh)(_GODOT_get_multimesh, _godot_object);
	}
}
