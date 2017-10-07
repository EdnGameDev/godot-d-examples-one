module godot.videoplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.videostream;
import godot.texture;
@GodotBaseClass struct VideoPlayer
{
	static immutable string _GODOT_internal_name = "VideoPlayer";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VideoPlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VideoPlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VideoPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VideoPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(VideoPlayer)(constructor());
	}
	package(godot) static GodotMethod!(void, VideoStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	void set_stream(in VideoStream stream)
	{
		_GODOT_set_stream.bind("VideoPlayer", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(VideoStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	VideoStream get_stream() const
	{
		_GODOT_get_stream.bind("VideoPlayer", "get_stream");
		return ptrcall!(VideoStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	void play()
	{
		_GODOT_play.bind("VideoPlayer", "play");
		ptrcall!(void)(_GODOT_play, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("VideoPlayer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	bool is_playing() const
	{
		_GODOT_is_playing.bind("VideoPlayer", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_paused") = _GODOT_set_paused;
	void set_paused(in bool paused)
	{
		_GODOT_set_paused.bind("VideoPlayer", "set_paused");
		ptrcall!(void)(_GODOT_set_paused, _godot_object, paused);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_paused") = _GODOT_is_paused;
	bool is_paused() const
	{
		_GODOT_is_paused.bind("VideoPlayer", "is_paused");
		return ptrcall!(bool)(_GODOT_is_paused, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_volume;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume") = _GODOT_set_volume;
	void set_volume(in float volume)
	{
		_GODOT_set_volume.bind("VideoPlayer", "set_volume");
		ptrcall!(void)(_GODOT_set_volume, _godot_object, volume);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_volume;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume") = _GODOT_get_volume;
	float get_volume() const
	{
		_GODOT_get_volume.bind("VideoPlayer", "get_volume");
		return ptrcall!(float)(_GODOT_get_volume, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	void set_volume_db(in float db)
	{
		_GODOT_set_volume_db.bind("VideoPlayer", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	float get_volume_db() const
	{
		_GODOT_get_volume_db.bind("VideoPlayer", "get_volume_db");
		return ptrcall!(float)(_GODOT_get_volume_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_audio_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_track") = _GODOT_set_audio_track;
	void set_audio_track(in int track)
	{
		_GODOT_set_audio_track.bind("VideoPlayer", "set_audio_track");
		ptrcall!(void)(_GODOT_set_audio_track, _godot_object, track);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_audio_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_track") = _GODOT_get_audio_track;
	int get_audio_track() const
	{
		_GODOT_get_audio_track.bind("VideoPlayer", "get_audio_track");
		return ptrcall!(int)(_GODOT_get_audio_track, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_stream_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream_name") = _GODOT_get_stream_name;
	String get_stream_name() const
	{
		_GODOT_get_stream_name.bind("VideoPlayer", "get_stream_name");
		return ptrcall!(String)(_GODOT_get_stream_name, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_stream_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream_position") = _GODOT_get_stream_position;
	float get_stream_position() const
	{
		_GODOT_get_stream_position.bind("VideoPlayer", "get_stream_position");
		return ptrcall!(float)(_GODOT_get_stream_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	void set_autoplay(in bool enabled)
	{
		_GODOT_set_autoplay.bind("VideoPlayer", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_autoplay") = _GODOT_has_autoplay;
	bool has_autoplay() const
	{
		_GODOT_has_autoplay.bind("VideoPlayer", "has_autoplay");
		return ptrcall!(bool)(_GODOT_has_autoplay, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand") = _GODOT_set_expand;
	void set_expand(in bool enable)
	{
		_GODOT_set_expand.bind("VideoPlayer", "set_expand");
		ptrcall!(void)(_GODOT_set_expand, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_expand") = _GODOT_has_expand;
	bool has_expand() const
	{
		_GODOT_has_expand.bind("VideoPlayer", "has_expand");
		return ptrcall!(bool)(_GODOT_has_expand, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_buffering_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_buffering_msec") = _GODOT_set_buffering_msec;
	void set_buffering_msec(in int msec)
	{
		_GODOT_set_buffering_msec.bind("VideoPlayer", "set_buffering_msec");
		ptrcall!(void)(_GODOT_set_buffering_msec, _godot_object, msec);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_buffering_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_buffering_msec") = _GODOT_get_buffering_msec;
	int get_buffering_msec() const
	{
		_GODOT_get_buffering_msec.bind("VideoPlayer", "get_buffering_msec");
		return ptrcall!(int)(_GODOT_get_buffering_msec, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_video_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_video_texture") = _GODOT_get_video_texture;
	Texture get_video_texture()
	{
		_GODOT_get_video_texture.bind("VideoPlayer", "get_video_texture");
		return ptrcall!(Texture)(_GODOT_get_video_texture, _godot_object);
	}
}
