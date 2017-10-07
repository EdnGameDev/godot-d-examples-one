module godot.bitmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.image;
@GodotBaseClass struct BitMap
{
	static immutable string _GODOT_internal_name = "BitMap";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BitMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BitMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BitMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BitMap");
		if(constructor is null) return typeof(this).init;
		return cast(BitMap)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "create") = _GODOT_create;
	void create(in Vector2 size)
	{
		_GODOT_create.bind("BitMap", "create");
		ptrcall!(void)(_GODOT_create, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_create_from_image_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_image_alpha") = _GODOT_create_from_image_alpha;
	void create_from_image_alpha(in Image image)
	{
		_GODOT_create_from_image_alpha.bind("BitMap", "create_from_image_alpha");
		ptrcall!(void)(_GODOT_create_from_image_alpha, _godot_object, image);
	}
	package(godot) static GodotMethod!(void, Vector2, bool) _GODOT_set_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bit") = _GODOT_set_bit;
	void set_bit(in Vector2 position, in bool bit)
	{
		_GODOT_set_bit.bind("BitMap", "set_bit");
		ptrcall!(void)(_GODOT_set_bit, _godot_object, position, bit);
	}
	package(godot) static GodotMethod!(bool, Vector2) _GODOT_get_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bit") = _GODOT_get_bit;
	bool get_bit(in Vector2 position) const
	{
		_GODOT_get_bit.bind("BitMap", "get_bit");
		return ptrcall!(bool)(_GODOT_get_bit, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Rect2, bool) _GODOT_set_bit_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bit_rect") = _GODOT_set_bit_rect;
	void set_bit_rect(in Rect2 p_rect, in bool bit)
	{
		_GODOT_set_bit_rect.bind("BitMap", "set_bit_rect");
		ptrcall!(void)(_GODOT_set_bit_rect, _godot_object, p_rect, bit);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_true_bit_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_true_bit_count") = _GODOT_get_true_bit_count;
	int get_true_bit_count() const
	{
		_GODOT_get_true_bit_count.bind("BitMap", "get_true_bit_count");
		return ptrcall!(int)(_GODOT_get_true_bit_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("BitMap", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Dictionary _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
}
