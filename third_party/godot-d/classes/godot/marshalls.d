module godot.marshalls;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct MarshallsSingleton
{
	static immutable string _GODOT_internal_name = "_Marshalls";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_Marshalls";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MarshallsSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MarshallsSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MarshallsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Marshalls");
		if(constructor is null) return typeof(this).init;
		return cast(MarshallsSingleton)(constructor());
	}
	package(godot) static GodotMethod!(String, Variant) _GODOT_variant_to_base64;
	package(godot) alias _GODOT_methodBindInfo(string name : "variant_to_base64") = _GODOT_variant_to_base64;
	String variant_to_base64(VariantArg0)(in VariantArg0 variant)
	{
		_GODOT_variant_to_base64.bind("_Marshalls", "variant_to_base64");
		return ptrcall!(String)(_GODOT_variant_to_base64, _godot_object, variant);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_base64_to_variant;
	package(godot) alias _GODOT_methodBindInfo(string name : "base64_to_variant") = _GODOT_base64_to_variant;
	Variant base64_to_variant(StringArg0)(in StringArg0 base64_str)
	{
		_GODOT_base64_to_variant.bind("_Marshalls", "base64_to_variant");
		return ptrcall!(Variant)(_GODOT_base64_to_variant, _godot_object, base64_str);
	}
	package(godot) static GodotMethod!(String, PoolByteArray) _GODOT_raw_to_base64;
	package(godot) alias _GODOT_methodBindInfo(string name : "raw_to_base64") = _GODOT_raw_to_base64;
	String raw_to_base64(in PoolByteArray array)
	{
		_GODOT_raw_to_base64.bind("_Marshalls", "raw_to_base64");
		return ptrcall!(String)(_GODOT_raw_to_base64, _godot_object, array);
	}
	package(godot) static GodotMethod!(PoolByteArray, String) _GODOT_base64_to_raw;
	package(godot) alias _GODOT_methodBindInfo(string name : "base64_to_raw") = _GODOT_base64_to_raw;
	PoolByteArray base64_to_raw(StringArg0)(in StringArg0 base64_str)
	{
		_GODOT_base64_to_raw.bind("_Marshalls", "base64_to_raw");
		return ptrcall!(PoolByteArray)(_GODOT_base64_to_raw, _godot_object, base64_str);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_utf8_to_base64;
	package(godot) alias _GODOT_methodBindInfo(string name : "utf8_to_base64") = _GODOT_utf8_to_base64;
	String utf8_to_base64(StringArg0)(in StringArg0 utf8_str)
	{
		_GODOT_utf8_to_base64.bind("_Marshalls", "utf8_to_base64");
		return ptrcall!(String)(_GODOT_utf8_to_base64, _godot_object, utf8_str);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_base64_to_utf8;
	package(godot) alias _GODOT_methodBindInfo(string name : "base64_to_utf8") = _GODOT_base64_to_utf8;
	String base64_to_utf8(StringArg0)(in StringArg0 base64_str)
	{
		_GODOT_base64_to_utf8.bind("_Marshalls", "base64_to_utf8");
		return ptrcall!(String)(_GODOT_base64_to_utf8, _godot_object, base64_str);
	}
}
@property pragma(inline, true)
MarshallsSingleton Marshalls()
{
	return MarshallsSingleton._GODOT_singleton();
}
