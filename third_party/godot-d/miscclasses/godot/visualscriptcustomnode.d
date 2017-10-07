module godot.visualscriptcustomnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptCustomNode
{
	static immutable string _GODOT_internal_name = "VisualScriptCustomNode";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptCustomNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptCustomNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptCustomNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptCustomNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptCustomNode)(constructor());
	}
	enum StartMode : int
	{
		START_MODE_CONTINUE_SEQUENCE = 1,
		START_MODE_BEGIN_SEQUENCE = 0,
		START_MODE_RESUME_YIELD = 2,
	}
	enum int START_MODE_RESUME_YIELD = 2;
	enum int STEP_EXIT_FUNCTION_BIT = 134217728;
	enum int START_MODE_CONTINUE_SEQUENCE = 1;
	enum int START_MODE_BEGIN_SEQUENCE = 0;
	enum int STEP_YIELD_BIT = 268435456;
	enum int STEP_PUSH_STACK_BIT = 16777216;
	enum int STEP_GO_BACK_BIT = 33554432;
	enum int STEP_NO_ADVANCE_BIT = 67108864;
	package(godot) static GodotMethod!(int) _GODOT__get_output_sequence_port_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_sequence_port_count") = _GODOT__get_output_sequence_port_count;
	int _get_output_sequence_port_count()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_output_sequence_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(bool) _GODOT__has_input_sequence_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "_has_input_sequence_port") = _GODOT__has_input_sequence_port;
	bool _has_input_sequence_port()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_has_input_sequence_port");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(String, int) _GODOT__get_output_sequence_port_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_sequence_port_text") = _GODOT__get_output_sequence_port_text;
	String _get_output_sequence_port_text(in int idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_sequence_port_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(int) _GODOT__get_input_value_port_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_input_value_port_count") = _GODOT__get_input_value_port_count;
	int _get_input_value_port_count()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_input_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(int) _GODOT__get_output_value_port_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_value_port_count") = _GODOT__get_output_value_port_count;
	int _get_output_value_port_count()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_output_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(int, int) _GODOT__get_input_value_port_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_input_value_port_type") = _GODOT__get_input_value_port_type;
	int _get_input_value_port_type(in int idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(String, int) _GODOT__get_input_value_port_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_input_value_port_name") = _GODOT__get_input_value_port_name;
	String _get_input_value_port_name(in int idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(int, int) _GODOT__get_output_value_port_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_value_port_type") = _GODOT__get_output_value_port_type;
	int _get_output_value_port_type(in int idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(String, int) _GODOT__get_output_value_port_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_value_port_name") = _GODOT__get_output_value_port_name;
	String _get_output_value_port_name(in int idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_caption;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_caption") = _GODOT__get_caption;
	String _get_caption()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_caption");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_text") = _GODOT__get_text;
	String _get_text()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_category;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_category") = _GODOT__get_category;
	String _get_category()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_category");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(int) _GODOT__get_working_memory_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_working_memory_size") = _GODOT__get_working_memory_size;
	int _get_working_memory_size()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_working_memory_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(Variant, Array, Array, int, Array) _GODOT__step;
	package(godot) alias _GODOT_methodBindInfo(string name : "_step") = _GODOT__step;
	Variant _step(in Array inputs, in Array outputs, in int start_mode, in Array working_mem)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(inputs);
		_GODOT_args.append(outputs);
		_GODOT_args.append(start_mode);
		_GODOT_args.append(working_mem);
		String _GODOT_method_name = String("_step");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__script_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_changed") = _GODOT__script_changed;
	void _script_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_script_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
