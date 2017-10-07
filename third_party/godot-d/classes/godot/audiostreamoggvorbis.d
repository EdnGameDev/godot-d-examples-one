module godot.audiostreamoggvorbis;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audiostream;
@GodotBaseClass struct AudioStreamOGGVorbis
{
	static immutable string _GODOT_internal_name = "AudioStreamOGGVorbis";
public:
	union { godot_object _godot_object; AudioStream base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioStreamOGGVorbis other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamOGGVorbis opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamOGGVorbis _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioStreamOGGVorbis");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamOGGVorbis)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_data") = _GODOT_set_data;
	void set_data(in PoolByteArray data)
	{
		_GODOT_set_data.bind("AudioStreamOGGVorbis", "set_data");
		ptrcall!(void)(_GODOT_set_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	PoolByteArray get_data() const
	{
		_GODOT_get_data.bind("AudioStreamOGGVorbis", "get_data");
		return ptrcall!(PoolByteArray)(_GODOT_get_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	void set_loop(in bool enable)
	{
		_GODOT_set_loop.bind("AudioStreamOGGVorbis", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	bool has_loop() const
	{
		_GODOT_has_loop.bind("AudioStreamOGGVorbis", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_loop_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_offset") = _GODOT_set_loop_offset;
	void set_loop_offset(in float seconds)
	{
		_GODOT_set_loop_offset.bind("AudioStreamOGGVorbis", "set_loop_offset");
		ptrcall!(void)(_GODOT_set_loop_offset, _godot_object, seconds);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_loop_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_offset") = _GODOT_get_loop_offset;
	float get_loop_offset() const
	{
		_GODOT_get_loop_offset.bind("AudioStreamOGGVorbis", "get_loop_offset");
		return ptrcall!(float)(_GODOT_get_loop_offset, _godot_object);
	}
}
