module godot.audioeffectlimiter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectLimiter
{
	static immutable string _GODOT_internal_name = "AudioEffectLimiter";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectLimiter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectLimiter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectLimiter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectLimiter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectLimiter)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ceiling_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ceiling_db") = _GODOT_set_ceiling_db;
	void set_ceiling_db(in float ceiling)
	{
		_GODOT_set_ceiling_db.bind("AudioEffectLimiter", "set_ceiling_db");
		ptrcall!(void)(_GODOT_set_ceiling_db, _godot_object, ceiling);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ceiling_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ceiling_db") = _GODOT_get_ceiling_db;
	float get_ceiling_db() const
	{
		_GODOT_get_ceiling_db.bind("AudioEffectLimiter", "get_ceiling_db");
		return ptrcall!(float)(_GODOT_get_ceiling_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_threshold_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_threshold_db") = _GODOT_set_threshold_db;
	void set_threshold_db(in float threshold)
	{
		_GODOT_set_threshold_db.bind("AudioEffectLimiter", "set_threshold_db");
		ptrcall!(void)(_GODOT_set_threshold_db, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_threshold_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_threshold_db") = _GODOT_get_threshold_db;
	float get_threshold_db() const
	{
		_GODOT_get_threshold_db.bind("AudioEffectLimiter", "get_threshold_db");
		return ptrcall!(float)(_GODOT_get_threshold_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_soft_clip_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_soft_clip_db") = _GODOT_set_soft_clip_db;
	void set_soft_clip_db(in float soft_clip)
	{
		_GODOT_set_soft_clip_db.bind("AudioEffectLimiter", "set_soft_clip_db");
		ptrcall!(void)(_GODOT_set_soft_clip_db, _godot_object, soft_clip);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_soft_clip_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_soft_clip_db") = _GODOT_get_soft_clip_db;
	float get_soft_clip_db() const
	{
		_GODOT_get_soft_clip_db.bind("AudioEffectLimiter", "get_soft_clip_db");
		return ptrcall!(float)(_GODOT_get_soft_clip_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_soft_clip_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_soft_clip_ratio") = _GODOT_set_soft_clip_ratio;
	void set_soft_clip_ratio(in float soft_clip)
	{
		_GODOT_set_soft_clip_ratio.bind("AudioEffectLimiter", "set_soft_clip_ratio");
		ptrcall!(void)(_GODOT_set_soft_clip_ratio, _godot_object, soft_clip);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_soft_clip_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_soft_clip_ratio") = _GODOT_get_soft_clip_ratio;
	float get_soft_clip_ratio() const
	{
		_GODOT_get_soft_clip_ratio.bind("AudioEffectLimiter", "get_soft_clip_ratio");
		return ptrcall!(float)(_GODOT_get_soft_clip_ratio, _godot_object);
	}
}
