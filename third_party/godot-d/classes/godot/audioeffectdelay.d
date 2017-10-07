module godot.audioeffectdelay;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectDelay
{
	static immutable string _GODOT_internal_name = "AudioEffectDelay";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectDelay other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectDelay opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectDelay _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectDelay");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectDelay)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dry") = _GODOT_set_dry;
	void set_dry(in float amount)
	{
		_GODOT_set_dry.bind("AudioEffectDelay", "set_dry");
		ptrcall!(void)(_GODOT_set_dry, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dry") = _GODOT_get_dry;
	float get_dry()
	{
		_GODOT_get_dry.bind("AudioEffectDelay", "get_dry");
		return ptrcall!(float)(_GODOT_get_dry, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tap1_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_active") = _GODOT_set_tap1_active;
	void set_tap1_active(in bool amount)
	{
		_GODOT_set_tap1_active.bind("AudioEffectDelay", "set_tap1_active");
		ptrcall!(void)(_GODOT_set_tap1_active, _godot_object, amount);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tap1_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tap1_active") = _GODOT_is_tap1_active;
	bool is_tap1_active() const
	{
		_GODOT_is_tap1_active.bind("AudioEffectDelay", "is_tap1_active");
		return ptrcall!(bool)(_GODOT_is_tap1_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tap1_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_delay_ms") = _GODOT_set_tap1_delay_ms;
	void set_tap1_delay_ms(in float amount)
	{
		_GODOT_set_tap1_delay_ms.bind("AudioEffectDelay", "set_tap1_delay_ms");
		ptrcall!(void)(_GODOT_set_tap1_delay_ms, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tap1_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap1_delay_ms") = _GODOT_get_tap1_delay_ms;
	float get_tap1_delay_ms() const
	{
		_GODOT_get_tap1_delay_ms.bind("AudioEffectDelay", "get_tap1_delay_ms");
		return ptrcall!(float)(_GODOT_get_tap1_delay_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tap1_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_level_db") = _GODOT_set_tap1_level_db;
	void set_tap1_level_db(in float amount)
	{
		_GODOT_set_tap1_level_db.bind("AudioEffectDelay", "set_tap1_level_db");
		ptrcall!(void)(_GODOT_set_tap1_level_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tap1_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap1_level_db") = _GODOT_get_tap1_level_db;
	float get_tap1_level_db() const
	{
		_GODOT_get_tap1_level_db.bind("AudioEffectDelay", "get_tap1_level_db");
		return ptrcall!(float)(_GODOT_get_tap1_level_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tap1_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_pan") = _GODOT_set_tap1_pan;
	void set_tap1_pan(in float amount)
	{
		_GODOT_set_tap1_pan.bind("AudioEffectDelay", "set_tap1_pan");
		ptrcall!(void)(_GODOT_set_tap1_pan, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tap1_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap1_pan") = _GODOT_get_tap1_pan;
	float get_tap1_pan() const
	{
		_GODOT_get_tap1_pan.bind("AudioEffectDelay", "get_tap1_pan");
		return ptrcall!(float)(_GODOT_get_tap1_pan, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tap2_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_active") = _GODOT_set_tap2_active;
	void set_tap2_active(in bool amount)
	{
		_GODOT_set_tap2_active.bind("AudioEffectDelay", "set_tap2_active");
		ptrcall!(void)(_GODOT_set_tap2_active, _godot_object, amount);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tap2_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tap2_active") = _GODOT_is_tap2_active;
	bool is_tap2_active() const
	{
		_GODOT_is_tap2_active.bind("AudioEffectDelay", "is_tap2_active");
		return ptrcall!(bool)(_GODOT_is_tap2_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tap2_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_delay_ms") = _GODOT_set_tap2_delay_ms;
	void set_tap2_delay_ms(in float amount)
	{
		_GODOT_set_tap2_delay_ms.bind("AudioEffectDelay", "set_tap2_delay_ms");
		ptrcall!(void)(_GODOT_set_tap2_delay_ms, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tap2_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap2_delay_ms") = _GODOT_get_tap2_delay_ms;
	float get_tap2_delay_ms() const
	{
		_GODOT_get_tap2_delay_ms.bind("AudioEffectDelay", "get_tap2_delay_ms");
		return ptrcall!(float)(_GODOT_get_tap2_delay_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tap2_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_level_db") = _GODOT_set_tap2_level_db;
	void set_tap2_level_db(in float amount)
	{
		_GODOT_set_tap2_level_db.bind("AudioEffectDelay", "set_tap2_level_db");
		ptrcall!(void)(_GODOT_set_tap2_level_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tap2_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap2_level_db") = _GODOT_get_tap2_level_db;
	float get_tap2_level_db() const
	{
		_GODOT_get_tap2_level_db.bind("AudioEffectDelay", "get_tap2_level_db");
		return ptrcall!(float)(_GODOT_get_tap2_level_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tap2_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_pan") = _GODOT_set_tap2_pan;
	void set_tap2_pan(in float amount)
	{
		_GODOT_set_tap2_pan.bind("AudioEffectDelay", "set_tap2_pan");
		ptrcall!(void)(_GODOT_set_tap2_pan, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tap2_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap2_pan") = _GODOT_get_tap2_pan;
	float get_tap2_pan() const
	{
		_GODOT_get_tap2_pan.bind("AudioEffectDelay", "get_tap2_pan");
		return ptrcall!(float)(_GODOT_get_tap2_pan, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_feedback_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_active") = _GODOT_set_feedback_active;
	void set_feedback_active(in bool amount)
	{
		_GODOT_set_feedback_active.bind("AudioEffectDelay", "set_feedback_active");
		ptrcall!(void)(_GODOT_set_feedback_active, _godot_object, amount);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_feedback_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_feedback_active") = _GODOT_is_feedback_active;
	bool is_feedback_active() const
	{
		_GODOT_is_feedback_active.bind("AudioEffectDelay", "is_feedback_active");
		return ptrcall!(bool)(_GODOT_is_feedback_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_feedback_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_delay_ms") = _GODOT_set_feedback_delay_ms;
	void set_feedback_delay_ms(in float amount)
	{
		_GODOT_set_feedback_delay_ms.bind("AudioEffectDelay", "set_feedback_delay_ms");
		ptrcall!(void)(_GODOT_set_feedback_delay_ms, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_feedback_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback_delay_ms") = _GODOT_get_feedback_delay_ms;
	float get_feedback_delay_ms() const
	{
		_GODOT_get_feedback_delay_ms.bind("AudioEffectDelay", "get_feedback_delay_ms");
		return ptrcall!(float)(_GODOT_get_feedback_delay_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_feedback_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_level_db") = _GODOT_set_feedback_level_db;
	void set_feedback_level_db(in float amount)
	{
		_GODOT_set_feedback_level_db.bind("AudioEffectDelay", "set_feedback_level_db");
		ptrcall!(void)(_GODOT_set_feedback_level_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_feedback_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback_level_db") = _GODOT_get_feedback_level_db;
	float get_feedback_level_db() const
	{
		_GODOT_get_feedback_level_db.bind("AudioEffectDelay", "get_feedback_level_db");
		return ptrcall!(float)(_GODOT_get_feedback_level_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_feedback_lowpass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_lowpass") = _GODOT_set_feedback_lowpass;
	void set_feedback_lowpass(in float amount)
	{
		_GODOT_set_feedback_lowpass.bind("AudioEffectDelay", "set_feedback_lowpass");
		ptrcall!(void)(_GODOT_set_feedback_lowpass, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_feedback_lowpass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback_lowpass") = _GODOT_get_feedback_lowpass;
	float get_feedback_lowpass() const
	{
		_GODOT_get_feedback_lowpass.bind("AudioEffectDelay", "get_feedback_lowpass");
		return ptrcall!(float)(_GODOT_get_feedback_lowpass, _godot_object);
	}
}
