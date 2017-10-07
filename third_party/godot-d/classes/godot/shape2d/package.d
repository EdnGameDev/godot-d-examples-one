module godot.shape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct Shape2D
{
	static immutable string _GODOT_internal_name = "Shape2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Shape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Shape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Shape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Shape2D");
		if(constructor is null) return typeof(this).init;
		return cast(Shape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_custom_solver_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_solver_bias") = _GODOT_set_custom_solver_bias;
	void set_custom_solver_bias(in float bias)
	{
		_GODOT_set_custom_solver_bias.bind("Shape2D", "set_custom_solver_bias");
		ptrcall!(void)(_GODOT_set_custom_solver_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_custom_solver_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_solver_bias") = _GODOT_get_custom_solver_bias;
	float get_custom_solver_bias() const
	{
		_GODOT_get_custom_solver_bias.bind("Shape2D", "get_custom_solver_bias");
		return ptrcall!(float)(_GODOT_get_custom_solver_bias, _godot_object);
	}
	package(godot) static GodotMethod!(bool, Transform2D, Shape2D, Transform2D) _GODOT_collide;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide") = _GODOT_collide;
	bool collide(in Transform2D local_xform, in Shape2D with_shape, in Transform2D shape_xform)
	{
		_GODOT_collide.bind("Shape2D", "collide");
		return ptrcall!(bool)(_GODOT_collide, _godot_object, local_xform, with_shape, shape_xform);
	}
	package(godot) static GodotMethod!(bool, Transform2D, Vector2, Shape2D, Transform2D, Vector2) _GODOT_collide_with_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_with_motion") = _GODOT_collide_with_motion;
	bool collide_with_motion(in Transform2D local_xform, in Vector2 local_motion, in Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		_GODOT_collide_with_motion.bind("Shape2D", "collide_with_motion");
		return ptrcall!(bool)(_GODOT_collide_with_motion, _godot_object, local_xform, local_motion, with_shape, shape_xform, shape_motion);
	}
	package(godot) static GodotMethod!(Variant, Transform2D, Shape2D, Transform2D) _GODOT_collide_and_get_contacts;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_and_get_contacts") = _GODOT_collide_and_get_contacts;
	Variant collide_and_get_contacts(in Transform2D local_xform, in Shape2D with_shape, in Transform2D shape_xform)
	{
		_GODOT_collide_and_get_contacts.bind("Shape2D", "collide_and_get_contacts");
		return ptrcall!(Variant)(_GODOT_collide_and_get_contacts, _godot_object, local_xform, with_shape, shape_xform);
	}
	package(godot) static GodotMethod!(Variant, Transform2D, Vector2, Shape2D, Transform2D, Vector2) _GODOT_collide_with_motion_and_get_contacts;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_with_motion_and_get_contacts") = _GODOT_collide_with_motion_and_get_contacts;
	Variant collide_with_motion_and_get_contacts(in Transform2D local_xform, in Vector2 local_motion, in Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		_GODOT_collide_with_motion_and_get_contacts.bind("Shape2D", "collide_with_motion_and_get_contacts");
		return ptrcall!(Variant)(_GODOT_collide_with_motion_and_get_contacts, _godot_object, local_xform, local_motion, with_shape, shape_xform, shape_motion);
	}
}
