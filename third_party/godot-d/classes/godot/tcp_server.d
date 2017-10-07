module godot.tcp_server;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.streampeertcp;
@GodotBaseClass struct TCP_Server
{
	static immutable string _GODOT_internal_name = "TCP_Server";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TCP_Server other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TCP_Server opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TCP_Server _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TCP_Server");
		if(constructor is null) return typeof(this).init;
		return cast(TCP_Server)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, int, String) _GODOT_listen;
	package(godot) alias _GODOT_methodBindInfo(string name : "listen") = _GODOT_listen;
	GodotError listen(StringArg1)(in int port, in StringArg1 bind_address = "*")
	{
		_GODOT_listen.bind("TCP_Server", "listen");
		return ptrcall!(GodotError)(_GODOT_listen, _godot_object, port, bind_address);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_connection_available;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connection_available") = _GODOT_is_connection_available;
	bool is_connection_available() const
	{
		_GODOT_is_connection_available.bind("TCP_Server", "is_connection_available");
		return ptrcall!(bool)(_GODOT_is_connection_available, _godot_object);
	}
	package(godot) static GodotMethod!(StreamPeerTCP) _GODOT_take_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "take_connection") = _GODOT_take_connection;
	StreamPeerTCP take_connection()
	{
		_GODOT_take_connection.bind("TCP_Server", "take_connection");
		return ptrcall!(StreamPeerTCP)(_GODOT_take_connection, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("TCP_Server", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
}
