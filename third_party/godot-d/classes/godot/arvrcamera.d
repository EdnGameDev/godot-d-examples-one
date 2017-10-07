module godot.arvrcamera;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.camera;
@GodotBaseClass struct ARVRCamera
{
	static immutable string _GODOT_internal_name = "ARVRCamera";
public:
	union { godot_object _godot_object; Camera base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRCamera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRCamera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRCamera");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRCamera)(constructor());
	}
}
