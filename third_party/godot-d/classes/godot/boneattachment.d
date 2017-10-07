module godot.boneattachment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct BoneAttachment
{
	static immutable string _GODOT_internal_name = "BoneAttachment";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BoneAttachment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoneAttachment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BoneAttachment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BoneAttachment");
		if(constructor is null) return typeof(this).init;
		return cast(BoneAttachment)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bone_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_name") = _GODOT_set_bone_name;
	void set_bone_name(StringArg0)(in StringArg0 bone_name)
	{
		_GODOT_set_bone_name.bind("BoneAttachment", "set_bone_name");
		ptrcall!(void)(_GODOT_set_bone_name, _godot_object, bone_name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bone_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_name") = _GODOT_get_bone_name;
	String get_bone_name() const
	{
		_GODOT_get_bone_name.bind("BoneAttachment", "get_bone_name");
		return ptrcall!(String)(_GODOT_get_bone_name, _godot_object);
	}
}
