module godot.packetpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct PacketPeer
{
	static immutable string _GODOT_internal_name = "PacketPeer";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PacketPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PacketPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PacketPeer");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeer)(constructor());
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var") = _GODOT_get_var;
	Variant get_var() const
	{
		_GODOT_get_var.bind("PacketPeer", "get_var");
		return ptrcall!(Variant)(_GODOT_get_var, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, Variant) _GODOT_put_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_var") = _GODOT_put_var;
	GodotError put_var(VariantArg0)(in VariantArg0 var)
	{
		_GODOT_put_var.bind("PacketPeer", "put_var");
		return ptrcall!(GodotError)(_GODOT_put_var, _godot_object, var);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_packet;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet") = _GODOT_get_packet;
	PoolByteArray get_packet() const
	{
		_GODOT_get_packet.bind("PacketPeer", "get_packet");
		return ptrcall!(PoolByteArray)(_GODOT_get_packet, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_put_packet;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_packet") = _GODOT_put_packet;
	GodotError put_packet(in PoolByteArray buffer)
	{
		_GODOT_put_packet.bind("PacketPeer", "put_packet");
		return ptrcall!(GodotError)(_GODOT_put_packet, _godot_object, buffer);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_get_packet_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_error") = _GODOT_get_packet_error;
	GodotError get_packet_error() const
	{
		_GODOT_get_packet_error.bind("PacketPeer", "get_packet_error");
		return ptrcall!(GodotError)(_GODOT_get_packet_error, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_available_packet_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_available_packet_count") = _GODOT_get_available_packet_count;
	int get_available_packet_count() const
	{
		_GODOT_get_available_packet_count.bind("PacketPeer", "get_available_packet_count");
		return ptrcall!(int)(_GODOT_get_available_packet_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_object_decoding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_object_decoding") = _GODOT_set_allow_object_decoding;
	void set_allow_object_decoding(in bool enable)
	{
		_GODOT_set_allow_object_decoding.bind("PacketPeer", "set_allow_object_decoding");
		ptrcall!(void)(_GODOT_set_allow_object_decoding, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_object_decoding_allowed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_object_decoding_allowed") = _GODOT_is_object_decoding_allowed;
	bool is_object_decoding_allowed() const
	{
		_GODOT_is_object_decoding_allowed.bind("PacketPeer", "is_object_decoding_allowed");
		return ptrcall!(bool)(_GODOT_is_object_decoding_allowed, _godot_object);
	}
}
