module godot.audioeffecthighpassfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffectfilter;
@GodotBaseClass struct AudioEffectHighPassFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectHighPassFilter";
public:
	union { godot_object _godot_object; AudioEffectFilter base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectHighPassFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectHighPassFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectHighPassFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectHighPassFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectHighPassFilter)(constructor());
	}
}
