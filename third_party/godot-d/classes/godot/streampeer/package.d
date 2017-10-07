module godot.streampeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct StreamPeer
{
	static immutable string _GODOT_internal_name = "StreamPeer";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StreamPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StreamPeer");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeer)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_put_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_data") = _GODOT_put_data;
	GodotError put_data(in PoolByteArray data)
	{
		_GODOT_put_data.bind("StreamPeer", "put_data");
		return ptrcall!(GodotError)(_GODOT_put_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(Array, PoolByteArray) _GODOT_put_partial_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_partial_data") = _GODOT_put_partial_data;
	Array put_partial_data(in PoolByteArray data)
	{
		_GODOT_put_partial_data.bind("StreamPeer", "put_partial_data");
		return ptrcall!(Array)(_GODOT_put_partial_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	Array get_data(in int bytes)
	{
		_GODOT_get_data.bind("StreamPeer", "get_data");
		return ptrcall!(Array)(_GODOT_get_data, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_partial_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_partial_data") = _GODOT_get_partial_data;
	Array get_partial_data(in int bytes)
	{
		_GODOT_get_partial_data.bind("StreamPeer", "get_partial_data");
		return ptrcall!(Array)(_GODOT_get_partial_data, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_available_bytes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_available_bytes") = _GODOT_get_available_bytes;
	int get_available_bytes() const
	{
		_GODOT_get_available_bytes.bind("StreamPeer", "get_available_bytes");
		return ptrcall!(int)(_GODOT_get_available_bytes, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_big_endian;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_big_endian") = _GODOT_set_big_endian;
	void set_big_endian(in bool enable)
	{
		_GODOT_set_big_endian.bind("StreamPeer", "set_big_endian");
		ptrcall!(void)(_GODOT_set_big_endian, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_big_endian_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_big_endian_enabled") = _GODOT_is_big_endian_enabled;
	bool is_big_endian_enabled() const
	{
		_GODOT_is_big_endian_enabled.bind("StreamPeer", "is_big_endian_enabled");
		return ptrcall!(bool)(_GODOT_is_big_endian_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_8") = _GODOT_put_8;
	void put_8(in int val)
	{
		_GODOT_put_8.bind("StreamPeer", "put_8");
		ptrcall!(void)(_GODOT_put_8, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_u8;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u8") = _GODOT_put_u8;
	void put_u8(in int val)
	{
		_GODOT_put_u8.bind("StreamPeer", "put_u8");
		ptrcall!(void)(_GODOT_put_u8, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_16") = _GODOT_put_16;
	void put_16(in int val)
	{
		_GODOT_put_16.bind("StreamPeer", "put_16");
		ptrcall!(void)(_GODOT_put_16, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_u16;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u16") = _GODOT_put_u16;
	void put_u16(in int val)
	{
		_GODOT_put_u16.bind("StreamPeer", "put_u16");
		ptrcall!(void)(_GODOT_put_u16, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_32") = _GODOT_put_32;
	void put_32(in int val)
	{
		_GODOT_put_32.bind("StreamPeer", "put_32");
		ptrcall!(void)(_GODOT_put_32, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_u32;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u32") = _GODOT_put_u32;
	void put_u32(in int val)
	{
		_GODOT_put_u32.bind("StreamPeer", "put_u32");
		ptrcall!(void)(_GODOT_put_u32, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_64") = _GODOT_put_64;
	void put_64(in int val)
	{
		_GODOT_put_64.bind("StreamPeer", "put_64");
		ptrcall!(void)(_GODOT_put_64, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_put_u64;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u64") = _GODOT_put_u64;
	void put_u64(in int val)
	{
		_GODOT_put_u64.bind("StreamPeer", "put_u64");
		ptrcall!(void)(_GODOT_put_u64, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_put_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_float") = _GODOT_put_float;
	void put_float(in float val)
	{
		_GODOT_put_float.bind("StreamPeer", "put_float");
		ptrcall!(void)(_GODOT_put_float, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_put_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_double") = _GODOT_put_double;
	void put_double(in float val)
	{
		_GODOT_put_double.bind("StreamPeer", "put_double");
		ptrcall!(void)(_GODOT_put_double, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_put_utf8_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_utf8_string") = _GODOT_put_utf8_string;
	void put_utf8_string(StringArg0)(in StringArg0 val)
	{
		_GODOT_put_utf8_string.bind("StreamPeer", "put_utf8_string");
		ptrcall!(void)(_GODOT_put_utf8_string, _godot_object, val);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_put_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_var") = _GODOT_put_var;
	void put_var(VariantArg0)(in VariantArg0 val)
	{
		_GODOT_put_var.bind("StreamPeer", "put_var");
		ptrcall!(void)(_GODOT_put_var, _godot_object, val);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_8") = _GODOT_get_8;
	int get_8()
	{
		_GODOT_get_8.bind("StreamPeer", "get_8");
		return ptrcall!(int)(_GODOT_get_8, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_u8;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u8") = _GODOT_get_u8;
	int get_u8()
	{
		_GODOT_get_u8.bind("StreamPeer", "get_u8");
		return ptrcall!(int)(_GODOT_get_u8, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_16") = _GODOT_get_16;
	int get_16()
	{
		_GODOT_get_16.bind("StreamPeer", "get_16");
		return ptrcall!(int)(_GODOT_get_16, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_u16;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u16") = _GODOT_get_u16;
	int get_u16()
	{
		_GODOT_get_u16.bind("StreamPeer", "get_u16");
		return ptrcall!(int)(_GODOT_get_u16, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_32") = _GODOT_get_32;
	int get_32()
	{
		_GODOT_get_32.bind("StreamPeer", "get_32");
		return ptrcall!(int)(_GODOT_get_32, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_u32;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u32") = _GODOT_get_u32;
	int get_u32()
	{
		_GODOT_get_u32.bind("StreamPeer", "get_u32");
		return ptrcall!(int)(_GODOT_get_u32, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_64") = _GODOT_get_64;
	int get_64()
	{
		_GODOT_get_64.bind("StreamPeer", "get_64");
		return ptrcall!(int)(_GODOT_get_64, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_u64;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u64") = _GODOT_get_u64;
	int get_u64()
	{
		_GODOT_get_u64.bind("StreamPeer", "get_u64");
		return ptrcall!(int)(_GODOT_get_u64, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_float") = _GODOT_get_float;
	float get_float()
	{
		_GODOT_get_float.bind("StreamPeer", "get_float");
		return ptrcall!(float)(_GODOT_get_float, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_double") = _GODOT_get_double;
	float get_double()
	{
		_GODOT_get_double.bind("StreamPeer", "get_double");
		return ptrcall!(float)(_GODOT_get_double, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_string") = _GODOT_get_string;
	String get_string(in int bytes)
	{
		_GODOT_get_string.bind("StreamPeer", "get_string");
		return ptrcall!(String)(_GODOT_get_string, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_utf8_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_utf8_string") = _GODOT_get_utf8_string;
	String get_utf8_string(in int bytes)
	{
		_GODOT_get_utf8_string.bind("StreamPeer", "get_utf8_string");
		return ptrcall!(String)(_GODOT_get_utf8_string, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var") = _GODOT_get_var;
	Variant get_var()
	{
		_GODOT_get_var.bind("StreamPeer", "get_var");
		return ptrcall!(Variant)(_GODOT_get_var, _godot_object);
	}
}
