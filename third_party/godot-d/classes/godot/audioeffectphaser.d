module godot.audioeffectphaser;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectPhaser
{
	static immutable string _GODOT_internal_name = "AudioEffectPhaser";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectPhaser other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPhaser opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPhaser _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectPhaser");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPhaser)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_range_min_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range_min_hz") = _GODOT_set_range_min_hz;
	void set_range_min_hz(in float hz)
	{
		_GODOT_set_range_min_hz.bind("AudioEffectPhaser", "set_range_min_hz");
		ptrcall!(void)(_GODOT_set_range_min_hz, _godot_object, hz);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_range_min_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range_min_hz") = _GODOT_get_range_min_hz;
	float get_range_min_hz() const
	{
		_GODOT_get_range_min_hz.bind("AudioEffectPhaser", "get_range_min_hz");
		return ptrcall!(float)(_GODOT_get_range_min_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_range_max_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range_max_hz") = _GODOT_set_range_max_hz;
	void set_range_max_hz(in float hz)
	{
		_GODOT_set_range_max_hz.bind("AudioEffectPhaser", "set_range_max_hz");
		ptrcall!(void)(_GODOT_set_range_max_hz, _godot_object, hz);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_range_max_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range_max_hz") = _GODOT_get_range_max_hz;
	float get_range_max_hz() const
	{
		_GODOT_get_range_max_hz.bind("AudioEffectPhaser", "get_range_max_hz");
		return ptrcall!(float)(_GODOT_get_range_max_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rate_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rate_hz") = _GODOT_set_rate_hz;
	void set_rate_hz(in float hz)
	{
		_GODOT_set_rate_hz.bind("AudioEffectPhaser", "set_rate_hz");
		ptrcall!(void)(_GODOT_set_rate_hz, _godot_object, hz);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rate_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rate_hz") = _GODOT_get_rate_hz;
	float get_rate_hz() const
	{
		_GODOT_get_rate_hz.bind("AudioEffectPhaser", "get_rate_hz");
		return ptrcall!(float)(_GODOT_get_rate_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback") = _GODOT_set_feedback;
	void set_feedback(in float fbk)
	{
		_GODOT_set_feedback.bind("AudioEffectPhaser", "set_feedback");
		ptrcall!(void)(_GODOT_set_feedback, _godot_object, fbk);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback") = _GODOT_get_feedback;
	float get_feedback() const
	{
		_GODOT_get_feedback.bind("AudioEffectPhaser", "get_feedback");
		return ptrcall!(float)(_GODOT_get_feedback, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth") = _GODOT_set_depth;
	void set_depth(in float depth)
	{
		_GODOT_set_depth.bind("AudioEffectPhaser", "set_depth");
		ptrcall!(void)(_GODOT_set_depth, _godot_object, depth);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth") = _GODOT_get_depth;
	float get_depth() const
	{
		_GODOT_get_depth.bind("AudioEffectPhaser", "get_depth");
		return ptrcall!(float)(_GODOT_get_depth, _godot_object);
	}
}
