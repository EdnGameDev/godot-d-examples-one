module godot.audiostreamplayer2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.audiostream;
@GodotBaseClass struct AudioStreamPlayer2D
{
	static immutable string _GODOT_internal_name = "AudioStreamPlayer2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioStreamPlayer2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamPlayer2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamPlayer2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioStreamPlayer2D");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamPlayer2D)(constructor());
	}
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	void set_stream(in AudioStream stream)
	{
		_GODOT_set_stream.bind("AudioStreamPlayer2D", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	AudioStream get_stream() const
	{
		_GODOT_get_stream.bind("AudioStreamPlayer2D", "get_stream");
		return ptrcall!(AudioStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	void set_volume_db(in float volume_db)
	{
		_GODOT_set_volume_db.bind("AudioStreamPlayer2D", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, volume_db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	float get_volume_db() const
	{
		_GODOT_get_volume_db.bind("AudioStreamPlayer2D", "get_volume_db");
		return ptrcall!(float)(_GODOT_get_volume_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	void play(in float from_position = 0)
	{
		_GODOT_play.bind("AudioStreamPlayer2D", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, from_position);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	void seek(in float to_position)
	{
		_GODOT_seek.bind("AudioStreamPlayer2D", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("AudioStreamPlayer2D", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	bool is_playing() const
	{
		_GODOT_is_playing.bind("AudioStreamPlayer2D", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_playback_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_playback_position") = _GODOT_get_playback_position;
	float get_playback_position()
	{
		_GODOT_get_playback_position.bind("AudioStreamPlayer2D", "get_playback_position");
		return ptrcall!(float)(_GODOT_get_playback_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	void set_bus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("AudioStreamPlayer2D", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	String get_bus() const
	{
		_GODOT_get_bus.bind("AudioStreamPlayer2D", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	void set_autoplay(in bool enable)
	{
		_GODOT_set_autoplay.bind("AudioStreamPlayer2D", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_autoplay_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_autoplay_enabled") = _GODOT_is_autoplay_enabled;
	bool is_autoplay_enabled()
	{
		_GODOT_is_autoplay_enabled.bind("AudioStreamPlayer2D", "is_autoplay_enabled");
		return ptrcall!(bool)(_GODOT_is_autoplay_enabled, _godot_object);
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
	package(godot) static GodotMethod!(void, float) _GODOT_set_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_distance") = _GODOT_set_max_distance;
	void set_max_distance(in float pixels)
	{
		_GODOT_set_max_distance.bind("AudioStreamPlayer2D", "set_max_distance");
		ptrcall!(void)(_GODOT_set_max_distance, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_distance") = _GODOT_get_max_distance;
	float get_max_distance() const
	{
		_GODOT_get_max_distance.bind("AudioStreamPlayer2D", "get_max_distance");
		return ptrcall!(float)(_GODOT_get_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_attenuation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation") = _GODOT_set_attenuation;
	void set_attenuation(in float curve)
	{
		_GODOT_set_attenuation.bind("AudioStreamPlayer2D", "set_attenuation");
		ptrcall!(void)(_GODOT_set_attenuation, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_attenuation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation") = _GODOT_get_attenuation;
	float get_attenuation() const
	{
		_GODOT_get_attenuation.bind("AudioStreamPlayer2D", "get_attenuation");
		return ptrcall!(float)(_GODOT_get_attenuation, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_area_mask") = _GODOT_set_area_mask;
	void set_area_mask(in int mask)
	{
		_GODOT_set_area_mask.bind("AudioStreamPlayer2D", "set_area_mask");
		ptrcall!(void)(_GODOT_set_area_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_area_mask") = _GODOT_get_area_mask;
	int get_area_mask() const
	{
		_GODOT_get_area_mask.bind("AudioStreamPlayer2D", "get_area_mask");
		return ptrcall!(int)(_GODOT_get_area_mask, _godot_object);
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
