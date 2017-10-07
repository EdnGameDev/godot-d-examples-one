module godot.gdnative;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.gdnativelibrary;
@GodotBaseClass struct GDNative
{
	static immutable string _GODOT_internal_name = "GDNative";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GDNative other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDNative opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GDNative _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDNative");
		if(constructor is null) return typeof(this).init;
		return cast(GDNative)(constructor());
	}
	package(godot) static GodotMethod!(void, GDNativeLibrary) _GODOT_set_library;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_library") = _GODOT_set_library;
	void set_library(in GDNativeLibrary library)
	{
		_GODOT_set_library.bind("GDNative", "set_library");
		ptrcall!(void)(_GODOT_set_library, _godot_object, library);
	}
	package(godot) static GodotMethod!(GDNativeLibrary) _GODOT_get_library;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_library") = _GODOT_get_library;
	GDNativeLibrary get_library()
	{
		_GODOT_get_library.bind("GDNative", "get_library");
		return ptrcall!(GDNativeLibrary)(_GODOT_get_library, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_initialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "initialize") = _GODOT_initialize;
	bool initialize()
	{
		_GODOT_initialize.bind("GDNative", "initialize");
		return ptrcall!(bool)(_GODOT_initialize, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_terminate;
	package(godot) alias _GODOT_methodBindInfo(string name : "terminate") = _GODOT_terminate;
	bool terminate()
	{
		_GODOT_terminate.bind("GDNative", "terminate");
		return ptrcall!(bool)(_GODOT_terminate, _godot_object);
	}
	package(godot) static GodotMethod!(Variant, String, String, Array) _GODOT_call_native;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_native") = _GODOT_call_native;
	Variant call_native(StringArg0, StringArg1)(in StringArg0 procedure_name, in StringArg1 arguments, in Array arg2)
	{
		_GODOT_call_native.bind("GDNative", "call_native");
		return ptrcall!(Variant)(_GODOT_call_native, _godot_object, procedure_name, arguments, arg2);
	}
}
