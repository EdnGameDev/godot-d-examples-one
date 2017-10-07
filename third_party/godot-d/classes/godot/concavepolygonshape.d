module godot.concavepolygonshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape;
@GodotBaseClass struct ConcavePolygonShape
{
	static immutable string _GODOT_internal_name = "ConcavePolygonShape";
public:
	union { godot_object _godot_object; Shape base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConcavePolygonShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConcavePolygonShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConcavePolygonShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConcavePolygonShape");
		if(constructor is null) return typeof(this).init;
		return cast(ConcavePolygonShape)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_set_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_faces") = _GODOT_set_faces;
	void set_faces(in PoolVector3Array faces)
	{
		_GODOT_set_faces.bind("ConcavePolygonShape", "set_faces");
		ptrcall!(void)(_GODOT_set_faces, _godot_object, faces);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_faces") = _GODOT_get_faces;
	PoolVector3Array get_faces() const
	{
		_GODOT_get_faces.bind("ConcavePolygonShape", "get_faces");
		return ptrcall!(PoolVector3Array)(_GODOT_get_faces, _godot_object);
	}
}
