module godot.visualscriptpropertyset;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptPropertySet
{
	static immutable string _GODOT_internal_name = "VisualScriptPropertySet";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptPropertySet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptPropertySet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptPropertySet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptPropertySet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptPropertySet)(constructor());
	}
	enum AssignOp : int
	{
		ASSIGN_OP_BIT_OR = 9,
		ASSIGN_OP_SHIFT_LEFT = 6,
		ASSIGN_OP_MUL = 3,
		ASSIGN_OP_NONE = 0,
		ASSIGN_OP_ADD = 1,
		ASSIGN_OP_SHIFT_RIGHT = 7,
		ASSIGN_OP_BIT_XOR = 10,
		ASSIGN_OP_DIV = 4,
		ASSIGN_OP_SUB = 2,
		ASSIGN_OP_MOD = 5,
		ASSIGN_OP_BIT_AND = 8,
	}
	enum CallMode : int
	{
		CALL_MODE_INSTANCE = 2,
		CALL_MODE_BASIC_TYPE = 3,
		CALL_MODE_NODE_PATH = 1,
		CALL_MODE_SELF = 0,
	}
	enum int CALL_MODE_INSTANCE = 2;
	enum int ASSIGN_OP_BIT_AND = 8;
	enum int ASSIGN_OP_SHIFT_LEFT = 6;
	enum int ASSIGN_OP_BIT_OR = 9;
	enum int ASSIGN_OP_MUL = 3;
	enum int ASSIGN_OP_NONE = 0;
	enum int ASSIGN_OP_ADD = 1;
	enum int CALL_MODE_SELF = 0;
	enum int ASSIGN_OP_SHIFT_RIGHT = 7;
	enum int ASSIGN_OP_BIT_XOR = 10;
	enum int CALL_MODE_BASIC_TYPE = 3;
	enum int ASSIGN_OP_DIV = 4;
	enum int CALL_MODE_NODE_PATH = 1;
	enum int ASSIGN_OP_SUB = 2;
	enum int ASSIGN_OP_MOD = 5;
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	void set_base_type(StringArg0)(in StringArg0 base_type)
	{
		_GODOT_set_base_type.bind("VisualScriptPropertySet", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, base_type);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	String get_base_type() const
	{
		_GODOT_get_base_type.bind("VisualScriptPropertySet", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_script") = _GODOT_set_base_script;
	void set_base_script(StringArg0)(in StringArg0 base_script)
	{
		_GODOT_set_base_script.bind("VisualScriptPropertySet", "set_base_script");
		ptrcall!(void)(_GODOT_set_base_script, _godot_object, base_script);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_script") = _GODOT_get_base_script;
	String get_base_script() const
	{
		_GODOT_get_base_script.bind("VisualScriptPropertySet", "get_base_script");
		return ptrcall!(String)(_GODOT_get_base_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type") = _GODOT_set_basic_type;
	void set_basic_type(in int basic_type)
	{
		_GODOT_set_basic_type.bind("VisualScriptPropertySet", "set_basic_type");
		ptrcall!(void)(_GODOT_set_basic_type, _godot_object, basic_type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type") = _GODOT_get_basic_type;
	Variant.Type get_basic_type() const
	{
		_GODOT_get_basic_type.bind("VisualScriptPropertySet", "get_basic_type");
		return ptrcall!(Variant.Type)(_GODOT_get_basic_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_type_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_type_cache") = _GODOT__set_type_cache;
	void _set_type_cache(in Dictionary type_cache)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type_cache);
		String _GODOT_method_name = String("_set_type_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_type_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_type_cache") = _GODOT__get_type_cache;
	Dictionary _get_type_cache() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_type_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_property") = _GODOT_set_property;
	void set_property(StringArg0)(in StringArg0 property)
	{
		_GODOT_set_property.bind("VisualScriptPropertySet", "set_property");
		ptrcall!(void)(_GODOT_set_property, _godot_object, property);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_property") = _GODOT_get_property;
	String get_property() const
	{
		_GODOT_get_property.bind("VisualScriptPropertySet", "get_property");
		return ptrcall!(String)(_GODOT_get_property, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_call_mode") = _GODOT_set_call_mode;
	void set_call_mode(in int mode)
	{
		_GODOT_set_call_mode.bind("VisualScriptPropertySet", "set_call_mode");
		ptrcall!(void)(_GODOT_set_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptPropertySet.CallMode) _GODOT_get_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_call_mode") = _GODOT_get_call_mode;
	VisualScriptPropertySet.CallMode get_call_mode() const
	{
		_GODOT_get_call_mode.bind("VisualScriptPropertySet", "get_call_mode");
		return ptrcall!(VisualScriptPropertySet.CallMode)(_GODOT_get_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	void set_base_path(NodePathArg0)(in NodePathArg0 base_path)
	{
		_GODOT_set_base_path.bind("VisualScriptPropertySet", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, base_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	NodePath get_base_path() const
	{
		_GODOT_get_base_path.bind("VisualScriptPropertySet", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_index") = _GODOT_set_index;
	void set_index(StringArg0)(in StringArg0 index)
	{
		_GODOT_set_index.bind("VisualScriptPropertySet", "set_index");
		ptrcall!(void)(_GODOT_set_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	String get_index() const
	{
		_GODOT_get_index.bind("VisualScriptPropertySet", "get_index");
		return ptrcall!(String)(_GODOT_get_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_assign_op;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_assign_op") = _GODOT_set_assign_op;
	void set_assign_op(in int assign_op)
	{
		_GODOT_set_assign_op.bind("VisualScriptPropertySet", "set_assign_op");
		ptrcall!(void)(_GODOT_set_assign_op, _godot_object, assign_op);
	}
	package(godot) static GodotMethod!(VisualScriptPropertySet.AssignOp) _GODOT_get_assign_op;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_assign_op") = _GODOT_get_assign_op;
	VisualScriptPropertySet.AssignOp get_assign_op() const
	{
		_GODOT_get_assign_op.bind("VisualScriptPropertySet", "get_assign_op");
		return ptrcall!(VisualScriptPropertySet.AssignOp)(_GODOT_get_assign_op, _godot_object);
	}
}
