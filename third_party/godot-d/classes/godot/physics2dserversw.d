module godot.physics2dserversw;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physics2dserver;
@GodotBaseClass struct Physics2DServerSW
{
	static immutable string _GODOT_internal_name = "Physics2DServerSW";
public:
	union { godot_object _godot_object; Physics2DServerSingleton base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Physics2DServerSW other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DServerSW opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DServerSW _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DServerSW");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DServerSW)(constructor());
	}
}
