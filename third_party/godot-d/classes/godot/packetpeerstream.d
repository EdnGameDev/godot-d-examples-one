module godot.packetpeerstream;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.packetpeer;
import godot.reference;
@GodotBaseClass struct PacketPeerStream
{
	static immutable string _GODOT_internal_name = "PacketPeerStream";
public:
	union { godot_object _godot_object; PacketPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PacketPeerStream other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeerStream opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PacketPeerStream _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PacketPeerStream");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerStream)(constructor());
	}
	package(godot) static GodotMethod!(void, Reference) _GODOT_set_stream_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream_peer") = _GODOT_set_stream_peer;
	void set_stream_peer(in Reference peer)
	{
		_GODOT_set_stream_peer.bind("PacketPeerStream", "set_stream_peer");
		ptrcall!(void)(_GODOT_set_stream_peer, _godot_object, peer);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_input_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_input_buffer_max_size") = _GODOT_set_input_buffer_max_size;
	void set_input_buffer_max_size(in int max_size_bytes)
	{
		_GODOT_set_input_buffer_max_size.bind("PacketPeerStream", "set_input_buffer_max_size");
		ptrcall!(void)(_GODOT_set_input_buffer_max_size, _godot_object, max_size_bytes);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_output_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_output_buffer_max_size") = _GODOT_set_output_buffer_max_size;
	void set_output_buffer_max_size(in int max_size_bytes)
	{
		_GODOT_set_output_buffer_max_size.bind("PacketPeerStream", "set_output_buffer_max_size");
		ptrcall!(void)(_GODOT_set_output_buffer_max_size, _godot_object, max_size_bytes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_input_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_input_buffer_max_size") = _GODOT_get_input_buffer_max_size;
	int get_input_buffer_max_size() const
	{
		_GODOT_get_input_buffer_max_size.bind("PacketPeerStream", "get_input_buffer_max_size");
		return ptrcall!(int)(_GODOT_get_input_buffer_max_size, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_output_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_output_buffer_max_size") = _GODOT_get_output_buffer_max_size;
	int get_output_buffer_max_size() const
	{
		_GODOT_get_output_buffer_max_size.bind("PacketPeerStream", "get_output_buffer_max_size");
		return ptrcall!(int)(_GODOT_get_output_buffer_max_size, _godot_object);
	}
}
