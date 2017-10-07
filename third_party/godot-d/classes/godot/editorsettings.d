module godot.editorsettings;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct EditorSettings
{
	static immutable string _GODOT_internal_name = "EditorSettings";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorSettings other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSettings opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSettings _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorSettings");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSettings)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase") = _GODOT_erase;
	void erase(StringArg0)(in StringArg0 property)
	{
		_GODOT_erase.bind("EditorSettings", "erase");
		ptrcall!(void)(_GODOT_erase, _godot_object, property);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_settings_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_settings_path") = _GODOT_get_settings_path;
	String get_settings_path() const
	{
		_GODOT_get_settings_path.bind("EditorSettings", "get_settings_path");
		return ptrcall!(String)(_GODOT_get_settings_path, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_project_settings_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_project_settings_path") = _GODOT_get_project_settings_path;
	String get_project_settings_path() const
	{
		_GODOT_get_project_settings_path.bind("EditorSettings", "get_project_settings_path");
		return ptrcall!(String)(_GODOT_get_project_settings_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_add_property_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_property_info") = _GODOT_add_property_info;
	void add_property_info(in Dictionary info)
	{
		_GODOT_add_property_info.bind("EditorSettings", "add_property_info");
		ptrcall!(void)(_GODOT_add_property_info, _godot_object, info);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_set_favorite_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_favorite_dirs") = _GODOT_set_favorite_dirs;
	void set_favorite_dirs(in PoolStringArray dirs)
	{
		_GODOT_set_favorite_dirs.bind("EditorSettings", "set_favorite_dirs");
		ptrcall!(void)(_GODOT_set_favorite_dirs, _godot_object, dirs);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_favorite_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_favorite_dirs") = _GODOT_get_favorite_dirs;
	PoolStringArray get_favorite_dirs() const
	{
		_GODOT_get_favorite_dirs.bind("EditorSettings", "get_favorite_dirs");
		return ptrcall!(PoolStringArray)(_GODOT_get_favorite_dirs, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_set_recent_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_recent_dirs") = _GODOT_set_recent_dirs;
	void set_recent_dirs(in PoolStringArray dirs)
	{
		_GODOT_set_recent_dirs.bind("EditorSettings", "set_recent_dirs");
		ptrcall!(void)(_GODOT_set_recent_dirs, _godot_object, dirs);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_recent_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recent_dirs") = _GODOT_get_recent_dirs;
	PoolStringArray get_recent_dirs() const
	{
		_GODOT_get_recent_dirs.bind("EditorSettings", "get_recent_dirs");
		return ptrcall!(PoolStringArray)(_GODOT_get_recent_dirs, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_property_can_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_can_revert") = _GODOT_property_can_revert;
	bool property_can_revert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_can_revert.bind("EditorSettings", "property_can_revert");
		return ptrcall!(bool)(_GODOT_property_can_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_property_get_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_get_revert") = _GODOT_property_get_revert;
	Variant property_get_revert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_get_revert.bind("EditorSettings", "property_get_revert");
		return ptrcall!(Variant)(_GODOT_property_get_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_initial_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_initial_value") = _GODOT_set_initial_value;
	void set_initial_value(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_initial_value.bind("EditorSettings", "set_initial_value");
		ptrcall!(void)(_GODOT_set_initial_value, _godot_object, name, value);
	}
}
