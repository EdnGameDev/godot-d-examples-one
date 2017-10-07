module godot.audioeffecteq6;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffecteq;
@GodotBaseClass struct AudioEffectEQ6
{
	static immutable string _GODOT_internal_name = "AudioEffectEQ6";
public:
	union { godot_object _godot_object; AudioEffectEQ base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectEQ6 other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectEQ6 opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectEQ6 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectEQ6");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ6)(constructor());
	}
}
