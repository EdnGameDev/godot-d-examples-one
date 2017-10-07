module godot.json;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.jsonparseresult;
@GodotBaseClass struct JSONSingleton
{
	static immutable string _GODOT_internal_name = "_JSON";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_JSON";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in JSONSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JSONSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JSONSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_JSON");
		if(constructor is null) return typeof(this).init;
		return cast(JSONSingleton)(constructor());
	}
	package(godot) static GodotMethod!(String, Variant) _GODOT_print;
	package(godot) alias _GODOT_methodBindInfo(string name : "print") = _GODOT_print;
	String print(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_print.bind("_JSON", "print");
		return ptrcall!(String)(_GODOT_print, _godot_object, value);
	}
	package(godot) static GodotMethod!(JSONParseResult, String) _GODOT_parse;
	package(godot) alias _GODOT_methodBindInfo(string name : "parse") = _GODOT_parse;
	JSONParseResult parse(StringArg0)(in StringArg0 json)
	{
		_GODOT_parse.bind("_JSON", "parse");
		return ptrcall!(JSONParseResult)(_GODOT_parse, _godot_object, json);
	}
}
@property pragma(inline, true)
JSONSingleton JSON()
{
	return JSONSingleton._GODOT_singleton();
}
