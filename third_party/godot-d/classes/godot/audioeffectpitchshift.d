module godot.audioeffectpitchshift;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectPitchShift
{
	static immutable string _GODOT_internal_name = "AudioEffectPitchShift";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectPitchShift other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPitchShift opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPitchShift _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectPitchShift");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPitchShift)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pitch_scale") = _GODOT_set_pitch_scale;
	void set_pitch_scale(in float rate)
	{
		_GODOT_set_pitch_scale.bind("AudioEffectPitchShift", "set_pitch_scale");
		ptrcall!(void)(_GODOT_set_pitch_scale, _godot_object, rate);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pitch_scale") = _GODOT_get_pitch_scale;
	float get_pitch_scale() const
	{
		_GODOT_get_pitch_scale.bind("AudioEffectPitchShift", "get_pitch_scale");
		return ptrcall!(float)(_GODOT_get_pitch_scale, _godot_object);
	}
}
