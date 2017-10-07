module godot.regex;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.regexmatch;
@GodotBaseClass struct RegEx
{
	static immutable string _GODOT_internal_name = "RegEx";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RegEx other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RegEx opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RegEx _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RegEx");
		if(constructor is null) return typeof(this).init;
		return cast(RegEx)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("RegEx", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_compile;
	package(godot) alias _GODOT_methodBindInfo(string name : "compile") = _GODOT_compile;
	GodotError compile(StringArg0)(in StringArg0 pattern)
	{
		_GODOT_compile.bind("RegEx", "compile");
		return ptrcall!(GodotError)(_GODOT_compile, _godot_object, pattern);
	}
	package(godot) static GodotMethod!(RegExMatch, String, int, int) _GODOT_search;
	package(godot) alias _GODOT_methodBindInfo(string name : "search") = _GODOT_search;
	RegExMatch search(StringArg0)(in StringArg0 subject, in int offset = 0, in int end = -1) const
	{
		_GODOT_search.bind("RegEx", "search");
		return ptrcall!(RegExMatch)(_GODOT_search, _godot_object, subject, offset, end);
	}
	package(godot) static GodotMethod!(String, String, String, bool, int, int) _GODOT_sub;
	package(godot) alias _GODOT_methodBindInfo(string name : "sub") = _GODOT_sub;
	String sub(StringArg0, StringArg1)(in StringArg0 subject, in StringArg1 replacement, in bool all = false, in int offset = 0, in int end = -1) const
	{
		_GODOT_sub.bind("RegEx", "sub");
		return ptrcall!(String)(_GODOT_sub, _godot_object, subject, replacement, all, offset, end);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_valid") = _GODOT_is_valid;
	bool is_valid() const
	{
		_GODOT_is_valid.bind("RegEx", "is_valid");
		return ptrcall!(bool)(_GODOT_is_valid, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_pattern;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pattern") = _GODOT_get_pattern;
	String get_pattern() const
	{
		_GODOT_get_pattern.bind("RegEx", "get_pattern");
		return ptrcall!(String)(_GODOT_get_pattern, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_group_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_group_count") = _GODOT_get_group_count;
	int get_group_count() const
	{
		_GODOT_get_group_count.bind("RegEx", "get_group_count");
		return ptrcall!(int)(_GODOT_get_group_count, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_names;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_names") = _GODOT_get_names;
	Array get_names() const
	{
		_GODOT_get_names.bind("RegEx", "get_names");
		return ptrcall!(Array)(_GODOT_get_names, _godot_object);
	}
}
