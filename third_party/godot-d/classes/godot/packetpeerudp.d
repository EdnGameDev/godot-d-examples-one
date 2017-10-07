module godot.packetpeerudp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.packetpeer;
@GodotBaseClass struct PacketPeerUDP
{
	static immutable string _GODOT_internal_name = "PacketPeerUDP";
public:
	union { godot_object _godot_object; PacketPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PacketPeerUDP other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeerUDP opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PacketPeerUDP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PacketPeerUDP");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerUDP)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, int, String, int) _GODOT_listen;
	package(godot) alias _GODOT_methodBindInfo(string name : "listen") = _GODOT_listen;
	GodotError listen(StringArg1)(in int port, in StringArg1 bind_address = "*", in int recv_buf_size = 65536)
	{
		_GODOT_listen.bind("PacketPeerUDP", "listen");
		return ptrcall!(GodotError)(_GODOT_listen, _godot_object, port, bind_address, recv_buf_size);
	}
	package(godot) static GodotMethod!(void) _GODOT_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "close") = _GODOT_close;
	void close()
	{
		_GODOT_close.bind("PacketPeerUDP", "close");
		ptrcall!(void)(_GODOT_close, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_wait;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait") = _GODOT_wait;
	GodotError wait()
	{
		_GODOT_wait.bind("PacketPeerUDP", "wait");
		return ptrcall!(GodotError)(_GODOT_wait, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_listening;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_listening") = _GODOT_is_listening;
	bool is_listening() const
	{
		_GODOT_is_listening.bind("PacketPeerUDP", "is_listening");
		return ptrcall!(bool)(_GODOT_is_listening, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_packet_ip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_ip") = _GODOT_get_packet_ip;
	String get_packet_ip() const
	{
		_GODOT_get_packet_ip.bind("PacketPeerUDP", "get_packet_ip");
		return ptrcall!(String)(_GODOT_get_packet_ip, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_packet_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_port") = _GODOT_get_packet_port;
	int get_packet_port() const
	{
		_GODOT_get_packet_port.bind("PacketPeerUDP", "get_packet_port");
		return ptrcall!(int)(_GODOT_get_packet_port, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String, int) _GODOT_set_dest_address;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dest_address") = _GODOT_set_dest_address;
	GodotError set_dest_address(StringArg0)(in StringArg0 host, in int port)
	{
		_GODOT_set_dest_address.bind("PacketPeerUDP", "set_dest_address");
		return ptrcall!(GodotError)(_GODOT_set_dest_address, _godot_object, host, port);
	}
}
