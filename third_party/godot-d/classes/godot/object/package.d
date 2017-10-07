module godot.object;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct GodotObject
{
	static immutable string _GODOT_internal_name = "Object";
public:
	godot_object _godot_object;
	alias BaseClasses = AliasSeq!();
	bool opEquals(in GodotObject other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GodotObject opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GodotObject _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Object");
		if(constructor is null) return typeof(this).init;
		return cast(GodotObject)(constructor());
	}
	enum ConnectFlags : int
	{
		CONNECT_PERSIST = 2,
		CONNECT_ONESHOT = 4,
		CONNECT_DEFERRED = 1,
	}
	enum int NOTIFICATION_POSTINITIALIZE = 0;
	enum int CONNECT_DEFERRED = 1;
	enum int CONNECT_PERSIST = 2;
	enum int CONNECT_ONESHOT = 4;
	enum int NOTIFICATION_PREDELETE = 1;
	package(godot) static GodotMethod!(void) _GODOT_free;
	package(godot) alias _GODOT_methodBindInfo(string name : "free") = _GODOT_free;
	void free()
	{
		_GODOT_free.bind("Object", "free");
		ptrcall!(void)(_GODOT_free, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "_notification") = _GODOT__notification;
	void _notification(in int what)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(what);
		String _GODOT_method_name = String("_notification");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, String, Variant) _GODOT__set;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set") = _GODOT__set;
	bool _set(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		_GODOT_args.append(value);
		String _GODOT_method_name = String("_set");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__get;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get") = _GODOT__get;
	void _get(StringArg0)(in StringArg0 property)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		String _GODOT_method_name = String("_get");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_property_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_property_list") = _GODOT__get_property_list;
	Array _get_property_list()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_property_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	package(godot) static GodotMethod!(void) _GODOT__init;
	package(godot) alias _GODOT_methodBindInfo(string name : "_init") = _GODOT__init;
	void _init()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class") = _GODOT_get_class;
	String get_class() const
	{
		_GODOT_get_class.bind("Object", "get_class");
		return ptrcall!(String)(_GODOT_get_class, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_class") = _GODOT_is_class;
	bool is_class(StringArg0)(in StringArg0 type) const
	{
		_GODOT_is_class.bind("Object", "is_class");
		return ptrcall!(bool)(_GODOT_is_class, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set;
	package(godot) alias _GODOT_methodBindInfo(string name : "set") = _GODOT_set;
	void set(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		_GODOT_set.bind("Object", "set");
		ptrcall!(void)(_GODOT_set, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get;
	package(godot) alias _GODOT_methodBindInfo(string name : "get") = _GODOT_get;
	Variant get(StringArg0)(in StringArg0 property) const
	{
		_GODOT_get.bind("Object", "get");
		return ptrcall!(Variant)(_GODOT_get, _godot_object, property);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_property_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_property_list") = _GODOT_get_property_list;
	Array get_property_list() const
	{
		_GODOT_get_property_list.bind("Object", "get_property_list");
		return ptrcall!(Array)(_GODOT_get_property_list, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_method_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_method_list") = _GODOT_get_method_list;
	Array get_method_list() const
	{
		_GODOT_get_method_list.bind("Object", "get_method_list");
		return ptrcall!(Array)(_GODOT_get_method_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "notification") = _GODOT_notification;
	void notification(in int what, in bool reversed = false)
	{
		_GODOT_notification.bind("Object", "notification");
		ptrcall!(void)(_GODOT_notification, _godot_object, what, reversed);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_id") = _GODOT_get_instance_id;
	int get_instance_id() const
	{
		_GODOT_get_instance_id.bind("Object", "get_instance_id");
		return ptrcall!(int)(_GODOT_get_instance_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, Reference) _GODOT_set_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_script") = _GODOT_set_script;
	void set_script(in Reference script)
	{
		_GODOT_set_script.bind("Object", "set_script");
		ptrcall!(void)(_GODOT_set_script, _godot_object, script);
	}
	package(godot) static GodotMethod!(Reference) _GODOT_get_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_script") = _GODOT_get_script;
	Reference get_script() const
	{
		_GODOT_get_script.bind("Object", "get_script");
		return ptrcall!(Reference)(_GODOT_get_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_meta") = _GODOT_set_meta;
	void set_meta(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_meta.bind("Object", "set_meta");
		ptrcall!(void)(_GODOT_set_meta, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_meta") = _GODOT_get_meta;
	Variant get_meta(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_meta.bind("Object", "get_meta");
		return ptrcall!(Variant)(_GODOT_get_meta, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_meta") = _GODOT_has_meta;
	bool has_meta(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_meta.bind("Object", "has_meta");
		return ptrcall!(bool)(_GODOT_has_meta, _godot_object, name);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_meta_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_meta_list") = _GODOT_get_meta_list;
	PoolStringArray get_meta_list() const
	{
		_GODOT_get_meta_list.bind("Object", "get_meta_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_meta_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Array) _GODOT_add_user_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_user_signal") = _GODOT_add_user_signal;
	void add_user_signal(StringArg0)(in StringArg0 signal, in Array arguments = Array.empty_array)
	{
		_GODOT_add_user_signal.bind("Object", "add_user_signal");
		ptrcall!(void)(_GODOT_add_user_signal, _godot_object, signal, arguments);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_user_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_user_signal") = _GODOT_has_user_signal;
	bool has_user_signal(StringArg0)(in StringArg0 signal) const
	{
		_GODOT_has_user_signal.bind("Object", "has_user_signal");
		return ptrcall!(bool)(_GODOT_has_user_signal, _godot_object, signal);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_emit_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "emit_signal") = _GODOT_emit_signal;
	Variant emit_signal(StringArg0, VarArgs...)(in StringArg0 signal, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(signal);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("emit_signal");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_call;
	package(godot) alias _GODOT_methodBindInfo(string name : "call") = _GODOT_call;
	Variant call(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_call_deferred;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_deferred") = _GODOT_call_deferred;
	Variant call_deferred(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_deferred");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, Array) _GODOT_callv;
	package(godot) alias _GODOT_methodBindInfo(string name : "callv") = _GODOT_callv;
	Variant callv(StringArg0)(in StringArg0 method, in Array arg_array) const
	{
		_GODOT_callv.bind("Object", "callv");
		return ptrcall!(Variant)(_GODOT_callv, _godot_object, method, arg_array);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_method") = _GODOT_has_method;
	bool has_method(StringArg0)(in StringArg0 method) const
	{
		_GODOT_has_method.bind("Object", "has_method");
		return ptrcall!(bool)(_GODOT_has_method, _godot_object, method);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_signal_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal_list") = _GODOT_get_signal_list;
	Array get_signal_list() const
	{
		_GODOT_get_signal_list.bind("Object", "get_signal_list");
		return ptrcall!(Array)(_GODOT_get_signal_list, _godot_object);
	}
	package(godot) static GodotMethod!(Array, String) _GODOT_get_signal_connection_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal_connection_list") = _GODOT_get_signal_connection_list;
	Array get_signal_connection_list(StringArg0)(in StringArg0 signal) const
	{
		_GODOT_get_signal_connection_list.bind("Object", "get_signal_connection_list");
		return ptrcall!(Array)(_GODOT_get_signal_connection_list, _godot_object, signal);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_incoming_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_incoming_connections") = _GODOT_get_incoming_connections;
	Array get_incoming_connections() const
	{
		_GODOT_get_incoming_connections.bind("Object", "get_incoming_connections");
		return ptrcall!(Array)(_GODOT_get_incoming_connections, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String, GodotObject, String, Array, int) _GODOT_connect;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect") = _GODOT_connect;
	GodotError connect(StringArg0, StringArg2)(in StringArg0 signal, in GodotObject target, in StringArg2 method, in Array binds = Array.empty_array, in int flags = 0)
	{
		_GODOT_connect.bind("Object", "connect");
		return ptrcall!(GodotError)(_GODOT_connect, _godot_object, signal, target, method, binds, flags);
	}
	package(godot) static GodotMethod!(void, String, GodotObject, String) _GODOT_disconnect;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect") = _GODOT_disconnect;
	void disconnect(StringArg0, StringArg2)(in StringArg0 signal, in GodotObject target, in StringArg2 method)
	{
		_GODOT_disconnect.bind("Object", "disconnect");
		ptrcall!(void)(_GODOT_disconnect, _godot_object, signal, target, method);
	}
	package(godot) static GodotMethod!(bool, String, GodotObject, String) _GODOT_is_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connected") = _GODOT_is_connected;
	bool is_connected(StringArg0, StringArg2)(in StringArg0 signal, in GodotObject target, in StringArg2 method) const
	{
		_GODOT_is_connected.bind("Object", "is_connected");
		return ptrcall!(bool)(_GODOT_is_connected, _godot_object, signal, target, method);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_block_signals;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_block_signals") = _GODOT_set_block_signals;
	void set_block_signals(in bool enable)
	{
		_GODOT_set_block_signals.bind("Object", "set_block_signals");
		ptrcall!(void)(_GODOT_set_block_signals, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_blocking_signals;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_blocking_signals") = _GODOT_is_blocking_signals;
	bool is_blocking_signals() const
	{
		_GODOT_is_blocking_signals.bind("Object", "is_blocking_signals");
		return ptrcall!(bool)(_GODOT_is_blocking_signals, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_property_list_changed_notify;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_list_changed_notify") = _GODOT_property_list_changed_notify;
	void property_list_changed_notify()
	{
		_GODOT_property_list_changed_notify.bind("Object", "property_list_changed_notify");
		ptrcall!(void)(_GODOT_property_list_changed_notify, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_message_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_message_translation") = _GODOT_set_message_translation;
	void set_message_translation(in bool enable)
	{
		_GODOT_set_message_translation.bind("Object", "set_message_translation");
		ptrcall!(void)(_GODOT_set_message_translation, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_translate_messages;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_translate_messages") = _GODOT_can_translate_messages;
	bool can_translate_messages() const
	{
		_GODOT_can_translate_messages.bind("Object", "can_translate_messages");
		return ptrcall!(bool)(_GODOT_can_translate_messages, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_tr;
	package(godot) alias _GODOT_methodBindInfo(string name : "tr") = _GODOT_tr;
	String tr(StringArg0)(in StringArg0 message) const
	{
		_GODOT_tr.bind("Object", "tr");
		return ptrcall!(String)(_GODOT_tr, _godot_object, message);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_queued_for_deletion;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_queued_for_deletion") = _GODOT_is_queued_for_deletion;
	bool is_queued_for_deletion() const
	{
		_GODOT_is_queued_for_deletion.bind("Object", "is_queued_for_deletion");
		return ptrcall!(bool)(_GODOT_is_queued_for_deletion, _godot_object);
	}
}
