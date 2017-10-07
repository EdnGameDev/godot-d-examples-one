module godot.visualscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.script;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScript
{
	static immutable string _GODOT_internal_name = "VisualScript";
public:
	union { godot_object _godot_object; Script base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScript");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScript)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT__node_ports_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_ports_changed") = _GODOT__node_ports_changed;
	void _node_ports_changed(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_ports_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_function") = _GODOT_add_function;
	void add_function(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_function.bind("VisualScript", "add_function");
		ptrcall!(void)(_GODOT_add_function, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_function") = _GODOT_has_function;
	bool has_function(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_function.bind("VisualScript", "has_function");
		return ptrcall!(bool)(_GODOT_has_function, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_function") = _GODOT_remove_function;
	void remove_function(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_function.bind("VisualScript", "remove_function");
		ptrcall!(void)(_GODOT_remove_function, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_function") = _GODOT_rename_function;
	void rename_function(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		_GODOT_rename_function.bind("VisualScript", "rename_function");
		ptrcall!(void)(_GODOT_rename_function, _godot_object, name, new_name);
	}
	package(godot) static GodotMethod!(void, String, Vector2) _GODOT_set_function_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_function_scroll") = _GODOT_set_function_scroll;
	void set_function_scroll(StringArg0)(in StringArg0 name, in Vector2 ofs)
	{
		_GODOT_set_function_scroll.bind("VisualScript", "set_function_scroll");
		ptrcall!(void)(_GODOT_set_function_scroll, _godot_object, name, ofs);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_get_function_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_function_scroll") = _GODOT_get_function_scroll;
	Vector2 get_function_scroll(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_function_scroll.bind("VisualScript", "get_function_scroll");
		return ptrcall!(Vector2)(_GODOT_get_function_scroll, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, int, VisualScriptNode, Vector2) _GODOT_add_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_node") = _GODOT_add_node;
	void add_node(StringArg0)(in StringArg0 func, in int id, in VisualScriptNode node, in Vector2 position = Vector2(0, 0))
	{
		_GODOT_add_node.bind("VisualScript", "add_node");
		ptrcall!(void)(_GODOT_add_node, _godot_object, func, id, node, position);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_remove_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_node") = _GODOT_remove_node;
	void remove_node(StringArg0)(in StringArg0 func, in int id)
	{
		_GODOT_remove_node.bind("VisualScript", "remove_node");
		ptrcall!(void)(_GODOT_remove_node, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_get_function_node_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_function_node_id") = _GODOT_get_function_node_id;
	int get_function_node_id(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_function_node_id.bind("VisualScript", "get_function_node_id");
		return ptrcall!(int)(_GODOT_get_function_node_id, _godot_object, name);
	}
	package(godot) static GodotMethod!(VisualScriptNode, String, int) _GODOT_get_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node") = _GODOT_get_node;
	VisualScriptNode get_node(StringArg0)(in StringArg0 func, in int id) const
	{
		_GODOT_get_node.bind("VisualScript", "get_node");
		return ptrcall!(VisualScriptNode)(_GODOT_get_node, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(bool, String, int) _GODOT_has_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_node") = _GODOT_has_node;
	bool has_node(StringArg0)(in StringArg0 func, in int id) const
	{
		_GODOT_has_node.bind("VisualScript", "has_node");
		return ptrcall!(bool)(_GODOT_has_node, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(void, String, int, Vector2) _GODOT_set_node_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_position") = _GODOT_set_node_position;
	void set_node_position(StringArg0)(in StringArg0 func, in int id, in Vector2 position)
	{
		_GODOT_set_node_position.bind("VisualScript", "set_node_position");
		ptrcall!(void)(_GODOT_set_node_position, _godot_object, func, id, position);
	}
	package(godot) static GodotMethod!(Vector2, String, int) _GODOT_get_node_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_position") = _GODOT_get_node_position;
	Vector2 get_node_position(StringArg0)(in StringArg0 func, in int id) const
	{
		_GODOT_get_node_position.bind("VisualScript", "get_node_position");
		return ptrcall!(Vector2)(_GODOT_get_node_position, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(void, String, int, int, int) _GODOT_sequence_connect;
	package(godot) alias _GODOT_methodBindInfo(string name : "sequence_connect") = _GODOT_sequence_connect;
	void sequence_connect(StringArg0)(in StringArg0 func, in int from_node, in int from_output, in int to_node)
	{
		_GODOT_sequence_connect.bind("VisualScript", "sequence_connect");
		ptrcall!(void)(_GODOT_sequence_connect, _godot_object, func, from_node, from_output, to_node);
	}
	package(godot) static GodotMethod!(void, String, int, int, int) _GODOT_sequence_disconnect;
	package(godot) alias _GODOT_methodBindInfo(string name : "sequence_disconnect") = _GODOT_sequence_disconnect;
	void sequence_disconnect(StringArg0)(in StringArg0 func, in int from_node, in int from_output, in int to_node)
	{
		_GODOT_sequence_disconnect.bind("VisualScript", "sequence_disconnect");
		ptrcall!(void)(_GODOT_sequence_disconnect, _godot_object, func, from_node, from_output, to_node);
	}
	package(godot) static GodotMethod!(bool, String, int, int, int) _GODOT_has_sequence_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_sequence_connection") = _GODOT_has_sequence_connection;
	bool has_sequence_connection(StringArg0)(in StringArg0 func, in int from_node, in int from_output, in int to_node) const
	{
		_GODOT_has_sequence_connection.bind("VisualScript", "has_sequence_connection");
		return ptrcall!(bool)(_GODOT_has_sequence_connection, _godot_object, func, from_node, from_output, to_node);
	}
	package(godot) static GodotMethod!(void, String, int, int, int, int) _GODOT_data_connect;
	package(godot) alias _GODOT_methodBindInfo(string name : "data_connect") = _GODOT_data_connect;
	void data_connect(StringArg0)(in StringArg0 func, in int from_node, in int from_port, in int to_node, in int to_port)
	{
		_GODOT_data_connect.bind("VisualScript", "data_connect");
		ptrcall!(void)(_GODOT_data_connect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	package(godot) static GodotMethod!(void, String, int, int, int, int) _GODOT_data_disconnect;
	package(godot) alias _GODOT_methodBindInfo(string name : "data_disconnect") = _GODOT_data_disconnect;
	void data_disconnect(StringArg0)(in StringArg0 func, in int from_node, in int from_port, in int to_node, in int to_port)
	{
		_GODOT_data_disconnect.bind("VisualScript", "data_disconnect");
		ptrcall!(void)(_GODOT_data_disconnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	package(godot) static GodotMethod!(bool, String, int, int, int, int) _GODOT_has_data_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_data_connection") = _GODOT_has_data_connection;
	bool has_data_connection(StringArg0)(in StringArg0 func, in int from_node, in int from_port, in int to_node, in int to_port) const
	{
		_GODOT_has_data_connection.bind("VisualScript", "has_data_connection");
		return ptrcall!(bool)(_GODOT_has_data_connection, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	package(godot) static GodotMethod!(void, String, Variant, bool) _GODOT_add_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_variable") = _GODOT_add_variable;
	void add_variable(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 default_value = Variant.nil, in bool _export = false)
	{
		_GODOT_add_variable.bind("VisualScript", "add_variable");
		ptrcall!(void)(_GODOT_add_variable, _godot_object, name, default_value, _export);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_variable") = _GODOT_has_variable;
	bool has_variable(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_variable.bind("VisualScript", "has_variable");
		return ptrcall!(bool)(_GODOT_has_variable, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_variable") = _GODOT_remove_variable;
	void remove_variable(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_variable.bind("VisualScript", "remove_variable");
		ptrcall!(void)(_GODOT_remove_variable, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_variable_default_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable_default_value") = _GODOT_set_variable_default_value;
	void set_variable_default_value(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_variable_default_value.bind("VisualScript", "set_variable_default_value");
		ptrcall!(void)(_GODOT_set_variable_default_value, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_variable_default_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable_default_value") = _GODOT_get_variable_default_value;
	Variant get_variable_default_value(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_variable_default_value.bind("VisualScript", "get_variable_default_value");
		return ptrcall!(Variant)(_GODOT_get_variable_default_value, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Dictionary) _GODOT_set_variable_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable_info") = _GODOT_set_variable_info;
	void set_variable_info(StringArg0)(in StringArg0 name, in Dictionary value)
	{
		_GODOT_set_variable_info.bind("VisualScript", "set_variable_info");
		ptrcall!(void)(_GODOT_set_variable_info, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Dictionary, String) _GODOT_get_variable_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable_info") = _GODOT_get_variable_info;
	Dictionary get_variable_info(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_variable_info.bind("VisualScript", "get_variable_info");
		return ptrcall!(Dictionary)(_GODOT_get_variable_info, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_set_variable_export;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable_export") = _GODOT_set_variable_export;
	void set_variable_export(StringArg0)(in StringArg0 name, in bool enable)
	{
		_GODOT_set_variable_export.bind("VisualScript", "set_variable_export");
		ptrcall!(void)(_GODOT_set_variable_export, _godot_object, name, enable);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_get_variable_export;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable_export") = _GODOT_get_variable_export;
	bool get_variable_export(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_variable_export.bind("VisualScript", "get_variable_export");
		return ptrcall!(bool)(_GODOT_get_variable_export, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_variable") = _GODOT_rename_variable;
	void rename_variable(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		_GODOT_rename_variable.bind("VisualScript", "rename_variable");
		ptrcall!(void)(_GODOT_rename_variable, _godot_object, name, new_name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_custom_signal") = _GODOT_add_custom_signal;
	void add_custom_signal(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_custom_signal.bind("VisualScript", "add_custom_signal");
		ptrcall!(void)(_GODOT_add_custom_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_custom_signal") = _GODOT_has_custom_signal;
	bool has_custom_signal(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_custom_signal.bind("VisualScript", "has_custom_signal");
		return ptrcall!(bool)(_GODOT_has_custom_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, int, String, int) _GODOT_custom_signal_add_argument;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_add_argument") = _GODOT_custom_signal_add_argument;
	void custom_signal_add_argument(StringArg0, StringArg2)(in StringArg0 name, in int type, in StringArg2 argname, in int index = -1)
	{
		_GODOT_custom_signal_add_argument.bind("VisualScript", "custom_signal_add_argument");
		ptrcall!(void)(_GODOT_custom_signal_add_argument, _godot_object, name, type, argname, index);
	}
	package(godot) static GodotMethod!(void, String, int, int) _GODOT_custom_signal_set_argument_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_set_argument_type") = _GODOT_custom_signal_set_argument_type;
	void custom_signal_set_argument_type(StringArg0)(in StringArg0 name, in int argidx, in int type)
	{
		_GODOT_custom_signal_set_argument_type.bind("VisualScript", "custom_signal_set_argument_type");
		ptrcall!(void)(_GODOT_custom_signal_set_argument_type, _godot_object, name, argidx, type);
	}
	package(godot) static GodotMethod!(Variant.Type, String, int) _GODOT_custom_signal_get_argument_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_get_argument_type") = _GODOT_custom_signal_get_argument_type;
	Variant.Type custom_signal_get_argument_type(StringArg0)(in StringArg0 name, in int argidx) const
	{
		_GODOT_custom_signal_get_argument_type.bind("VisualScript", "custom_signal_get_argument_type");
		return ptrcall!(Variant.Type)(_GODOT_custom_signal_get_argument_type, _godot_object, name, argidx);
	}
	package(godot) static GodotMethod!(void, String, int, String) _GODOT_custom_signal_set_argument_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_set_argument_name") = _GODOT_custom_signal_set_argument_name;
	void custom_signal_set_argument_name(StringArg0, StringArg2)(in StringArg0 name, in int argidx, in StringArg2 argname)
	{
		_GODOT_custom_signal_set_argument_name.bind("VisualScript", "custom_signal_set_argument_name");
		ptrcall!(void)(_GODOT_custom_signal_set_argument_name, _godot_object, name, argidx, argname);
	}
	package(godot) static GodotMethod!(String, String, int) _GODOT_custom_signal_get_argument_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_get_argument_name") = _GODOT_custom_signal_get_argument_name;
	String custom_signal_get_argument_name(StringArg0)(in StringArg0 name, in int argidx) const
	{
		_GODOT_custom_signal_get_argument_name.bind("VisualScript", "custom_signal_get_argument_name");
		return ptrcall!(String)(_GODOT_custom_signal_get_argument_name, _godot_object, name, argidx);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_custom_signal_remove_argument;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_remove_argument") = _GODOT_custom_signal_remove_argument;
	void custom_signal_remove_argument(StringArg0)(in StringArg0 name, in int argidx)
	{
		_GODOT_custom_signal_remove_argument.bind("VisualScript", "custom_signal_remove_argument");
		ptrcall!(void)(_GODOT_custom_signal_remove_argument, _godot_object, name, argidx);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_custom_signal_get_argument_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_get_argument_count") = _GODOT_custom_signal_get_argument_count;
	int custom_signal_get_argument_count(StringArg0)(in StringArg0 name) const
	{
		_GODOT_custom_signal_get_argument_count.bind("VisualScript", "custom_signal_get_argument_count");
		return ptrcall!(int)(_GODOT_custom_signal_get_argument_count, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, int, int) _GODOT_custom_signal_swap_argument;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_swap_argument") = _GODOT_custom_signal_swap_argument;
	void custom_signal_swap_argument(StringArg0)(in StringArg0 name, in int argidx, in int withidx)
	{
		_GODOT_custom_signal_swap_argument.bind("VisualScript", "custom_signal_swap_argument");
		ptrcall!(void)(_GODOT_custom_signal_swap_argument, _godot_object, name, argidx, withidx);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_custom_signal") = _GODOT_remove_custom_signal;
	void remove_custom_signal(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_custom_signal.bind("VisualScript", "remove_custom_signal");
		ptrcall!(void)(_GODOT_remove_custom_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_custom_signal") = _GODOT_rename_custom_signal;
	void rename_custom_signal(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		_GODOT_rename_custom_signal.bind("VisualScript", "rename_custom_signal");
		ptrcall!(void)(_GODOT_rename_custom_signal, _godot_object, name, new_name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_instance_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_base_type") = _GODOT_set_instance_base_type;
	void set_instance_base_type(StringArg0)(in StringArg0 type)
	{
		_GODOT_set_instance_base_type.bind("VisualScript", "set_instance_base_type");
		ptrcall!(void)(_GODOT_set_instance_base_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Dictionary _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
}
