module godot.audiostreamrandompitch;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audiostream;
@GodotBaseClass struct AudioStreamRandomPitch
{
	static immutable string _GODOT_internal_name = "AudioStreamRandomPitch";
public:
	union { godot_object _godot_object; AudioStream base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioStreamRandomPitch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamRandomPitch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamRandomPitch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioStreamRandomPitch");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamRandomPitch)(constructor());
	}
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_audio_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_stream") = _GODOT_set_audio_stream;
	void set_audio_stream(in AudioStream stream)
	{
		_GODOT_set_audio_stream.bind("AudioStreamRandomPitch", "set_audio_stream");
		ptrcall!(void)(_GODOT_set_audio_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_audio_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_stream") = _GODOT_get_audio_stream;
	AudioStream get_audio_stream() const
	{
		_GODOT_get_audio_stream.bind("AudioStreamRandomPitch", "get_audio_stream");
		return ptrcall!(AudioStream)(_GODOT_get_audio_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_random_pitch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_random_pitch") = _GODOT_set_random_pitch;
	void set_random_pitch(in float scale)
	{
		_GODOT_set_random_pitch.bind("AudioStreamRandomPitch", "set_random_pitch");
		ptrcall!(void)(_GODOT_set_random_pitch, _godot_object, scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_random_pitch;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_random_pitch") = _GODOT_get_random_pitch;
	float get_random_pitch() const
	{
		_GODOT_get_random_pitch.bind("AudioStreamRandomPitch", "get_random_pitch");
		return ptrcall!(float)(_GODOT_get_random_pitch, _godot_object);
	}
}
