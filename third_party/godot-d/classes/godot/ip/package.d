module godot.ip;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
@GodotBaseClass struct IPSingleton
{
	static immutable string _GODOT_internal_name = "IP";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "IP";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in IPSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	IPSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static IPSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("IP");
		if(constructor is null) return typeof(this).init;
		return cast(IPSingleton)(constructor());
	}
	enum ResolverStatus : int
	{
		RESOLVER_STATUS_WAITING = 1,
		RESOLVER_STATUS_DONE = 2,
		RESOLVER_STATUS_ERROR = 3,
		RESOLVER_STATUS_NONE = 0,
	}
	enum Type : int
	{
		TYPE_IPV4 = 1,
		TYPE_IPV6 = 2,
		TYPE_NONE = 0,
		TYPE_ANY = 3,
	}
	enum int RESOLVER_STATUS_ERROR = 3;
	enum int TYPE_NONE = 0;
	enum int RESOLVER_MAX_QUERIES = 32;
	enum int TYPE_IPV4 = 1;
	enum int TYPE_IPV6 = 2;
	enum int RESOLVER_STATUS_WAITING = 1;
	enum int RESOLVER_STATUS_DONE = 2;
	enum int RESOLVER_INVALID_ID = -1;
	enum int TYPE_ANY = 3;
	enum int RESOLVER_STATUS_NONE = 0;
	package(godot) static GodotMethod!(String, String, int) _GODOT_resolve_hostname;
	package(godot) alias _GODOT_methodBindInfo(string name : "resolve_hostname") = _GODOT_resolve_hostname;
	String resolve_hostname(StringArg0)(in StringArg0 host, in int ip_type = 3)
	{
		_GODOT_resolve_hostname.bind("IP", "resolve_hostname");
		return ptrcall!(String)(_GODOT_resolve_hostname, _godot_object, host, ip_type);
	}
	package(godot) static GodotMethod!(int, String, int) _GODOT_resolve_hostname_queue_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "resolve_hostname_queue_item") = _GODOT_resolve_hostname_queue_item;
	int resolve_hostname_queue_item(StringArg0)(in StringArg0 host, in int ip_type = 3)
	{
		_GODOT_resolve_hostname_queue_item.bind("IP", "resolve_hostname_queue_item");
		return ptrcall!(int)(_GODOT_resolve_hostname_queue_item, _godot_object, host, ip_type);
	}
	package(godot) static GodotMethod!(IP.ResolverStatus, int) _GODOT_get_resolve_item_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resolve_item_status") = _GODOT_get_resolve_item_status;
	IP.ResolverStatus get_resolve_item_status(in int id) const
	{
		_GODOT_get_resolve_item_status.bind("IP", "get_resolve_item_status");
		return ptrcall!(IP.ResolverStatus)(_GODOT_get_resolve_item_status, _godot_object, id);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_resolve_item_address;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resolve_item_address") = _GODOT_get_resolve_item_address;
	String get_resolve_item_address(in int id) const
	{
		_GODOT_get_resolve_item_address.bind("IP", "get_resolve_item_address");
		return ptrcall!(String)(_GODOT_get_resolve_item_address, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_erase_resolve_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_resolve_item") = _GODOT_erase_resolve_item;
	void erase_resolve_item(in int id)
	{
		_GODOT_erase_resolve_item.bind("IP", "erase_resolve_item");
		ptrcall!(void)(_GODOT_erase_resolve_item, _godot_object, id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_local_addresses;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_addresses") = _GODOT_get_local_addresses;
	Array get_local_addresses() const
	{
		_GODOT_get_local_addresses.bind("IP", "get_local_addresses");
		return ptrcall!(Array)(_GODOT_get_local_addresses, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_clear_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_cache") = _GODOT_clear_cache;
	void clear_cache(StringArg0)(in StringArg0 hostname = "")
	{
		_GODOT_clear_cache.bind("IP", "clear_cache");
		ptrcall!(void)(_GODOT_clear_cache, _godot_object, hostname);
	}
}
@property pragma(inline, true)
IPSingleton IP()
{
	return IPSingleton._GODOT_singleton();
}
