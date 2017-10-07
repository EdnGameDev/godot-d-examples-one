module godot.physicsbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.collisionobject;
@GodotBaseClass struct PhysicsBody
{
	static immutable string _GODOT_internal_name = "PhysicsBody";
public:
	union { godot_object _godot_object; CollisionObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PhysicsBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsBody");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsBody)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	void set_collision_layer(in int layer)
	{
		_GODOT_set_collision_layer.bind("PhysicsBody", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	int get_collision_layer() const
	{
		_GODOT_get_collision_layer.bind("PhysicsBody", "get_collision_layer");
		return ptrcall!(int)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	void set_collision_mask(in int mask)
	{
		_GODOT_set_collision_mask.bind("PhysicsBody", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	int get_collision_mask() const
	{
		_GODOT_get_collision_mask.bind("PhysicsBody", "get_collision_mask");
		return ptrcall!(int)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	void set_collision_mask_bit(in int bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("PhysicsBody", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	bool get_collision_mask_bit(in int bit) const
	{
		_GODOT_get_collision_mask_bit.bind("PhysicsBody", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	void set_collision_layer_bit(in int bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("PhysicsBody", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	bool get_collision_layer_bit(in int bit) const
	{
		_GODOT_get_collision_layer_bit.bind("PhysicsBody", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__set_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_layers") = _GODOT__set_layers;
	void _set_layers(in int mask)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(mask);
		String _GODOT_method_name = String("_set_layers");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(int) _GODOT__get_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_layers") = _GODOT__get_layers;
	int _get_layers() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_layers");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_collision_exception_with;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_collision_exception_with") = _GODOT_add_collision_exception_with;
	void add_collision_exception_with(in GodotObject _body)
	{
		_GODOT_add_collision_exception_with.bind("PhysicsBody", "add_collision_exception_with");
		ptrcall!(void)(_GODOT_add_collision_exception_with, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_collision_exception_with;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_collision_exception_with") = _GODOT_remove_collision_exception_with;
	void remove_collision_exception_with(in GodotObject _body)
	{
		_GODOT_remove_collision_exception_with.bind("PhysicsBody", "remove_collision_exception_with");
		ptrcall!(void)(_GODOT_remove_collision_exception_with, _godot_object, _body);
	}
}
