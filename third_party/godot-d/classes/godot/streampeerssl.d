module godot.streampeerssl;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.streampeer;
@GodotBaseClass struct StreamPeerSSL
{
	static immutable string _GODOT_internal_name = "StreamPeerSSL";
public:
	union { godot_object _godot_object; StreamPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StreamPeerSSL other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerSSL opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeerSSL _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StreamPeerSSL");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerSSL)(constructor());
	}
	enum Status : int
	{
		STATUS_ERROR_HOSTNAME_MISMATCH = 3,
		STATUS_DISCONNECTED = 0,
		STATUS_CONNECTED = 1,
		STATUS_ERROR_NO_CERTIFICATE = 2,
	}
	enum int STATUS_ERROR_HOSTNAME_MISMATCH = 3;
	enum int STATUS_DISCONNECTED = 0;
	enum int STATUS_CONNECTED = 1;
	enum int STATUS_ERROR_NO_CERTIFICATE = 2;
	package(godot) static GodotMethod!(GodotError, StreamPeer) _GODOT_accept_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "accept_stream") = _GODOT_accept_stream;
	GodotError accept_stream(in StreamPeer stream)
	{
		_GODOT_accept_stream.bind("StreamPeerSSL", "accept_stream");
		return ptrcall!(GodotError)(_GODOT_accept_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(GodotError, StreamPeer, bool, String) _GODOT_connect_to_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_stream") = _GODOT_connect_to_stream;
	GodotError connect_to_stream(StringArg2)(in StreamPeer stream, in bool validate_certs = false, in StringArg2 for_hostname = "")
	{
		_GODOT_connect_to_stream.bind("StreamPeerSSL", "connect_to_stream");
		return ptrcall!(GodotError)(_GODOT_connect_to_stream, _godot_object, stream, validate_certs, for_hostname);
	}
	package(godot) static GodotMethod!(StreamPeerSSL.Status) _GODOT_get_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_status") = _GODOT_get_status;
	StreamPeerSSL.Status get_status() const
	{
		_GODOT_get_status.bind("StreamPeerSSL", "get_status");
		return ptrcall!(StreamPeerSSL.Status)(_GODOT_get_status, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_disconnect_from_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_from_stream") = _GODOT_disconnect_from_stream;
	void disconnect_from_stream()
	{
		_GODOT_disconnect_from_stream.bind("StreamPeerSSL", "disconnect_from_stream");
		ptrcall!(void)(_GODOT_disconnect_from_stream, _godot_object);
	}
}
