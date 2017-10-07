module godot.hboxcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.boxcontainer;
@GodotBaseClass struct HBoxContainer
{
	static immutable string _GODOT_internal_name = "HBoxContainer";
public:
	union { godot_object _godot_object; BoxContainer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in HBoxContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HBoxContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HBoxContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HBoxContainer");
		if(constructor is null) return typeof(this).init;
		return cast(HBoxContainer)(constructor());
	}
}
