module godot.audioeffectamplify;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectAmplify
{
	static immutable string _GODOT_internal_name = "AudioEffectAmplify";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectAmplify other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectAmplify opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectAmplify _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectAmplify");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectAmplify)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	void set_volume_db(in float volume)
	{
		_GODOT_set_volume_db.bind("AudioEffectAmplify", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, volume);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	float get_volume_db() const
	{
		_GODOT_get_volume_db.bind("AudioEffectAmplify", "get_volume_db");
		return ptrcall!(float)(_GODOT_get_volume_db, _godot_object);
	}
}
