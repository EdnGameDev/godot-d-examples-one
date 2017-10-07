module godot.shape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct Shape
{
	static immutable string _GODOT_internal_name = "Shape";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Shape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Shape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Shape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Shape");
		if(constructor is null) return typeof(this).init;
		return cast(Shape)(constructor());
	}
}
