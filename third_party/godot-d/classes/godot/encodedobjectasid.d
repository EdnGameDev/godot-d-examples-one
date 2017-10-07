module godot.encodedobjectasid;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct EncodedObjectAsID
{
	static immutable string _GODOT_internal_name = "EncodedObjectAsID";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EncodedObjectAsID other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EncodedObjectAsID opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EncodedObjectAsID _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EncodedObjectAsID");
		if(constructor is null) return typeof(this).init;
		return cast(EncodedObjectAsID)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_object_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_object_id") = _GODOT_set_object_id;
	void set_object_id(in int id)
	{
		_GODOT_set_object_id.bind("EncodedObjectAsID", "set_object_id");
		ptrcall!(void)(_GODOT_set_object_id, _godot_object, id);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_object_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_object_id") = _GODOT_get_object_id;
	int get_object_id() const
	{
		_GODOT_get_object_id.bind("EncodedObjectAsID", "get_object_id");
		return ptrcall!(int)(_GODOT_get_object_id, _godot_object);
	}
}
