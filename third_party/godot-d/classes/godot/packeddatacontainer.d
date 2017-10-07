module godot.packeddatacontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct PackedDataContainer
{
	static immutable string _GODOT_internal_name = "PackedDataContainer";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PackedDataContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PackedDataContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PackedDataContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PackedDataContainer");
		if(constructor is null) return typeof(this).init;
		return cast(PackedDataContainer)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in PoolByteArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	PoolByteArray _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolByteArray);
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
	package(godot) static GodotMethod!(GodotError, Variant) _GODOT_pack;
	package(godot) alias _GODOT_methodBindInfo(string name : "pack") = _GODOT_pack;
	GodotError pack(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_pack.bind("PackedDataContainer", "pack");
		return ptrcall!(GodotError)(_GODOT_pack, _godot_object, value);
	}
	package(godot) static GodotMethod!(int) _GODOT_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "size") = _GODOT_size;
	int size() const
	{
		_GODOT_size.bind("PackedDataContainer", "size");
		return ptrcall!(int)(_GODOT_size, _godot_object);
	}
}
