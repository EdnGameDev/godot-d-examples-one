module godot.gdnativelibrary;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct GDNativeLibrary
{
	static immutable string _GODOT_internal_name = "GDNativeLibrary";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GDNativeLibrary other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDNativeLibrary opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GDNativeLibrary _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDNativeLibrary");
		if(constructor is null) return typeof(this).init;
		return cast(GDNativeLibrary)(constructor());
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_set_library_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_library_path") = _GODOT_set_library_path;
	void set_library_path(StringArg0, StringArg1)(in StringArg0 platform, in StringArg1 path)
	{
		_GODOT_set_library_path.bind("GDNativeLibrary", "set_library_path");
		ptrcall!(void)(_GODOT_set_library_path, _godot_object, platform, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_library_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_library_path") = _GODOT_get_library_path;
	String get_library_path(StringArg0)(in StringArg0 platform) const
	{
		_GODOT_get_library_path.bind("GDNativeLibrary", "get_library_path");
		return ptrcall!(String)(_GODOT_get_library_path, _godot_object, platform);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_singleton_gdnative;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_singleton_gdnative") = _GODOT_is_singleton_gdnative;
	bool is_singleton_gdnative() const
	{
		_GODOT_is_singleton_gdnative.bind("GDNativeLibrary", "is_singleton_gdnative");
		return ptrcall!(bool)(_GODOT_is_singleton_gdnative, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_singleton_gdnative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_singleton_gdnative") = _GODOT_set_singleton_gdnative;
	void set_singleton_gdnative(in bool singleton)
	{
		_GODOT_set_singleton_gdnative.bind("GDNativeLibrary", "set_singleton_gdnative");
		ptrcall!(void)(_GODOT_set_singleton_gdnative, _godot_object, singleton);
	}
}
