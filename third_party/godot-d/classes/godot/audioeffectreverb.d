module godot.audioeffectreverb;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectReverb
{
	static immutable string _GODOT_internal_name = "AudioEffectReverb";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectReverb other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectReverb opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectReverb _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectReverb");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectReverb)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_predelay_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_predelay_msec") = _GODOT_set_predelay_msec;
	void set_predelay_msec(in float msec)
	{
		_GODOT_set_predelay_msec.bind("AudioEffectReverb", "set_predelay_msec");
		ptrcall!(void)(_GODOT_set_predelay_msec, _godot_object, msec);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_predelay_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_predelay_msec") = _GODOT_get_predelay_msec;
	float get_predelay_msec() const
	{
		_GODOT_get_predelay_msec.bind("AudioEffectReverb", "get_predelay_msec");
		return ptrcall!(float)(_GODOT_get_predelay_msec, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_predelay_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_predelay_feedback") = _GODOT_set_predelay_feedback;
	void set_predelay_feedback(in float feedback)
	{
		_GODOT_set_predelay_feedback.bind("AudioEffectReverb", "set_predelay_feedback");
		ptrcall!(void)(_GODOT_set_predelay_feedback, _godot_object, feedback);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_predelay_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_predelay_feedback") = _GODOT_get_predelay_feedback;
	float get_predelay_feedback() const
	{
		_GODOT_get_predelay_feedback.bind("AudioEffectReverb", "get_predelay_feedback");
		return ptrcall!(float)(_GODOT_get_predelay_feedback, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_room_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_room_size") = _GODOT_set_room_size;
	void set_room_size(in float size)
	{
		_GODOT_set_room_size.bind("AudioEffectReverb", "set_room_size");
		ptrcall!(void)(_GODOT_set_room_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_room_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_room_size") = _GODOT_get_room_size;
	float get_room_size() const
	{
		_GODOT_get_room_size.bind("AudioEffectReverb", "get_room_size");
		return ptrcall!(float)(_GODOT_get_room_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping") = _GODOT_set_damping;
	void set_damping(in float amount)
	{
		_GODOT_set_damping.bind("AudioEffectReverb", "set_damping");
		ptrcall!(void)(_GODOT_set_damping, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping") = _GODOT_get_damping;
	float get_damping() const
	{
		_GODOT_get_damping.bind("AudioEffectReverb", "get_damping");
		return ptrcall!(float)(_GODOT_get_damping, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spread") = _GODOT_set_spread;
	void set_spread(in float amount)
	{
		_GODOT_set_spread.bind("AudioEffectReverb", "set_spread");
		ptrcall!(void)(_GODOT_set_spread, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_spread") = _GODOT_get_spread;
	float get_spread() const
	{
		_GODOT_get_spread.bind("AudioEffectReverb", "get_spread");
		return ptrcall!(float)(_GODOT_get_spread, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dry") = _GODOT_set_dry;
	void set_dry(in float amount)
	{
		_GODOT_set_dry.bind("AudioEffectReverb", "set_dry");
		ptrcall!(void)(_GODOT_set_dry, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dry") = _GODOT_get_dry;
	float get_dry() const
	{
		_GODOT_get_dry.bind("AudioEffectReverb", "get_dry");
		return ptrcall!(float)(_GODOT_get_dry, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_wet;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wet") = _GODOT_set_wet;
	void set_wet(in float amount)
	{
		_GODOT_set_wet.bind("AudioEffectReverb", "set_wet");
		ptrcall!(void)(_GODOT_set_wet, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_wet;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wet") = _GODOT_get_wet;
	float get_wet() const
	{
		_GODOT_get_wet.bind("AudioEffectReverb", "get_wet");
		return ptrcall!(float)(_GODOT_get_wet, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_hpf;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hpf") = _GODOT_set_hpf;
	void set_hpf(in float amount)
	{
		_GODOT_set_hpf.bind("AudioEffectReverb", "set_hpf");
		ptrcall!(void)(_GODOT_set_hpf, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_hpf;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hpf") = _GODOT_get_hpf;
	float get_hpf() const
	{
		_GODOT_get_hpf.bind("AudioEffectReverb", "get_hpf");
		return ptrcall!(float)(_GODOT_get_hpf, _godot_object);
	}
}
