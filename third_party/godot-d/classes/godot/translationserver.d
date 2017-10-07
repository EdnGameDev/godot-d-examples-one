module godot.translationserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.translation;
@GodotBaseClass struct TranslationServerSingleton
{
	static immutable string _GODOT_internal_name = "TranslationServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "TranslationServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TranslationServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TranslationServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TranslationServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TranslationServer");
		if(constructor is null) return typeof(this).init;
		return cast(TranslationServerSingleton)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_locale") = _GODOT_set_locale;
	void set_locale(StringArg0)(in StringArg0 locale)
	{
		_GODOT_set_locale.bind("TranslationServer", "set_locale");
		ptrcall!(void)(_GODOT_set_locale, _godot_object, locale);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_locale") = _GODOT_get_locale;
	String get_locale() const
	{
		_GODOT_get_locale.bind("TranslationServer", "get_locale");
		return ptrcall!(String)(_GODOT_get_locale, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate") = _GODOT_translate;
	String translate(StringArg0)(in StringArg0 message) const
	{
		_GODOT_translate.bind("TranslationServer", "translate");
		return ptrcall!(String)(_GODOT_translate, _godot_object, message);
	}
	package(godot) static GodotMethod!(void, Translation) _GODOT_add_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_translation") = _GODOT_add_translation;
	void add_translation(in Translation translation)
	{
		_GODOT_add_translation.bind("TranslationServer", "add_translation");
		ptrcall!(void)(_GODOT_add_translation, _godot_object, translation);
	}
	package(godot) static GodotMethod!(void, Translation) _GODOT_remove_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_translation") = _GODOT_remove_translation;
	void remove_translation(in Translation translation)
	{
		_GODOT_remove_translation.bind("TranslationServer", "remove_translation");
		ptrcall!(void)(_GODOT_remove_translation, _godot_object, translation);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("TranslationServer", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
@property pragma(inline, true)
TranslationServerSingleton TranslationServer()
{
	return TranslationServerSingleton._GODOT_singleton();
}
