module godot.checkbox;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.button;
@GodotBaseClass struct CheckBox
{
	static immutable string _GODOT_internal_name = "CheckBox";
public:
	union { godot_object _godot_object; Button base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CheckBox other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CheckBox opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CheckBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CheckBox");
		if(constructor is null) return typeof(this).init;
		return cast(CheckBox)(constructor());
	}
}
