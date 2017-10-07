module godot.streampeerbuffer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.streampeer;
@GodotBaseClass struct StreamPeerBuffer
{
	static immutable string _GODOT_internal_name = "StreamPeerBuffer";
public:
	union { godot_object _godot_object; StreamPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StreamPeerBuffer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerBuffer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeerBuffer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StreamPeerBuffer");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerBuffer)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	void seek(in int position)
	{
		_GODOT_seek.bind("StreamPeerBuffer", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, position);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	int get_size() const
	{
		_GODOT_get_size.bind("StreamPeerBuffer", "get_size");
		return ptrcall!(int)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	int get_position() const
	{
		_GODOT_get_position.bind("StreamPeerBuffer", "get_position");
		return ptrcall!(int)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_resize;
	package(godot) alias _GODOT_methodBindInfo(string name : "resize") = _GODOT_resize;
	void resize(in int size)
	{
		_GODOT_resize.bind("StreamPeerBuffer", "resize");
		ptrcall!(void)(_GODOT_resize, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_set_data_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_data_array") = _GODOT_set_data_array;
	void set_data_array(in PoolByteArray data)
	{
		_GODOT_set_data_array.bind("StreamPeerBuffer", "set_data_array");
		ptrcall!(void)(_GODOT_set_data_array, _godot_object, data);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_data_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data_array") = _GODOT_get_data_array;
	PoolByteArray get_data_array() const
	{
		_GODOT_get_data_array.bind("StreamPeerBuffer", "get_data_array");
		return ptrcall!(PoolByteArray)(_GODOT_get_data_array, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("StreamPeerBuffer", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(StreamPeerBuffer) _GODOT_duplicate;
	package(godot) alias _GODOT_methodBindInfo(string name : "duplicate") = _GODOT_duplicate;
	StreamPeerBuffer duplicate() const
	{
		_GODOT_duplicate.bind("StreamPeerBuffer", "duplicate");
		return ptrcall!(StreamPeerBuffer)(_GODOT_duplicate, _godot_object);
	}
}
