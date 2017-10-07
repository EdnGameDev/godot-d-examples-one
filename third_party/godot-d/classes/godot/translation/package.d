module godot.translation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Translation
{
	static immutable string _GODOT_internal_name = "Translation";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Translation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Translation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Translation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Translation");
		if(constructor is null) return typeof(this).init;
		return cast(Translation)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_locale") = _GODOT_set_locale;
	void set_locale(StringArg0)(in StringArg0 locale)
	{
		_GODOT_set_locale.bind("Translation", "set_locale");
		ptrcall!(void)(_GODOT_set_locale, _godot_object, locale);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_locale") = _GODOT_get_locale;
	String get_locale() const
	{
		_GODOT_get_locale.bind("Translation", "get_locale");
		return ptrcall!(String)(_GODOT_get_locale, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_add_message;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_message") = _GODOT_add_message;
	void add_message(StringArg0, StringArg1)(in StringArg0 src_message, in StringArg1 xlated_message)
	{
		_GODOT_add_message.bind("Translation", "add_message");
		ptrcall!(void)(_GODOT_add_message, _godot_object, src_message, xlated_message);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_message;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_message") = _GODOT_get_message;
	String get_message(StringArg0)(in StringArg0 src_message) const
	{
		_GODOT_get_message.bind("Translation", "get_message");
		return ptrcall!(String)(_GODOT_get_message, _godot_object, src_message);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase_message;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_message") = _GODOT_erase_message;
	void erase_message(StringArg0)(in StringArg0 src_message)
	{
		_GODOT_erase_message.bind("Translation", "erase_message");
		ptrcall!(void)(_GODOT_erase_message, _godot_object, src_message);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_message_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_message_list") = _GODOT_get_message_list;
	PoolStringArray get_message_list() const
	{
		_GODOT_get_message_list.bind("Translation", "get_message_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_message_list, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_message_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_message_count") = _GODOT_get_message_count;
	int get_message_count() const
	{
		_GODOT_get_message_count.bind("Translation", "get_message_count");
		return ptrcall!(int)(_GODOT_get_message_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT__set_messages;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_messages") = _GODOT__set_messages;
	void _set_messages(in PoolStringArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_messages");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT__get_messages;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_messages") = _GODOT__get_messages;
	PoolStringArray _get_messages() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_messages");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolStringArray);
	}
}
