module godot.physics2dshapequeryresult;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct Physics2DShapeQueryResult
{
	static immutable string _GODOT_internal_name = "Physics2DShapeQueryResult";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DShapeQueryResult other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DShapeQueryResult opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DShapeQueryResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DShapeQueryResult");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DShapeQueryResult)(constructor());
	}
	package(godot) static GodotMethod!(int) _GODOT_get_result_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_count") = _GODOT_get_result_count;
	int get_result_count() const
	{
		_GODOT_get_result_count.bind("Physics2DShapeQueryResult", "get_result_count");
		return ptrcall!(int)(_GODOT_get_result_count, _godot_object);
	}
	package(godot) static GodotMethod!(RID, int) _GODOT_get_result_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_rid") = _GODOT_get_result_rid;
	RID get_result_rid(in int idx) const
	{
		_GODOT_get_result_rid.bind("Physics2DShapeQueryResult", "get_result_rid");
		return ptrcall!(RID)(_GODOT_get_result_rid, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_result_object_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_object_id") = _GODOT_get_result_object_id;
	int get_result_object_id(in int idx) const
	{
		_GODOT_get_result_object_id.bind("Physics2DShapeQueryResult", "get_result_object_id");
		return ptrcall!(int)(_GODOT_get_result_object_id, _godot_object, idx);
	}
	package(godot) static GodotMethod!(GodotObject, int) _GODOT_get_result_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_object") = _GODOT_get_result_object;
	GodotObject get_result_object(in int idx) const
	{
		_GODOT_get_result_object.bind("Physics2DShapeQueryResult", "get_result_object");
		return ptrcall!(GodotObject)(_GODOT_get_result_object, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_result_object_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_object_shape") = _GODOT_get_result_object_shape;
	int get_result_object_shape(in int idx) const
	{
		_GODOT_get_result_object_shape.bind("Physics2DShapeQueryResult", "get_result_object_shape");
		return ptrcall!(int)(_GODOT_get_result_object_shape, _godot_object, idx);
	}
}
