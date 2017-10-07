module godot.regexmatch;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct RegExMatch
{
	static immutable string _GODOT_internal_name = "RegExMatch";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in RegExMatch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RegExMatch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RegExMatch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("RegExMatch");
		if(constructor is null) return typeof(this).init;
		return cast(RegExMatch)(constructor());
	}
	package(godot) static GodotMethod!(String) _GODOT_get_subject;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subject") = _GODOT_get_subject;
	String get_subject() const
	{
		_GODOT_get_subject.bind("RegExMatch", "get_subject");
		return ptrcall!(String)(_GODOT_get_subject, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_group_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_group_count") = _GODOT_get_group_count;
	int get_group_count() const
	{
		_GODOT_get_group_count.bind("RegExMatch", "get_group_count");
		return ptrcall!(int)(_GODOT_get_group_count, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_names;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_names") = _GODOT_get_names;
	Dictionary get_names() const
	{
		_GODOT_get_names.bind("RegExMatch", "get_names");
		return ptrcall!(Dictionary)(_GODOT_get_names, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_strings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_strings") = _GODOT_get_strings;
	Array get_strings() const
	{
		_GODOT_get_strings.bind("RegExMatch", "get_strings");
		return ptrcall!(Array)(_GODOT_get_strings, _godot_object);
	}
	package(godot) static GodotMethod!(String, Variant) _GODOT_get_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_string") = _GODOT_get_string;
	String get_string(VariantArg0)(in VariantArg0 name = 0) const
	{
		_GODOT_get_string.bind("RegExMatch", "get_string");
		return ptrcall!(String)(_GODOT_get_string, _godot_object, name);
	}
	package(godot) static GodotMethod!(int, Variant) _GODOT_get_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_start") = _GODOT_get_start;
	int get_start(VariantArg0)(in VariantArg0 name = 0) const
	{
		_GODOT_get_start.bind("RegExMatch", "get_start");
		return ptrcall!(int)(_GODOT_get_start, _godot_object, name);
	}
	package(godot) static GodotMethod!(int, Variant) _GODOT_get_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_end") = _GODOT_get_end;
	int get_end(VariantArg0)(in VariantArg0 name = 0) const
	{
		_GODOT_get_end.bind("RegExMatch", "get_end");
		return ptrcall!(int)(_GODOT_get_end, _godot_object, name);
	}
}
