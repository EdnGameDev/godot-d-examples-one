module godot.audioeffectbandlimitfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffectfilter;
@GodotBaseClass struct AudioEffectBandLimitFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectBandLimitFilter";
public:
	union { godot_object _godot_object; AudioEffectFilter base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectBandLimitFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectBandLimitFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectBandLimitFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectBandLimitFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectBandLimitFilter)(constructor());
	}
}
