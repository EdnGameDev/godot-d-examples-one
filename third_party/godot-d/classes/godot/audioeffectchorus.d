module godot.audioeffectchorus;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectChorus
{
	static immutable string _GODOT_internal_name = "AudioEffectChorus";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectChorus other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectChorus opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectChorus _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectChorus");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectChorus)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_voice_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_count") = _GODOT_set_voice_count;
	void set_voice_count(in int voices)
	{
		_GODOT_set_voice_count.bind("AudioEffectChorus", "set_voice_count");
		ptrcall!(void)(_GODOT_set_voice_count, _godot_object, voices);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_voice_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_count") = _GODOT_get_voice_count;
	int get_voice_count() const
	{
		_GODOT_get_voice_count.bind("AudioEffectChorus", "get_voice_count");
		return ptrcall!(int)(_GODOT_get_voice_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_voice_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_delay_ms") = _GODOT_set_voice_delay_ms;
	void set_voice_delay_ms(in int voice_idx, in float delay_ms)
	{
		_GODOT_set_voice_delay_ms.bind("AudioEffectChorus", "set_voice_delay_ms");
		ptrcall!(void)(_GODOT_set_voice_delay_ms, _godot_object, voice_idx, delay_ms);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_voice_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_delay_ms") = _GODOT_get_voice_delay_ms;
	float get_voice_delay_ms(in int voice_idx) const
	{
		_GODOT_get_voice_delay_ms.bind("AudioEffectChorus", "get_voice_delay_ms");
		return ptrcall!(float)(_GODOT_get_voice_delay_ms, _godot_object, voice_idx);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_voice_rate_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_rate_hz") = _GODOT_set_voice_rate_hz;
	void set_voice_rate_hz(in int voice_idx, in float rate_hz)
	{
		_GODOT_set_voice_rate_hz.bind("AudioEffectChorus", "set_voice_rate_hz");
		ptrcall!(void)(_GODOT_set_voice_rate_hz, _godot_object, voice_idx, rate_hz);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_voice_rate_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_rate_hz") = _GODOT_get_voice_rate_hz;
	float get_voice_rate_hz(in int voice_idx) const
	{
		_GODOT_get_voice_rate_hz.bind("AudioEffectChorus", "get_voice_rate_hz");
		return ptrcall!(float)(_GODOT_get_voice_rate_hz, _godot_object, voice_idx);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_voice_depth_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_depth_ms") = _GODOT_set_voice_depth_ms;
	void set_voice_depth_ms(in int voice_idx, in float depth_ms)
	{
		_GODOT_set_voice_depth_ms.bind("AudioEffectChorus", "set_voice_depth_ms");
		ptrcall!(void)(_GODOT_set_voice_depth_ms, _godot_object, voice_idx, depth_ms);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_voice_depth_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_depth_ms") = _GODOT_get_voice_depth_ms;
	float get_voice_depth_ms(in int voice_idx) const
	{
		_GODOT_get_voice_depth_ms.bind("AudioEffectChorus", "get_voice_depth_ms");
		return ptrcall!(float)(_GODOT_get_voice_depth_ms, _godot_object, voice_idx);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_voice_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_level_db") = _GODOT_set_voice_level_db;
	void set_voice_level_db(in int voice_idx, in float level_db)
	{
		_GODOT_set_voice_level_db.bind("AudioEffectChorus", "set_voice_level_db");
		ptrcall!(void)(_GODOT_set_voice_level_db, _godot_object, voice_idx, level_db);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_voice_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_level_db") = _GODOT_get_voice_level_db;
	float get_voice_level_db(in int voice_idx) const
	{
		_GODOT_get_voice_level_db.bind("AudioEffectChorus", "get_voice_level_db");
		return ptrcall!(float)(_GODOT_get_voice_level_db, _godot_object, voice_idx);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_voice_cutoff_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_cutoff_hz") = _GODOT_set_voice_cutoff_hz;
	void set_voice_cutoff_hz(in int voice_idx, in float cutoff_hz)
	{
		_GODOT_set_voice_cutoff_hz.bind("AudioEffectChorus", "set_voice_cutoff_hz");
		ptrcall!(void)(_GODOT_set_voice_cutoff_hz, _godot_object, voice_idx, cutoff_hz);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_voice_cutoff_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_cutoff_hz") = _GODOT_get_voice_cutoff_hz;
	float get_voice_cutoff_hz(in int voice_idx) const
	{
		_GODOT_get_voice_cutoff_hz.bind("AudioEffectChorus", "get_voice_cutoff_hz");
		return ptrcall!(float)(_GODOT_get_voice_cutoff_hz, _godot_object, voice_idx);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_voice_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_voice_pan") = _GODOT_set_voice_pan;
	void set_voice_pan(in int voice_idx, in float pan)
	{
		_GODOT_set_voice_pan.bind("AudioEffectChorus", "set_voice_pan");
		ptrcall!(void)(_GODOT_set_voice_pan, _godot_object, voice_idx, pan);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_voice_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_voice_pan") = _GODOT_get_voice_pan;
	float get_voice_pan(in int voice_idx) const
	{
		_GODOT_get_voice_pan.bind("AudioEffectChorus", "get_voice_pan");
		return ptrcall!(float)(_GODOT_get_voice_pan, _godot_object, voice_idx);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_wet;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wet") = _GODOT_set_wet;
	void set_wet(in float amount)
	{
		_GODOT_set_wet.bind("AudioEffectChorus", "set_wet");
		ptrcall!(void)(_GODOT_set_wet, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_wet;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wet") = _GODOT_get_wet;
	float get_wet() const
	{
		_GODOT_get_wet.bind("AudioEffectChorus", "get_wet");
		return ptrcall!(float)(_GODOT_get_wet, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dry") = _GODOT_set_dry;
	void set_dry(in float amount)
	{
		_GODOT_set_dry.bind("AudioEffectChorus", "set_dry");
		ptrcall!(void)(_GODOT_set_dry, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dry") = _GODOT_get_dry;
	float get_dry() const
	{
		_GODOT_get_dry.bind("AudioEffectChorus", "get_dry");
		return ptrcall!(float)(_GODOT_get_dry, _godot_object);
	}
}
