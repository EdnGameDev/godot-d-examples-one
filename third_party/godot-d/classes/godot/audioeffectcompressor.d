module godot.audioeffectcompressor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectCompressor
{
	static immutable string _GODOT_internal_name = "AudioEffectCompressor";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectCompressor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectCompressor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectCompressor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectCompressor");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectCompressor)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_threshold") = _GODOT_set_threshold;
	void set_threshold(in float threshold)
	{
		_GODOT_set_threshold.bind("AudioEffectCompressor", "set_threshold");
		ptrcall!(void)(_GODOT_set_threshold, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_threshold") = _GODOT_get_threshold;
	float get_threshold() const
	{
		_GODOT_get_threshold.bind("AudioEffectCompressor", "get_threshold");
		return ptrcall!(float)(_GODOT_get_threshold, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ratio") = _GODOT_set_ratio;
	void set_ratio(in float ratio)
	{
		_GODOT_set_ratio.bind("AudioEffectCompressor", "set_ratio");
		ptrcall!(void)(_GODOT_set_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ratio") = _GODOT_get_ratio;
	float get_ratio() const
	{
		_GODOT_get_ratio.bind("AudioEffectCompressor", "get_ratio");
		return ptrcall!(float)(_GODOT_get_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gain") = _GODOT_set_gain;
	void set_gain(in float gain)
	{
		_GODOT_set_gain.bind("AudioEffectCompressor", "set_gain");
		ptrcall!(void)(_GODOT_set_gain, _godot_object, gain);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gain") = _GODOT_get_gain;
	float get_gain() const
	{
		_GODOT_get_gain.bind("AudioEffectCompressor", "get_gain");
		return ptrcall!(float)(_GODOT_get_gain, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_attack_us;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attack_us") = _GODOT_set_attack_us;
	void set_attack_us(in float attack_us)
	{
		_GODOT_set_attack_us.bind("AudioEffectCompressor", "set_attack_us");
		ptrcall!(void)(_GODOT_set_attack_us, _godot_object, attack_us);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_attack_us;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attack_us") = _GODOT_get_attack_us;
	float get_attack_us() const
	{
		_GODOT_get_attack_us.bind("AudioEffectCompressor", "get_attack_us");
		return ptrcall!(float)(_GODOT_get_attack_us, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_release_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_release_ms") = _GODOT_set_release_ms;
	void set_release_ms(in float release_ms)
	{
		_GODOT_set_release_ms.bind("AudioEffectCompressor", "set_release_ms");
		ptrcall!(void)(_GODOT_set_release_ms, _godot_object, release_ms);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_release_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_release_ms") = _GODOT_get_release_ms;
	float get_release_ms() const
	{
		_GODOT_get_release_ms.bind("AudioEffectCompressor", "get_release_ms");
		return ptrcall!(float)(_GODOT_get_release_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_mix;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mix") = _GODOT_set_mix;
	void set_mix(in float mix)
	{
		_GODOT_set_mix.bind("AudioEffectCompressor", "set_mix");
		ptrcall!(void)(_GODOT_set_mix, _godot_object, mix);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_mix;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix") = _GODOT_get_mix;
	float get_mix() const
	{
		_GODOT_get_mix.bind("AudioEffectCompressor", "get_mix");
		return ptrcall!(float)(_GODOT_get_mix, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_sidechain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sidechain") = _GODOT_set_sidechain;
	void set_sidechain(StringArg0)(in StringArg0 sidechain)
	{
		_GODOT_set_sidechain.bind("AudioEffectCompressor", "set_sidechain");
		ptrcall!(void)(_GODOT_set_sidechain, _godot_object, sidechain);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_sidechain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sidechain") = _GODOT_get_sidechain;
	String get_sidechain() const
	{
		_GODOT_get_sidechain.bind("AudioEffectCompressor", "get_sidechain");
		return ptrcall!(String)(_GODOT_get_sidechain, _godot_object);
	}
}
