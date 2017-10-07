module godot.visualinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.spatial;
@GodotBaseClass struct VisualInstance
{
	static immutable string _GODOT_internal_name = "VisualInstance";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualInstance");
		if(constructor is null) return typeof(this).init;
		return cast(VisualInstance)(constructor());
	}
	package(godot) static GodotMethod!(RID) _GODOT__get_visual_instance_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_visual_instance_rid") = _GODOT__get_visual_instance_rid;
	RID _get_visual_instance_rid() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_visual_instance_rid");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RID);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_set_base;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base") = _GODOT_set_base;
	void set_base(in RID base)
	{
		_GODOT_set_base.bind("VisualInstance", "set_base");
		ptrcall!(void)(_GODOT_set_base, _godot_object, base);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_layer_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer_mask") = _GODOT_set_layer_mask;
	void set_layer_mask(in int mask)
	{
		_GODOT_set_layer_mask.bind("VisualInstance", "set_layer_mask");
		ptrcall!(void)(_GODOT_set_layer_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_layer_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer_mask") = _GODOT_get_layer_mask;
	int get_layer_mask() const
	{
		_GODOT_get_layer_mask.bind("VisualInstance", "get_layer_mask");
		return ptrcall!(int)(_GODOT_get_layer_mask, _godot_object);
	}
	package(godot) static GodotMethod!(Rect3) _GODOT_get_transformed_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transformed_aabb") = _GODOT_get_transformed_aabb;
	Rect3 get_transformed_aabb() const
	{
		_GODOT_get_transformed_aabb.bind("VisualInstance", "get_transformed_aabb");
		return ptrcall!(Rect3)(_GODOT_get_transformed_aabb, _godot_object);
	}
	package(godot) static GodotMethod!(Rect3) _GODOT_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aabb") = _GODOT_get_aabb;
	Rect3 get_aabb() const
	{
		_GODOT_get_aabb.bind("VisualInstance", "get_aabb");
		return ptrcall!(Rect3)(_GODOT_get_aabb, _godot_object);
	}
}
