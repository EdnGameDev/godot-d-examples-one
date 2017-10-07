module godot.audioeffectdistortion;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectDistortion
{
	static immutable string _GODOT_internal_name = "AudioEffectDistortion";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectDistortion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectDistortion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectDistortion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectDistortion");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectDistortion)(constructor());
	}
	enum Mode : int
	{
		MODE_ATAN = 1,
		MODE_WAVESHAPE = 4,
		MODE_LOFI = 2,
		MODE_CLIP = 0,
		MODE_OVERDRIVE = 3,
	}
	enum int MODE_ATAN = 1;
	enum int MODE_WAVESHAPE = 4;
	enum int MODE_LOFI = 2;
	enum int MODE_CLIP = 0;
	enum int MODE_OVERDRIVE = 3;
	package(godot) static GodotMethod!(void, int) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	void set_mode(in int mode)
	{
		_GODOT_set_mode.bind("AudioEffectDistortion", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AudioEffectDistortion.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	AudioEffectDistortion.Mode get_mode() const
	{
		_GODOT_get_mode.bind("AudioEffectDistortion", "get_mode");
		return ptrcall!(AudioEffectDistortion.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pre_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pre_gain") = _GODOT_set_pre_gain;
	void set_pre_gain(in float pre_gain)
	{
		_GODOT_set_pre_gain.bind("AudioEffectDistortion", "set_pre_gain");
		ptrcall!(void)(_GODOT_set_pre_gain, _godot_object, pre_gain);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pre_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pre_gain") = _GODOT_get_pre_gain;
	float get_pre_gain() const
	{
		_GODOT_get_pre_gain.bind("AudioEffectDistortion", "get_pre_gain");
		return ptrcall!(float)(_GODOT_get_pre_gain, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_keep_hf_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_keep_hf_hz") = _GODOT_set_keep_hf_hz;
	void set_keep_hf_hz(in float keep_hf_hz)
	{
		_GODOT_set_keep_hf_hz.bind("AudioEffectDistortion", "set_keep_hf_hz");
		ptrcall!(void)(_GODOT_set_keep_hf_hz, _godot_object, keep_hf_hz);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_keep_hf_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_keep_hf_hz") = _GODOT_get_keep_hf_hz;
	float get_keep_hf_hz() const
	{
		_GODOT_get_keep_hf_hz.bind("AudioEffectDistortion", "get_keep_hf_hz");
		return ptrcall!(float)(_GODOT_get_keep_hf_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drive") = _GODOT_set_drive;
	void set_drive(in float drive)
	{
		_GODOT_set_drive.bind("AudioEffectDistortion", "set_drive");
		ptrcall!(void)(_GODOT_set_drive, _godot_object, drive);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drive") = _GODOT_get_drive;
	float get_drive() const
	{
		_GODOT_get_drive.bind("AudioEffectDistortion", "get_drive");
		return ptrcall!(float)(_GODOT_get_drive, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_post_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_post_gain") = _GODOT_set_post_gain;
	void set_post_gain(in float post_gain)
	{
		_GODOT_set_post_gain.bind("AudioEffectDistortion", "set_post_gain");
		ptrcall!(void)(_GODOT_set_post_gain, _godot_object, post_gain);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_post_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_post_gain") = _GODOT_get_post_gain;
	float get_post_gain() const
	{
		_GODOT_get_post_gain.bind("AudioEffectDistortion", "get_post_gain");
		return ptrcall!(float)(_GODOT_get_post_gain, _godot_object);
	}
}
