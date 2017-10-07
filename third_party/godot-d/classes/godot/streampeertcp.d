module godot.streampeertcp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.streampeer;
@GodotBaseClass struct StreamPeerTCP
{
	static immutable string _GODOT_internal_name = "StreamPeerTCP";
public:
	union { godot_object _godot_object; StreamPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StreamPeerTCP other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerTCP opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeerTCP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StreamPeerTCP");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerTCP)(constructor());
	}
	enum Status : int
	{
		STATUS_CONNECTED = 2,
		STATUS_ERROR = 3,
		STATUS_CONNECTING = 1,
		STATUS_NONE = 0,
	}
	enum int STATUS_CONNECTED = 2;
	enum int STATUS_ERROR = 3;
	enum int STATUS_CONNECTING = 1;
	enum int STATUS_NONE = 0;
	package(godot) static GodotMethod!(GodotError, String, int) _GODOT_connect_to_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_host") = _GODOT_connect_to_host;
	GodotError connect_to_host(StringArg0)(in StringArg0 host, in int port)
	{
		_GODOT_connect_to_host.bind("StreamPeerTCP", "connect_to_host");
		return ptrcall!(GodotError)(_GODOT_connect_to_host, _godot_object, host, port);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_connected_to_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connected_to_host") = _GODOT_is_connected_to_host;
	bool is_connected_to_host() const
	{
		_GODOT_is_connected_to_host.bind("StreamPeerTCP", "is_connected_to_host");
		return ptrcall!(bool)(_GODOT_is_connected_to_host, _godot_object);
	}
	package(godot) static GodotMethod!(StreamPeerTCP.Status) _GODOT_get_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_status") = _GODOT_get_status;
	StreamPeerTCP.Status get_status() const
	{
		_GODOT_get_status.bind("StreamPeerTCP", "get_status");
		return ptrcall!(StreamPeerTCP.Status)(_GODOT_get_status, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_connected_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connected_host") = _GODOT_get_connected_host;
	String get_connected_host() const
	{
		_GODOT_get_connected_host.bind("StreamPeerTCP", "get_connected_host");
		return ptrcall!(String)(_GODOT_get_connected_host, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_connected_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connected_port") = _GODOT_get_connected_port;
	int get_connected_port() const
	{
		_GODOT_get_connected_port.bind("StreamPeerTCP", "get_connected_port");
		return ptrcall!(int)(_GODOT_get_connected_port, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_disconnect_from_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_from_host") = _GODOT_disconnect_from_host;
	void disconnect_from_host()
	{
		_GODOT_disconnect_from_host.bind("StreamPeerTCP", "disconnect_from_host");
		ptrcall!(void)(_GODOT_disconnect_from_host, _godot_object);
	}
}
