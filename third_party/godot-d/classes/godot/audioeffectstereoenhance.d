module godot.audioeffectstereoenhance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectStereoEnhance
{
	static immutable string _GODOT_internal_name = "AudioEffectStereoEnhance";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectStereoEnhance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectStereoEnhance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectStereoEnhance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectStereoEnhance");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectStereoEnhance)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pan_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pan_pullout") = _GODOT_set_pan_pullout;
	void set_pan_pullout(in float amount)
	{
		_GODOT_set_pan_pullout.bind("AudioEffectStereoEnhance", "set_pan_pullout");
		ptrcall!(void)(_GODOT_set_pan_pullout, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pan_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pan_pullout") = _GODOT_get_pan_pullout;
	float get_pan_pullout() const
	{
		_GODOT_get_pan_pullout.bind("AudioEffectStereoEnhance", "get_pan_pullout");
		return ptrcall!(float)(_GODOT_get_pan_pullout, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_time_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_time_pullout") = _GODOT_set_time_pullout;
	void set_time_pullout(in float amount)
	{
		_GODOT_set_time_pullout.bind("AudioEffectStereoEnhance", "set_time_pullout");
		ptrcall!(void)(_GODOT_set_time_pullout, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_time_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_pullout") = _GODOT_get_time_pullout;
	float get_time_pullout() const
	{
		_GODOT_get_time_pullout.bind("AudioEffectStereoEnhance", "get_time_pullout");
		return ptrcall!(float)(_GODOT_get_time_pullout, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_surround;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_surround") = _GODOT_set_surround;
	void set_surround(in float amount)
	{
		_GODOT_set_surround.bind("AudioEffectStereoEnhance", "set_surround");
		ptrcall!(void)(_GODOT_set_surround, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_surround;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_surround") = _GODOT_get_surround;
	float get_surround() const
	{
		_GODOT_get_surround.bind("AudioEffectStereoEnhance", "get_surround");
		return ptrcall!(float)(_GODOT_get_surround, _godot_object);
	}
}
