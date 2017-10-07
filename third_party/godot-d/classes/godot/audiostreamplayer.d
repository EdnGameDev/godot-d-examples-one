module godot.audiostreamplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.audiostream;
@GodotBaseClass struct AudioStreamPlayer
{
	static immutable string _GODOT_internal_name = "AudioStreamPlayer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioStreamPlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamPlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioStreamPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamPlayer)(constructor());
	}
	enum MixTarget : int
	{
		MIX_TARGET_CENTER = 2,
		MIX_TARGET_STEREO = 0,
		MIX_TARGET_SURROUND = 1,
	}
	enum int MIX_TARGET_CENTER = 2;
	enum int MIX_TARGET_STEREO = 0;
	enum int MIX_TARGET_SURROUND = 1;
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	void set_stream(in AudioStream stream)
	{
		_GODOT_set_stream.bind("AudioStreamPlayer", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	AudioStream get_stream() const
	{
		_GODOT_get_stream.bind("AudioStreamPlayer", "get_stream");
		return ptrcall!(AudioStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	void set_volume_db(in float volume_db)
	{
		_GODOT_set_volume_db.bind("AudioStreamPlayer", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, volume_db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	float get_volume_db() const
	{
		_GODOT_get_volume_db.bind("AudioStreamPlayer", "get_volume_db");
		return ptrcall!(float)(_GODOT_get_volume_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	void play(in float from_position = 0)
	{
		_GODOT_play.bind("AudioStreamPlayer", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, from_position);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	void seek(in float to_position)
	{
		_GODOT_seek.bind("AudioStreamPlayer", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("AudioStreamPlayer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	bool is_playing() const
	{
		_GODOT_is_playing.bind("AudioStreamPlayer", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_playback_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_playback_position") = _GODOT_get_playback_position;
	float get_playback_position()
	{
		_GODOT_get_playback_position.bind("AudioStreamPlayer", "get_playback_position");
		return ptrcall!(float)(_GODOT_get_playback_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	void set_bus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("AudioStreamPlayer", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	String get_bus() const
	{
		_GODOT_get_bus.bind("AudioStreamPlayer", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	void set_autoplay(in bool enable)
	{
		_GODOT_set_autoplay.bind("AudioStreamPlayer", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_autoplay_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_autoplay_enabled") = _GODOT_is_autoplay_enabled;
	bool is_autoplay_enabled()
	{
		_GODOT_is_autoplay_enabled.bind("AudioStreamPlayer", "is_autoplay_enabled");
		return ptrcall!(bool)(_GODOT_is_autoplay_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mix_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mix_target") = _GODOT_set_mix_target;
	void set_mix_target(in int mix_target)
	{
		_GODOT_set_mix_target.bind("AudioStreamPlayer", "set_mix_target");
		ptrcall!(void)(_GODOT_set_mix_target, _godot_object, mix_target);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer.MixTarget) _GODOT_get_mix_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix_target") = _GODOT_get_mix_target;
	AudioStreamPlayer.MixTarget get_mix_target() const
	{
		_GODOT_get_mix_target.bind("AudioStreamPlayer", "get_mix_target");
		return ptrcall!(AudioStreamPlayer.MixTarget)(_GODOT_get_mix_target, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_playing") = _GODOT__set_playing;
	void _set_playing(in bool enable)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_active") = _GODOT__is_active;
	bool _is_active() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void) _GODOT__bus_layout_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_bus_layout_changed") = _GODOT__bus_layout_changed;
	void _bus_layout_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
