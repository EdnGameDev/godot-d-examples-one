module godot.audioeffecteq21;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffecteq;
@GodotBaseClass struct AudioEffectEQ21
{
	static immutable string _GODOT_internal_name = "AudioEffectEQ21";
public:
	union { godot_object _godot_object; AudioEffectEQ base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectEQ21 other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectEQ21 opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectEQ21 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectEQ21");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ21)(constructor());
	}
}
