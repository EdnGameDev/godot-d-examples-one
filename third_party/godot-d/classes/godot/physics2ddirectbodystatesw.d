module godot.physics2ddirectbodystatesw;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physics2ddirectbodystate;
@GodotBaseClass struct Physics2DDirectBodyStateSW
{
	static immutable string _GODOT_internal_name = "Physics2DDirectBodyStateSW";
public:
	union { godot_object _godot_object; Physics2DDirectBodyState base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DDirectBodyStateSW other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectBodyStateSW opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectBodyStateSW _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DDirectBodyStateSW");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectBodyStateSW)(constructor());
	}
}
