module godot.audioeffectfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectFilter";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectFilter)(constructor());
	}
	enum FilterDB : int
	{
		FILTER_6DB = 0,
		FILTER_12DB = 1,
		FILTER_24DB = 3,
		FILTER_18DB = 2,
	}
	enum int FILTER_6DB = 0;
	enum int FILTER_12DB = 1;
	enum int FILTER_24DB = 3;
	enum int FILTER_18DB = 2;
	package(godot) static GodotMethod!(void, float) _GODOT_set_cutoff;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cutoff") = _GODOT_set_cutoff;
	void set_cutoff(in float freq)
	{
		_GODOT_set_cutoff.bind("AudioEffectFilter", "set_cutoff");
		ptrcall!(void)(_GODOT_set_cutoff, _godot_object, freq);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_cutoff;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cutoff") = _GODOT_get_cutoff;
	float get_cutoff() const
	{
		_GODOT_get_cutoff.bind("AudioEffectFilter", "get_cutoff");
		return ptrcall!(float)(_GODOT_get_cutoff, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_resonance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_resonance") = _GODOT_set_resonance;
	void set_resonance(in float amount)
	{
		_GODOT_set_resonance.bind("AudioEffectFilter", "set_resonance");
		ptrcall!(void)(_GODOT_set_resonance, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_resonance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resonance") = _GODOT_get_resonance;
	float get_resonance() const
	{
		_GODOT_get_resonance.bind("AudioEffectFilter", "get_resonance");
		return ptrcall!(float)(_GODOT_get_resonance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gain") = _GODOT_set_gain;
	void set_gain(in float amount)
	{
		_GODOT_set_gain.bind("AudioEffectFilter", "set_gain");
		ptrcall!(void)(_GODOT_set_gain, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gain") = _GODOT_get_gain;
	float get_gain() const
	{
		_GODOT_get_gain.bind("AudioEffectFilter", "get_gain");
		return ptrcall!(float)(_GODOT_get_gain, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_db") = _GODOT_set_db;
	void set_db(in int amount)
	{
		_GODOT_set_db.bind("AudioEffectFilter", "set_db");
		ptrcall!(void)(_GODOT_set_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(AudioEffectFilter.FilterDB) _GODOT_get_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_db") = _GODOT_get_db;
	AudioEffectFilter.FilterDB get_db() const
	{
		_GODOT_get_db.bind("AudioEffectFilter", "get_db");
		return ptrcall!(AudioEffectFilter.FilterDB)(_GODOT_get_db, _godot_object);
	}
}
