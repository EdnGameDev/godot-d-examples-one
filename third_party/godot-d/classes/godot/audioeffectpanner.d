module godot.audioeffectpanner;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectPanner
{
	static immutable string _GODOT_internal_name = "AudioEffectPanner";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectPanner other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPanner opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPanner _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectPanner");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPanner)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pan") = _GODOT_set_pan;
	void set_pan(in float cpanume)
	{
		_GODOT_set_pan.bind("AudioEffectPanner", "set_pan");
		ptrcall!(void)(_GODOT_set_pan, _godot_object, cpanume);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pan") = _GODOT_get_pan;
	float get_pan() const
	{
		_GODOT_get_pan.bind("AudioEffectPanner", "get_pan");
		return ptrcall!(float)(_GODOT_get_pan, _godot_object);
	}
}
