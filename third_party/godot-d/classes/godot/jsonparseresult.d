module godot.jsonparseresult;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct JSONParseResult
{
	static immutable string _GODOT_internal_name = "JSONParseResult";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in JSONParseResult other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JSONParseResult opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JSONParseResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("JSONParseResult");
		if(constructor is null) return typeof(this).init;
		return cast(JSONParseResult)(constructor());
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_get_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error") = _GODOT_get_error;
	GodotError get_error() const
	{
		_GODOT_get_error.bind("JSONParseResult", "get_error");
		return ptrcall!(GodotError)(_GODOT_get_error, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_error_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error_string") = _GODOT_get_error_string;
	String get_error_string() const
	{
		_GODOT_get_error_string.bind("JSONParseResult", "get_error_string");
		return ptrcall!(String)(_GODOT_get_error_string, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_error_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error_line") = _GODOT_get_error_line;
	int get_error_line() const
	{
		_GODOT_get_error_line.bind("JSONParseResult", "get_error_line");
		return ptrcall!(int)(_GODOT_get_error_line, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_result;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result") = _GODOT_get_result;
	Variant get_result() const
	{
		_GODOT_get_result.bind("JSONParseResult", "get_result");
		return ptrcall!(Variant)(_GODOT_get_result, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_error") = _GODOT_set_error;
	void set_error(in int error)
	{
		_GODOT_set_error.bind("JSONParseResult", "set_error");
		ptrcall!(void)(_GODOT_set_error, _godot_object, error);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_error_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_error_string") = _GODOT_set_error_string;
	void set_error_string(StringArg0)(in StringArg0 error_string)
	{
		_GODOT_set_error_string.bind("JSONParseResult", "set_error_string");
		ptrcall!(void)(_GODOT_set_error_string, _godot_object, error_string);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_error_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_error_line") = _GODOT_set_error_line;
	void set_error_line(in int error_line)
	{
		_GODOT_set_error_line.bind("JSONParseResult", "set_error_line");
		ptrcall!(void)(_GODOT_set_error_line, _godot_object, error_line);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_set_result;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_result") = _GODOT_set_result;
	void set_result(VariantArg0)(in VariantArg0 result)
	{
		_GODOT_set_result.bind("JSONParseResult", "set_result");
		ptrcall!(void)(_GODOT_set_result, _godot_object, result);
	}
}
