module godot.audioeffecteq;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectEQ
{
	static immutable string _GODOT_internal_name = "AudioEffectEQ";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectEQ other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectEQ opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectEQ _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectEQ");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ)(constructor());
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_band_gain_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_band_gain_db") = _GODOT_set_band_gain_db;
	void set_band_gain_db(in int band_idx, in float volume_db)
	{
		_GODOT_set_band_gain_db.bind("AudioEffectEQ", "set_band_gain_db");
		ptrcall!(void)(_GODOT_set_band_gain_db, _godot_object, band_idx, volume_db);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_band_gain_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_band_gain_db") = _GODOT_get_band_gain_db;
	float get_band_gain_db(in int band_idx) const
	{
		_GODOT_get_band_gain_db.bind("AudioEffectEQ", "get_band_gain_db");
		return ptrcall!(float)(_GODOT_get_band_gain_db, _godot_object, band_idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_band_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_band_count") = _GODOT_get_band_count;
	int get_band_count() const
	{
		_GODOT_get_band_count.bind("AudioEffectEQ", "get_band_count");
		return ptrcall!(int)(_GODOT_get_band_count, _godot_object);
	}
}
