module godot.packeddatacontainerref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct PackedDataContainerRef
{
	static immutable string _GODOT_internal_name = "PackedDataContainerRef";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PackedDataContainerRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PackedDataContainerRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PackedDataContainerRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PackedDataContainerRef");
		if(constructor is null) return typeof(this).init;
		return cast(PackedDataContainerRef)(constructor());
	}
	package(godot) static GodotMethod!(int) _GODOT_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "size") = _GODOT_size;
	int size() const
	{
		_GODOT_size.bind("PackedDataContainerRef", "size");
		return ptrcall!(int)(_GODOT_size, _godot_object);
	}
	package(godot) static GodotMethod!(Variant, Array) _GODOT__iter_init;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iter_init") = _GODOT__iter_init;
	Variant _iter_init(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_init");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, Variant) _GODOT__iter_get;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iter_get") = _GODOT__iter_get;
	Variant _iter_get(VariantArg0)(in VariantArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, Array) _GODOT__iter_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iter_next") = _GODOT__iter_next;
	Variant _iter_next(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_next");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_dictionary;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_dictionary") = _GODOT__is_dictionary;
	bool _is_dictionary() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_dictionary");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
}
