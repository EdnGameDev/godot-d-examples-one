module godot.visualscriptfunctioncall;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptFunctionCall
{
	static immutable string _GODOT_internal_name = "VisualScriptFunctionCall";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptFunctionCall other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptFunctionCall opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptFunctionCall _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptFunctionCall");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptFunctionCall)(constructor());
	}
	enum RPCCallMode : int
	{
		RPC_UNRELIABLE_TO_ID = 4,
		RPC_UNRELIABLE = 2,
		RPC_RELIABLE = 1,
		RPC_RELIABLE_TO_ID = 3,
		RPC_DISABLED = 0,
	}
	enum CallMode : int
	{
		CALL_MODE_INSTANCE = 2,
		CALL_MODE_BASIC_TYPE = 3,
		CALL_MODE_SINGLETON = 4,
		CALL_MODE_NODE_PATH = 1,
		CALL_MODE_SELF = 0,
	}
	enum int CALL_MODE_INSTANCE = 2;
	enum int RPC_UNRELIABLE_TO_ID = 4;
	enum int CALL_MODE_SINGLETON = 4;
	enum int RPC_UNRELIABLE = 2;
	enum int RPC_RELIABLE = 1;
	enum int CALL_MODE_SELF = 0;
	enum int CALL_MODE_BASIC_TYPE = 3;
	enum int CALL_MODE_NODE_PATH = 1;
	enum int RPC_RELIABLE_TO_ID = 3;
	enum int RPC_DISABLED = 0;
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	void set_base_type(StringArg0)(in StringArg0 base_type)
	{
		_GODOT_set_base_type.bind("VisualScriptFunctionCall", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, base_type);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	String get_base_type() const
	{
		_GODOT_get_base_type.bind("VisualScriptFunctionCall", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_script") = _GODOT_set_base_script;
	void set_base_script(StringArg0)(in StringArg0 base_script)
	{
		_GODOT_set_base_script.bind("VisualScriptFunctionCall", "set_base_script");
		ptrcall!(void)(_GODOT_set_base_script, _godot_object, base_script);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_script") = _GODOT_get_base_script;
	String get_base_script() const
	{
		_GODOT_get_base_script.bind("VisualScriptFunctionCall", "get_base_script");
		return ptrcall!(String)(_GODOT_get_base_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type") = _GODOT_set_basic_type;
	void set_basic_type(in int basic_type)
	{
		_GODOT_set_basic_type.bind("VisualScriptFunctionCall", "set_basic_type");
		ptrcall!(void)(_GODOT_set_basic_type, _godot_object, basic_type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type") = _GODOT_get_basic_type;
	Variant.Type get_basic_type() const
	{
		_GODOT_get_basic_type.bind("VisualScriptFunctionCall", "get_basic_type");
		return ptrcall!(Variant.Type)(_GODOT_get_basic_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_singleton") = _GODOT_set_singleton;
	void set_singleton(StringArg0)(in StringArg0 singleton)
	{
		_GODOT_set_singleton.bind("VisualScriptFunctionCall", "set_singleton");
		ptrcall!(void)(_GODOT_set_singleton, _godot_object, singleton);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_singleton") = _GODOT_get_singleton;
	String get_singleton() const
	{
		_GODOT_get_singleton.bind("VisualScriptFunctionCall", "get_singleton");
		return ptrcall!(String)(_GODOT_get_singleton, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_function") = _GODOT_set_function;
	void set_function(StringArg0)(in StringArg0 _function)
	{
		_GODOT_set_function.bind("VisualScriptFunctionCall", "set_function");
		ptrcall!(void)(_GODOT_set_function, _godot_object, _function);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_function") = _GODOT_get_function;
	String get_function() const
	{
		_GODOT_get_function.bind("VisualScriptFunctionCall", "get_function");
		return ptrcall!(String)(_GODOT_get_function, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_call_mode") = _GODOT_set_call_mode;
	void set_call_mode(in int mode)
	{
		_GODOT_set_call_mode.bind("VisualScriptFunctionCall", "set_call_mode");
		ptrcall!(void)(_GODOT_set_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptFunctionCall.CallMode) _GODOT_get_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_call_mode") = _GODOT_get_call_mode;
	VisualScriptFunctionCall.CallMode get_call_mode() const
	{
		_GODOT_get_call_mode.bind("VisualScriptFunctionCall", "get_call_mode");
		return ptrcall!(VisualScriptFunctionCall.CallMode)(_GODOT_get_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	void set_base_path(NodePathArg0)(in NodePathArg0 base_path)
	{
		_GODOT_set_base_path.bind("VisualScriptFunctionCall", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, base_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	NodePath get_base_path() const
	{
		_GODOT_get_base_path.bind("VisualScriptFunctionCall", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_use_default_args;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_default_args") = _GODOT_set_use_default_args;
	void set_use_default_args(in int amount)
	{
		_GODOT_set_use_default_args.bind("VisualScriptFunctionCall", "set_use_default_args");
		ptrcall!(void)(_GODOT_set_use_default_args, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_use_default_args;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_default_args") = _GODOT_get_use_default_args;
	int get_use_default_args() const
	{
		_GODOT_get_use_default_args.bind("VisualScriptFunctionCall", "get_use_default_args");
		return ptrcall!(int)(_GODOT_get_use_default_args, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_argument_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_argument_cache") = _GODOT__set_argument_cache;
	void _set_argument_cache(in Dictionary argument_cache)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(argument_cache);
		String _GODOT_method_name = String("_set_argument_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_argument_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_argument_cache") = _GODOT__get_argument_cache;
	Dictionary _get_argument_cache() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_argument_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_rpc_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rpc_call_mode") = _GODOT_set_rpc_call_mode;
	void set_rpc_call_mode(in int mode)
	{
		_GODOT_set_rpc_call_mode.bind("VisualScriptFunctionCall", "set_rpc_call_mode");
		ptrcall!(void)(_GODOT_set_rpc_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptFunctionCall.RPCCallMode) _GODOT_get_rpc_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rpc_call_mode") = _GODOT_get_rpc_call_mode;
	VisualScriptFunctionCall.RPCCallMode get_rpc_call_mode() const
	{
		_GODOT_get_rpc_call_mode.bind("VisualScriptFunctionCall", "get_rpc_call_mode");
		return ptrcall!(VisualScriptFunctionCall.RPCCallMode)(_GODOT_get_rpc_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_validate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_validate") = _GODOT_set_validate;
	void set_validate(in bool enable)
	{
		_GODOT_set_validate.bind("VisualScriptFunctionCall", "set_validate");
		ptrcall!(void)(_GODOT_set_validate, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_validate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_validate") = _GODOT_get_validate;
	bool get_validate() const
	{
		_GODOT_get_validate.bind("VisualScriptFunctionCall", "get_validate");
		return ptrcall!(bool)(_GODOT_get_validate, _godot_object);
	}
}
