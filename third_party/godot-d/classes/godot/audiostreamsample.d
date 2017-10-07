module godot.audiostreamsample;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audiostream;
@GodotBaseClass struct AudioStreamSample
{
	static immutable string _GODOT_internal_name = "AudioStreamSample";
public:
	union { godot_object _godot_object; AudioStream base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioStreamSample other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamSample opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamSample _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioStreamSample");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamSample)(constructor());
	}
	enum LoopMode : int
	{
		LOOP_DISABLED = 0,
		LOOP_PING_PONG = 2,
		LOOP_FORWARD = 1,
	}
	enum Format : int
	{
		FORMAT_IMA_ADPCM = 2,
		FORMAT_8_BITS = 0,
		FORMAT_16_BITS = 1,
	}
	enum int FORMAT_IMA_ADPCM = 2;
	enum int LOOP_DISABLED = 0;
	enum int LOOP_PING_PONG = 2;
	enum int FORMAT_8_BITS = 0;
	enum int FORMAT_16_BITS = 1;
	enum int LOOP_FORWARD = 1;
	package(godot) static GodotMethod!(void, int) _GODOT_set_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_format") = _GODOT_set_format;
	void set_format(in int format)
	{
		_GODOT_set_format.bind("AudioStreamSample", "set_format");
		ptrcall!(void)(_GODOT_set_format, _godot_object, format);
	}
	package(godot) static GodotMethod!(AudioStreamSample.Format) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	AudioStreamSample.Format get_format() const
	{
		_GODOT_get_format.bind("AudioStreamSample", "get_format");
		return ptrcall!(AudioStreamSample.Format)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_loop_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_mode") = _GODOT_set_loop_mode;
	void set_loop_mode(in int loop_mode)
	{
		_GODOT_set_loop_mode.bind("AudioStreamSample", "set_loop_mode");
		ptrcall!(void)(_GODOT_set_loop_mode, _godot_object, loop_mode);
	}
	package(godot) static GodotMethod!(AudioStreamSample.LoopMode) _GODOT_get_loop_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_mode") = _GODOT_get_loop_mode;
	AudioStreamSample.LoopMode get_loop_mode() const
	{
		_GODOT_get_loop_mode.bind("AudioStreamSample", "get_loop_mode");
		return ptrcall!(AudioStreamSample.LoopMode)(_GODOT_get_loop_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_loop_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_begin") = _GODOT_set_loop_begin;
	void set_loop_begin(in int loop_begin)
	{
		_GODOT_set_loop_begin.bind("AudioStreamSample", "set_loop_begin");
		ptrcall!(void)(_GODOT_set_loop_begin, _godot_object, loop_begin);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_loop_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_begin") = _GODOT_get_loop_begin;
	int get_loop_begin() const
	{
		_GODOT_get_loop_begin.bind("AudioStreamSample", "get_loop_begin");
		return ptrcall!(int)(_GODOT_get_loop_begin, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_loop_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_end") = _GODOT_set_loop_end;
	void set_loop_end(in int loop_end)
	{
		_GODOT_set_loop_end.bind("AudioStreamSample", "set_loop_end");
		ptrcall!(void)(_GODOT_set_loop_end, _godot_object, loop_end);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_loop_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_end") = _GODOT_get_loop_end;
	int get_loop_end() const
	{
		_GODOT_get_loop_end.bind("AudioStreamSample", "get_loop_end");
		return ptrcall!(int)(_GODOT_get_loop_end, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mix_rate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mix_rate") = _GODOT_set_mix_rate;
	void set_mix_rate(in int mix_rate)
	{
		_GODOT_set_mix_rate.bind("AudioStreamSample", "set_mix_rate");
		ptrcall!(void)(_GODOT_set_mix_rate, _godot_object, mix_rate);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_mix_rate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix_rate") = _GODOT_get_mix_rate;
	int get_mix_rate() const
	{
		_GODOT_get_mix_rate.bind("AudioStreamSample", "get_mix_rate");
		return ptrcall!(int)(_GODOT_get_mix_rate, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_stereo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stereo") = _GODOT_set_stereo;
	void set_stereo(in bool stereo)
	{
		_GODOT_set_stereo.bind("AudioStreamSample", "set_stereo");
		ptrcall!(void)(_GODOT_set_stereo, _godot_object, stereo);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stereo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stereo") = _GODOT_is_stereo;
	bool is_stereo() const
	{
		_GODOT_is_stereo.bind("AudioStreamSample", "is_stereo");
		return ptrcall!(bool)(_GODOT_is_stereo, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_data") = _GODOT_set_data;
	void set_data(in PoolByteArray data)
	{
		_GODOT_set_data.bind("AudioStreamSample", "set_data");
		ptrcall!(void)(_GODOT_set_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	PoolByteArray get_data() const
	{
		_GODOT_get_data.bind("AudioStreamSample", "get_data");
		return ptrcall!(PoolByteArray)(_GODOT_get_data, _godot_object);
	}
}
