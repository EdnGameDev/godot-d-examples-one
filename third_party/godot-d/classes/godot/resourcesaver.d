module godot.resourcesaver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct ResourceSaverSingleton
{
	static immutable string _GODOT_internal_name = "_ResourceSaver";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_ResourceSaver";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ResourceSaverSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceSaverSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceSaverSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_ResourceSaver");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceSaverSingleton)(constructor());
	}
	enum SaverFlags : int
	{
		FLAG_CHANGE_PATH = 4,
		FLAG_RELATIVE_PATHS = 1,
		FLAG_BUNDLE_RESOURCES = 2,
		FLAG_OMIT_EDITOR_PROPERTIES = 8,
		FLAG_COMPRESS = 32,
		FLAG_SAVE_BIG_ENDIAN = 16,
	}
	enum int FLAG_CHANGE_PATH = 4;
	enum int FLAG_RELATIVE_PATHS = 1;
	enum int FLAG_BUNDLE_RESOURCES = 2;
	enum int FLAG_OMIT_EDITOR_PROPERTIES = 8;
	enum int FLAG_COMPRESS = 32;
	enum int FLAG_SAVE_BIG_ENDIAN = 16;
	package(godot) static GodotMethod!(GodotError, String, Resource, int) _GODOT_save;
	package(godot) alias _GODOT_methodBindInfo(string name : "save") = _GODOT_save;
	GodotError save(StringArg0)(in StringArg0 path, in Resource resource, in int flags = 0)
	{
		_GODOT_save.bind("_ResourceSaver", "save");
		return ptrcall!(GodotError)(_GODOT_save, _godot_object, path, resource, flags);
	}
	package(godot) static GodotMethod!(PoolStringArray, Resource) _GODOT_get_recognized_extensions;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recognized_extensions") = _GODOT_get_recognized_extensions;
	PoolStringArray get_recognized_extensions(in Resource type)
	{
		_GODOT_get_recognized_extensions.bind("_ResourceSaver", "get_recognized_extensions");
		return ptrcall!(PoolStringArray)(_GODOT_get_recognized_extensions, _godot_object, type);
	}
}
@property pragma(inline, true)
ResourceSaverSingleton ResourceSaver()
{
	return ResourceSaverSingleton._GODOT_singleton();
}
