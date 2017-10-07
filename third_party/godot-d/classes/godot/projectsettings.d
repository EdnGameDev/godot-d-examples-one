module godot.projectsettings;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
@GodotBaseClass struct ProjectSettingsSingleton
{
	static immutable string _GODOT_internal_name = "ProjectSettings";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ProjectSettings";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ProjectSettingsSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProjectSettingsSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProjectSettingsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ProjectSettings");
		if(constructor is null) return typeof(this).init;
		return cast(ProjectSettingsSingleton)(constructor());
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has;
	package(godot) alias _GODOT_methodBindInfo(string name : "has") = _GODOT_has;
	bool has(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has.bind("ProjectSettings", "has");
		return ptrcall!(bool)(_GODOT_has, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_set_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_order") = _GODOT_set_order;
	void set_order(StringArg0)(in StringArg0 name, in int position)
	{
		_GODOT_set_order.bind("ProjectSettings", "set_order");
		ptrcall!(void)(_GODOT_set_order, _godot_object, name, position);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_get_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_order") = _GODOT_get_order;
	int get_order(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_order.bind("ProjectSettings", "get_order");
		return ptrcall!(int)(_GODOT_get_order, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_initial_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_initial_value") = _GODOT_set_initial_value;
	void set_initial_value(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_initial_value.bind("ProjectSettings", "set_initial_value");
		ptrcall!(void)(_GODOT_set_initial_value, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_add_property_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_property_info") = _GODOT_add_property_info;
	void add_property_info(in Dictionary hint)
	{
		_GODOT_add_property_info.bind("ProjectSettings", "add_property_info");
		ptrcall!(void)(_GODOT_add_property_info, _godot_object, hint);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear(StringArg0)(in StringArg0 name)
	{
		_GODOT_clear.bind("ProjectSettings", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_localize_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "localize_path") = _GODOT_localize_path;
	String localize_path(StringArg0)(in StringArg0 path) const
	{
		_GODOT_localize_path.bind("ProjectSettings", "localize_path");
		return ptrcall!(String)(_GODOT_localize_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_globalize_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "globalize_path") = _GODOT_globalize_path;
	String globalize_path(StringArg0)(in StringArg0 path) const
	{
		_GODOT_globalize_path.bind("ProjectSettings", "globalize_path");
		return ptrcall!(String)(_GODOT_globalize_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_save;
	package(godot) alias _GODOT_methodBindInfo(string name : "save") = _GODOT_save;
	GodotError save()
	{
		_GODOT_save.bind("ProjectSettings", "save");
		return ptrcall!(GodotError)(_GODOT_save, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_singleton") = _GODOT_has_singleton;
	bool has_singleton(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_singleton.bind("ProjectSettings", "has_singleton");
		return ptrcall!(bool)(_GODOT_has_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(GodotObject, String) _GODOT_get_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_singleton") = _GODOT_get_singleton;
	GodotObject get_singleton(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_singleton.bind("ProjectSettings", "get_singleton");
		return ptrcall!(GodotObject)(_GODOT_get_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_load_resource_pack;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_resource_pack") = _GODOT_load_resource_pack;
	bool load_resource_pack(StringArg0)(in StringArg0 pack)
	{
		_GODOT_load_resource_pack.bind("ProjectSettings", "load_resource_pack");
		return ptrcall!(bool)(_GODOT_load_resource_pack, _godot_object, pack);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_property_can_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_can_revert") = _GODOT_property_can_revert;
	bool property_can_revert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_can_revert.bind("ProjectSettings", "property_can_revert");
		return ptrcall!(bool)(_GODOT_property_can_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_property_get_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_get_revert") = _GODOT_property_get_revert;
	Variant property_get_revert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_get_revert.bind("ProjectSettings", "property_get_revert");
		return ptrcall!(Variant)(_GODOT_property_get_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_save_custom;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_custom") = _GODOT_save_custom;
	GodotError save_custom(StringArg0)(in StringArg0 file)
	{
		_GODOT_save_custom.bind("ProjectSettings", "save_custom");
		return ptrcall!(GodotError)(_GODOT_save_custom, _godot_object, file);
	}
}
@property pragma(inline, true)
ProjectSettingsSingleton ProjectSettings()
{
	return ProjectSettingsSingleton._GODOT_singleton();
}
