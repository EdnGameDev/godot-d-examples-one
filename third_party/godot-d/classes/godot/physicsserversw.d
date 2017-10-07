module godot.physicsserversw;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.physicsserver;
@GodotBaseClass struct PhysicsServerSW
{
	static immutable string _GODOT_internal_name = "PhysicsServerSW";
public:
	union { godot_object _godot_object; PhysicsServerSingleton base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PhysicsServerSW other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsServerSW opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsServerSW _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsServerSW");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsServerSW)(constructor());
	}
}
