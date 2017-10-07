module godot.xmlparser;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct XMLParser
{
	static immutable string _GODOT_internal_name = "XMLParser";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in XMLParser other) const { return _godot_object.ptr is other._godot_object.ptr; }
	XMLParser opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static XMLParser _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("XMLParser");
		if(constructor is null) return typeof(this).init;
		return cast(XMLParser)(constructor());
	}
	enum NodeType : int
	{
		NODE_UNKNOWN = 6,
		NODE_ELEMENT = 1,
		NODE_COMMENT = 4,
		NODE_NONE = 0,
		NODE_ELEMENT_END = 2,
		NODE_TEXT = 3,
		NODE_CDATA = 5,
	}
	enum int NODE_UNKNOWN = 6;
	enum int NODE_ELEMENT = 1;
	enum int NODE_COMMENT = 4;
	enum int NODE_NONE = 0;
	enum int NODE_ELEMENT_END = 2;
	enum int NODE_TEXT = 3;
	enum int NODE_CDATA = 5;
	package(godot) static GodotMethod!(GodotError) _GODOT_read;
	package(godot) alias _GODOT_methodBindInfo(string name : "read") = _GODOT_read;
	GodotError read()
	{
		_GODOT_read.bind("XMLParser", "read");
		return ptrcall!(GodotError)(_GODOT_read, _godot_object);
	}
	package(godot) static GodotMethod!(XMLParser.NodeType) _GODOT_get_node_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_type") = _GODOT_get_node_type;
	XMLParser.NodeType get_node_type()
	{
		_GODOT_get_node_type.bind("XMLParser", "get_node_type");
		return ptrcall!(XMLParser.NodeType)(_GODOT_get_node_type, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_node_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_name") = _GODOT_get_node_name;
	String get_node_name() const
	{
		_GODOT_get_node_name.bind("XMLParser", "get_node_name");
		return ptrcall!(String)(_GODOT_get_node_name, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_node_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_data") = _GODOT_get_node_data;
	String get_node_data() const
	{
		_GODOT_get_node_data.bind("XMLParser", "get_node_data");
		return ptrcall!(String)(_GODOT_get_node_data, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_node_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_offset") = _GODOT_get_node_offset;
	int get_node_offset() const
	{
		_GODOT_get_node_offset.bind("XMLParser", "get_node_offset");
		return ptrcall!(int)(_GODOT_get_node_offset, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_attribute_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attribute_count") = _GODOT_get_attribute_count;
	int get_attribute_count() const
	{
		_GODOT_get_attribute_count.bind("XMLParser", "get_attribute_count");
		return ptrcall!(int)(_GODOT_get_attribute_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_attribute_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attribute_name") = _GODOT_get_attribute_name;
	String get_attribute_name(in int idx) const
	{
		_GODOT_get_attribute_name.bind("XMLParser", "get_attribute_name");
		return ptrcall!(String)(_GODOT_get_attribute_name, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_attribute_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attribute_value") = _GODOT_get_attribute_value;
	String get_attribute_value(in int idx) const
	{
		_GODOT_get_attribute_value.bind("XMLParser", "get_attribute_value");
		return ptrcall!(String)(_GODOT_get_attribute_value, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_attribute;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_attribute") = _GODOT_has_attribute;
	bool has_attribute(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_attribute.bind("XMLParser", "has_attribute");
		return ptrcall!(bool)(_GODOT_has_attribute, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_named_attribute_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_named_attribute_value") = _GODOT_get_named_attribute_value;
	String get_named_attribute_value(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_named_attribute_value.bind("XMLParser", "get_named_attribute_value");
		return ptrcall!(String)(_GODOT_get_named_attribute_value, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_named_attribute_value_safe;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_named_attribute_value_safe") = _GODOT_get_named_attribute_value_safe;
	String get_named_attribute_value_safe(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_named_attribute_value_safe.bind("XMLParser", "get_named_attribute_value_safe");
		return ptrcall!(String)(_GODOT_get_named_attribute_value_safe, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_empty;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_empty") = _GODOT_is_empty;
	bool is_empty() const
	{
		_GODOT_is_empty.bind("XMLParser", "is_empty");
		return ptrcall!(bool)(_GODOT_is_empty, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_current_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_line") = _GODOT_get_current_line;
	int get_current_line() const
	{
		_GODOT_get_current_line.bind("XMLParser", "get_current_line");
		return ptrcall!(int)(_GODOT_get_current_line, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_skip_section;
	package(godot) alias _GODOT_methodBindInfo(string name : "skip_section") = _GODOT_skip_section;
	void skip_section()
	{
		_GODOT_skip_section.bind("XMLParser", "skip_section");
		ptrcall!(void)(_GODOT_skip_section, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, int) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	GodotError seek(in int position)
	{
		_GODOT_seek.bind("XMLParser", "seek");
		return ptrcall!(GodotError)(_GODOT_seek, _godot_object, position);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "open") = _GODOT_open;
	GodotError open(StringArg0)(in StringArg0 file)
	{
		_GODOT_open.bind("XMLParser", "open");
		return ptrcall!(GodotError)(_GODOT_open, _godot_object, file);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_open_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_buffer") = _GODOT_open_buffer;
	GodotError open_buffer(in PoolByteArray buffer)
	{
		_GODOT_open_buffer.bind("XMLParser", "open_buffer");
		return ptrcall!(GodotError)(_GODOT_open_buffer, _godot_object, buffer);
	}
}
