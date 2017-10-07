module godot.networkedmultiplayerenet;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.networkedmultiplayerpeer;
@GodotBaseClass struct NetworkedMultiplayerENet
{
	static immutable string _GODOT_internal_name = "NetworkedMultiplayerENet";
public:
	union { godot_object _godot_object; NetworkedMultiplayerPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NetworkedMultiplayerENet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NetworkedMultiplayerENet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NetworkedMultiplayerENet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NetworkedMultiplayerENet");
		if(constructor is null) return typeof(this).init;
		return cast(NetworkedMultiplayerENet)(constructor());
	}
	enum CompressionMode : int
	{
		COMPRESS_NONE = 0,
		COMPRESS_FASTLZ = 2,
		COMPRESS_ZSTD = 4,
		COMPRESS_RANGE_CODER = 1,
		COMPRESS_ZLIB = 3,
	}
	enum int COMPRESS_NONE = 0;
	enum int COMPRESS_FASTLZ = 2;
	enum int COMPRESS_ZSTD = 4;
	enum int COMPRESS_RANGE_CODER = 1;
	enum int COMPRESS_ZLIB = 3;
	package(godot) static GodotMethod!(GodotError, int, int, int, int) _GODOT_create_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_server") = _GODOT_create_server;
	GodotError create_server(in int port, in int max_clients = 32, in int in_bandwidth = 0, in int out_bandwidth = 0)
	{
		_GODOT_create_server.bind("NetworkedMultiplayerENet", "create_server");
		return ptrcall!(GodotError)(_GODOT_create_server, _godot_object, port, max_clients, in_bandwidth, out_bandwidth);
	}
	package(godot) static GodotMethod!(GodotError, String, int, int, int) _GODOT_create_client;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_client") = _GODOT_create_client;
	GodotError create_client(StringArg0)(in StringArg0 ip, in int port, in int in_bandwidth = 0, in int out_bandwidth = 0)
	{
		_GODOT_create_client.bind("NetworkedMultiplayerENet", "create_client");
		return ptrcall!(GodotError)(_GODOT_create_client, _godot_object, ip, port, in_bandwidth, out_bandwidth);
	}
	package(godot) static GodotMethod!(void) _GODOT_close_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "close_connection") = _GODOT_close_connection;
	void close_connection()
	{
		_GODOT_close_connection.bind("NetworkedMultiplayerENet", "close_connection");
		ptrcall!(void)(_GODOT_close_connection, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_compression_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_compression_mode") = _GODOT_set_compression_mode;
	void set_compression_mode(in int mode)
	{
		_GODOT_set_compression_mode.bind("NetworkedMultiplayerENet", "set_compression_mode");
		ptrcall!(void)(_GODOT_set_compression_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerENet.CompressionMode) _GODOT_get_compression_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_compression_mode") = _GODOT_get_compression_mode;
	NetworkedMultiplayerENet.CompressionMode get_compression_mode() const
	{
		_GODOT_get_compression_mode.bind("NetworkedMultiplayerENet", "get_compression_mode");
		return ptrcall!(NetworkedMultiplayerENet.CompressionMode)(_GODOT_get_compression_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bind_ip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bind_ip") = _GODOT_set_bind_ip;
	void set_bind_ip(StringArg0)(in StringArg0 ip)
	{
		_GODOT_set_bind_ip.bind("NetworkedMultiplayerENet", "set_bind_ip");
		ptrcall!(void)(_GODOT_set_bind_ip, _godot_object, ip);
	}
}
