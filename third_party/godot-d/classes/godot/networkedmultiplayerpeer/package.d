module godot.networkedmultiplayerpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.packetpeer;
@GodotBaseClass struct NetworkedMultiplayerPeer
{
	static immutable string _GODOT_internal_name = "NetworkedMultiplayerPeer";
public:
	union { godot_object _godot_object; PacketPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NetworkedMultiplayerPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NetworkedMultiplayerPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NetworkedMultiplayerPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NetworkedMultiplayerPeer");
		if(constructor is null) return typeof(this).init;
		return cast(NetworkedMultiplayerPeer)(constructor());
	}
	enum ConnectionStatus : int
	{
		CONNECTION_CONNECTED = 2,
		CONNECTION_CONNECTING = 1,
		CONNECTION_DISCONNECTED = 0,
	}
	enum TransferMode : int
	{
		TRANSFER_MODE_RELIABLE = 2,
		TRANSFER_MODE_UNRELIABLE = 0,
		TRANSFER_MODE_UNRELIABLE_ORDERED = 1,
	}
	enum int CONNECTION_CONNECTED = 2;
	enum int TRANSFER_MODE_RELIABLE = 2;
	enum int CONNECTION_CONNECTING = 1;
	enum int TRANSFER_MODE_UNRELIABLE = 0;
	enum int CONNECTION_DISCONNECTED = 0;
	enum int TARGET_PEER_BROADCAST = 0;
	enum int TARGET_PEER_SERVER = 1;
	enum int TRANSFER_MODE_UNRELIABLE_ORDERED = 1;
	package(godot) static GodotMethod!(void, int) _GODOT_set_transfer_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transfer_mode") = _GODOT_set_transfer_mode;
	void set_transfer_mode(in int mode)
	{
		_GODOT_set_transfer_mode.bind("NetworkedMultiplayerPeer", "set_transfer_mode");
		ptrcall!(void)(_GODOT_set_transfer_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_target_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target_peer") = _GODOT_set_target_peer;
	void set_target_peer(in int id)
	{
		_GODOT_set_target_peer.bind("NetworkedMultiplayerPeer", "set_target_peer");
		ptrcall!(void)(_GODOT_set_target_peer, _godot_object, id);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_packet_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_peer") = _GODOT_get_packet_peer;
	int get_packet_peer() const
	{
		_GODOT_get_packet_peer.bind("NetworkedMultiplayerPeer", "get_packet_peer");
		return ptrcall!(int)(_GODOT_get_packet_peer, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_poll;
	package(godot) alias _GODOT_methodBindInfo(string name : "poll") = _GODOT_poll;
	void poll()
	{
		_GODOT_poll.bind("NetworkedMultiplayerPeer", "poll");
		ptrcall!(void)(_GODOT_poll, _godot_object);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerPeer.ConnectionStatus) _GODOT_get_connection_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_status") = _GODOT_get_connection_status;
	NetworkedMultiplayerPeer.ConnectionStatus get_connection_status() const
	{
		_GODOT_get_connection_status.bind("NetworkedMultiplayerPeer", "get_connection_status");
		return ptrcall!(NetworkedMultiplayerPeer.ConnectionStatus)(_GODOT_get_connection_status, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unique_id") = _GODOT_get_unique_id;
	int get_unique_id() const
	{
		_GODOT_get_unique_id.bind("NetworkedMultiplayerPeer", "get_unique_id");
		return ptrcall!(int)(_GODOT_get_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_refuse_new_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refuse_new_connections") = _GODOT_set_refuse_new_connections;
	void set_refuse_new_connections(in bool enable)
	{
		_GODOT_set_refuse_new_connections.bind("NetworkedMultiplayerPeer", "set_refuse_new_connections");
		ptrcall!(void)(_GODOT_set_refuse_new_connections, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_refusing_new_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_refusing_new_connections") = _GODOT_is_refusing_new_connections;
	bool is_refusing_new_connections() const
	{
		_GODOT_is_refusing_new_connections.bind("NetworkedMultiplayerPeer", "is_refusing_new_connections");
		return ptrcall!(bool)(_GODOT_is_refusing_new_connections, _godot_object);
	}
}
