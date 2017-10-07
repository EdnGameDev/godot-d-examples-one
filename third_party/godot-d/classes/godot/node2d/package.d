module godot.node2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.canvasitem;
@GodotBaseClass struct Node2D
{
	static immutable string _GODOT_internal_name = "Node2D";
public:
	union { godot_object _godot_object; CanvasItem base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Node2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Node2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Node2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Node2D");
		if(constructor is null) return typeof(this).init;
		return cast(Node2D)(constructor());
	}
	package(godot) static GodotMethod!(float) _GODOT__get_rotd;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_rotd") = _GODOT__get_rotd;
	float _get_rotd() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotd");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_rotd;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_rotd") = _GODOT__set_rotd;
	void _set_rotd(in float degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_set_rotd");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	void set_position(in Vector2 position)
	{
		_GODOT_set_position.bind("Node2D", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	void set_rotation(in float radians)
	{
		_GODOT_set_rotation.bind("Node2D", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rotation_in_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_in_degrees") = _GODOT_set_rotation_in_degrees;
	void set_rotation_in_degrees(in float degrees)
	{
		_GODOT_set_rotation_in_degrees.bind("Node2D", "set_rotation_in_degrees");
		ptrcall!(void)(_GODOT_set_rotation_in_degrees, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	void set_scale(in Vector2 scale)
	{
		_GODOT_set_scale.bind("Node2D", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector2 get_position() const
	{
		_GODOT_get_position.bind("Node2D", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	float get_rotation() const
	{
		_GODOT_get_rotation.bind("Node2D", "get_rotation");
		return ptrcall!(float)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rotation_in_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_in_degrees") = _GODOT_get_rotation_in_degrees;
	float get_rotation_in_degrees() const
	{
		_GODOT_get_rotation_in_degrees.bind("Node2D", "get_rotation_in_degrees");
		return ptrcall!(float)(_GODOT_get_rotation_in_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	Vector2 get_scale() const
	{
		_GODOT_get_scale.bind("Node2D", "get_scale");
		return ptrcall!(Vector2)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate") = _GODOT_rotate;
	void rotate(in float radians)
	{
		_GODOT_rotate.bind("Node2D", "rotate");
		ptrcall!(void)(_GODOT_rotate, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, float, bool) _GODOT_move_local_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_local_x") = _GODOT_move_local_x;
	void move_local_x(in float delta, in bool scaled = false)
	{
		_GODOT_move_local_x.bind("Node2D", "move_local_x");
		ptrcall!(void)(_GODOT_move_local_x, _godot_object, delta, scaled);
	}
	package(godot) static GodotMethod!(void, float, bool) _GODOT_move_local_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_local_y") = _GODOT_move_local_y;
	void move_local_y(in float delta, in bool scaled = false)
	{
		_GODOT_move_local_y.bind("Node2D", "move_local_y");
		ptrcall!(void)(_GODOT_move_local_y, _godot_object, delta, scaled);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate") = _GODOT_translate;
	void translate(in Vector2 offset)
	{
		_GODOT_translate.bind("Node2D", "translate");
		ptrcall!(void)(_GODOT_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_global_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_translate") = _GODOT_global_translate;
	void global_translate(in Vector2 offset)
	{
		_GODOT_global_translate.bind("Node2D", "global_translate");
		ptrcall!(void)(_GODOT_global_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_apply_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_scale") = _GODOT_apply_scale;
	void apply_scale(in Vector2 ratio)
	{
		_GODOT_apply_scale.bind("Node2D", "apply_scale");
		ptrcall!(void)(_GODOT_apply_scale, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_position") = _GODOT_set_global_position;
	void set_global_position(in Vector2 position)
	{
		_GODOT_set_global_position.bind("Node2D", "set_global_position");
		ptrcall!(void)(_GODOT_set_global_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_position") = _GODOT_get_global_position;
	Vector2 get_global_position() const
	{
		_GODOT_get_global_position.bind("Node2D", "get_global_position");
		return ptrcall!(Vector2)(_GODOT_get_global_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_global_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_rotation") = _GODOT_set_global_rotation;
	void set_global_rotation(in float radians)
	{
		_GODOT_set_global_rotation.bind("Node2D", "set_global_rotation");
		ptrcall!(void)(_GODOT_set_global_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_global_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_rotation") = _GODOT_get_global_rotation;
	float get_global_rotation() const
	{
		_GODOT_get_global_rotation.bind("Node2D", "get_global_rotation");
		return ptrcall!(float)(_GODOT_get_global_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_global_rotation_in_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_rotation_in_degrees") = _GODOT_set_global_rotation_in_degrees;
	void set_global_rotation_in_degrees(in float degrees)
	{
		_GODOT_set_global_rotation_in_degrees.bind("Node2D", "set_global_rotation_in_degrees");
		ptrcall!(void)(_GODOT_set_global_rotation_in_degrees, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_global_rotation_in_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_rotation_in_degrees") = _GODOT_get_global_rotation_in_degrees;
	float get_global_rotation_in_degrees() const
	{
		_GODOT_get_global_rotation_in_degrees.bind("Node2D", "get_global_rotation_in_degrees");
		return ptrcall!(float)(_GODOT_get_global_rotation_in_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_scale") = _GODOT_set_global_scale;
	void set_global_scale(in Vector2 scale)
	{
		_GODOT_set_global_scale.bind("Node2D", "set_global_scale");
		ptrcall!(void)(_GODOT_set_global_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_scale") = _GODOT_get_global_scale;
	Vector2 get_global_scale() const
	{
		_GODOT_get_global_scale.bind("Node2D", "get_global_scale");
		return ptrcall!(Vector2)(_GODOT_get_global_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	void set_transform(in Transform2D xform)
	{
		_GODOT_set_transform.bind("Node2D", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_transform") = _GODOT_set_global_transform;
	void set_global_transform(in Transform2D xform)
	{
		_GODOT_set_global_transform.bind("Node2D", "set_global_transform");
		ptrcall!(void)(_GODOT_set_global_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_look_at;
	package(godot) alias _GODOT_methodBindInfo(string name : "look_at") = _GODOT_look_at;
	void look_at(in Vector2 point)
	{
		_GODOT_look_at.bind("Node2D", "look_at");
		ptrcall!(void)(_GODOT_look_at, _godot_object, point);
	}
	package(godot) static GodotMethod!(float, Vector2) _GODOT_get_angle_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angle_to") = _GODOT_get_angle_to;
	float get_angle_to(in Vector2 point) const
	{
		_GODOT_get_angle_to.bind("Node2D", "get_angle_to");
		return ptrcall!(float)(_GODOT_get_angle_to, _godot_object, point);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_to_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_local") = _GODOT_to_local;
	Vector2 to_local(in Vector2 global_point) const
	{
		_GODOT_to_local.bind("Node2D", "to_local");
		return ptrcall!(Vector2)(_GODOT_to_local, _godot_object, global_point);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_to_global;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_global") = _GODOT_to_global;
	Vector2 to_global(in Vector2 local_point) const
	{
		_GODOT_to_global.bind("Node2D", "to_global");
		return ptrcall!(Vector2)(_GODOT_to_global, _godot_object, local_point);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z") = _GODOT_set_z;
	void set_z(in int z)
	{
		_GODOT_set_z.bind("Node2D", "set_z");
		ptrcall!(void)(_GODOT_set_z, _godot_object, z);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_z") = _GODOT_get_z;
	int get_z() const
	{
		_GODOT_get_z.bind("Node2D", "get_z");
		return ptrcall!(int)(_GODOT_get_z, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_z_as_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_as_relative") = _GODOT_set_z_as_relative;
	void set_z_as_relative(in bool enable)
	{
		_GODOT_set_z_as_relative.bind("Node2D", "set_z_as_relative");
		ptrcall!(void)(_GODOT_set_z_as_relative, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_z_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_z_relative") = _GODOT_is_z_relative;
	bool is_z_relative() const
	{
		_GODOT_is_z_relative.bind("Node2D", "is_z_relative");
		return ptrcall!(bool)(_GODOT_is_z_relative, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_edit_set_pivot;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_set_pivot") = _GODOT_edit_set_pivot;
	void edit_set_pivot(in Vector2 pivot)
	{
		_GODOT_edit_set_pivot.bind("Node2D", "edit_set_pivot");
		ptrcall!(void)(_GODOT_edit_set_pivot, _godot_object, pivot);
	}
	package(godot) static GodotMethod!(Transform2D, GodotObject) _GODOT_get_relative_transform_to_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_relative_transform_to_parent") = _GODOT_get_relative_transform_to_parent;
	Transform2D get_relative_transform_to_parent(in GodotObject parent) const
	{
		_GODOT_get_relative_transform_to_parent.bind("Node2D", "get_relative_transform_to_parent");
		return ptrcall!(Transform2D)(_GODOT_get_relative_transform_to_parent, _godot_object, parent);
	}
}
