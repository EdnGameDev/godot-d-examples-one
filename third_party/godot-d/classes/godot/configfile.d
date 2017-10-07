module godot.configfile;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct ConfigFile
{
	static immutable string _GODOT_internal_name = "ConfigFile";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConfigFile other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConfigFile opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConfigFile _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConfigFile");
		if(constructor is null) return typeof(this).init;
		return cast(ConfigFile)(constructor());
	}
	package(godot) static GodotMethod!(void, String, String, Variant) _GODOT_set_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_value") = _GODOT_set_value;
	void set_value(StringArg0, StringArg1, VariantArg2)(in StringArg0 section, in StringArg1 key, in VariantArg2 value)
	{
		_GODOT_set_value.bind("ConfigFile", "set_value");
		ptrcall!(void)(_GODOT_set_value, _godot_object, section, key, value);
	}
	package(godot) static GodotMethod!(Variant, String, String, Variant) _GODOT_get_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_value") = _GODOT_get_value;
	Variant get_value(StringArg0, StringArg1, VariantArg2)(in StringArg0 section, in StringArg1 key, in VariantArg2 _default = Variant.nil) const
	{
		_GODOT_get_value.bind("ConfigFile", "get_value");
		return ptrcall!(Variant)(_GODOT_get_value, _godot_object, section, key, _default);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_section;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_section") = _GODOT_has_section;
	bool has_section(StringArg0)(in StringArg0 section) const
	{
		_GODOT_has_section.bind("ConfigFile", "has_section");
		return ptrcall!(bool)(_GODOT_has_section, _godot_object, section);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_section_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_section_key") = _GODOT_has_section_key;
	bool has_section_key(StringArg0, StringArg1)(in StringArg0 section, in StringArg1 key) const
	{
		_GODOT_has_section_key.bind("ConfigFile", "has_section_key");
		return ptrcall!(bool)(_GODOT_has_section_key, _godot_object, section, key);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_sections;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sections") = _GODOT_get_sections;
	PoolStringArray get_sections() const
	{
		_GODOT_get_sections.bind("ConfigFile", "get_sections");
		return ptrcall!(PoolStringArray)(_GODOT_get_sections, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_section_keys;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_section_keys") = _GODOT_get_section_keys;
	PoolStringArray get_section_keys(StringArg0)(in StringArg0 section) const
	{
		_GODOT_get_section_keys.bind("ConfigFile", "get_section_keys");
		return ptrcall!(PoolStringArray)(_GODOT_get_section_keys, _godot_object, section);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase_section;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_section") = _GODOT_erase_section;
	void erase_section(StringArg0)(in StringArg0 section)
	{
		_GODOT_erase_section.bind("ConfigFile", "erase_section");
		ptrcall!(void)(_GODOT_erase_section, _godot_object, section);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	GodotError load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("ConfigFile", "load");
		return ptrcall!(GodotError)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_save;
	package(godot) alias _GODOT_methodBindInfo(string name : "save") = _GODOT_save;
	GodotError save(StringArg0)(in StringArg0 path)
	{
		_GODOT_save.bind("ConfigFile", "save");
		return ptrcall!(GodotError)(_GODOT_save, _godot_object, path);
	}
}
