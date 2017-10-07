module godot.area2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.collisionobject2d;
@GodotBaseClass struct Area2D
{
	static immutable string _GODOT_internal_name = "Area2D";
public:
	union { godot_object _godot_object; CollisionObject2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Area2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Area2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Area2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Area2D");
		if(constructor is null) return typeof(this).init;
		return cast(Area2D)(constructor());
	}
	enum SpaceOverride : int
	{
		SPACE_OVERRIDE_DISABLED = 0,
		SPACE_OVERRIDE_COMBINE_REPLACE = 2,
		SPACE_OVERRIDE_REPLACE = 3,
		SPACE_OVERRIDE_COMBINE = 1,
		SPACE_OVERRIDE_REPLACE_COMBINE = 4,
	}
	enum int SPACE_OVERRIDE_DISABLED = 0;
	enum int SPACE_OVERRIDE_COMBINE_REPLACE = 2;
	enum int SPACE_OVERRIDE_REPLACE = 3;
	enum int SPACE_OVERRIDE_COMBINE = 1;
	enum int SPACE_OVERRIDE_REPLACE_COMBINE = 4;
	package(godot) static GodotMethod!(void, int) _GODOT__body_enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_enter_tree") = _GODOT__body_enter_tree;
	void _body_enter_tree(in int id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__body_exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_exit_tree") = _GODOT__body_exit_tree;
	void _body_exit_tree(in int id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__area_enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_area_enter_tree") = _GODOT__area_enter_tree;
	void _area_enter_tree(in int id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__area_exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_area_exit_tree") = _GODOT__area_exit_tree;
	void _area_exit_tree(in int id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_space_override_mode") = _GODOT_set_space_override_mode;
	void set_space_override_mode(in int space_override_mode)
	{
		_GODOT_set_space_override_mode.bind("Area2D", "set_space_override_mode");
		ptrcall!(void)(_GODOT_set_space_override_mode, _godot_object, space_override_mode);
	}
	package(godot) static GodotMethod!(Area2D.SpaceOverride) _GODOT_get_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_override_mode") = _GODOT_get_space_override_mode;
	Area2D.SpaceOverride get_space_override_mode() const
	{
		_GODOT_get_space_override_mode.bind("Area2D", "get_space_override_mode");
		return ptrcall!(Area2D.SpaceOverride)(_GODOT_get_space_override_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_gravity_is_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_is_point") = _GODOT_set_gravity_is_point;
	void set_gravity_is_point(in bool enable)
	{
		_GODOT_set_gravity_is_point.bind("Area2D", "set_gravity_is_point");
		ptrcall!(void)(_GODOT_set_gravity_is_point, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_gravity_a_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_gravity_a_point") = _GODOT_is_gravity_a_point;
	bool is_gravity_a_point() const
	{
		_GODOT_is_gravity_a_point.bind("Area2D", "is_gravity_a_point");
		return ptrcall!(bool)(_GODOT_is_gravity_a_point, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_gravity_distance_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_distance_scale") = _GODOT_set_gravity_distance_scale;
	void set_gravity_distance_scale(in float distance_scale)
	{
		_GODOT_set_gravity_distance_scale.bind("Area2D", "set_gravity_distance_scale");
		ptrcall!(void)(_GODOT_set_gravity_distance_scale, _godot_object, distance_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_gravity_distance_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_distance_scale") = _GODOT_get_gravity_distance_scale;
	float get_gravity_distance_scale() const
	{
		_GODOT_get_gravity_distance_scale.bind("Area2D", "get_gravity_distance_scale");
		return ptrcall!(float)(_GODOT_get_gravity_distance_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_gravity_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_vector") = _GODOT_set_gravity_vector;
	void set_gravity_vector(in Vector2 vector)
	{
		_GODOT_set_gravity_vector.bind("Area2D", "set_gravity_vector");
		ptrcall!(void)(_GODOT_set_gravity_vector, _godot_object, vector);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_gravity_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_vector") = _GODOT_get_gravity_vector;
	Vector2 get_gravity_vector() const
	{
		_GODOT_get_gravity_vector.bind("Area2D", "get_gravity_vector");
		return ptrcall!(Vector2)(_GODOT_get_gravity_vector, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity") = _GODOT_set_gravity;
	void set_gravity(in float gravity)
	{
		_GODOT_set_gravity.bind("Area2D", "set_gravity");
		ptrcall!(void)(_GODOT_set_gravity, _godot_object, gravity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity") = _GODOT_get_gravity;
	float get_gravity() const
	{
		_GODOT_get_gravity.bind("Area2D", "get_gravity");
		return ptrcall!(float)(_GODOT_get_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_damp") = _GODOT_set_linear_damp;
	void set_linear_damp(in float linear_damp)
	{
		_GODOT_set_linear_damp.bind("Area2D", "set_linear_damp");
		ptrcall!(void)(_GODOT_set_linear_damp, _godot_object, linear_damp);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_damp") = _GODOT_get_linear_damp;
	float get_linear_damp() const
	{
		_GODOT_get_linear_damp.bind("Area2D", "get_linear_damp");
		return ptrcall!(float)(_GODOT_get_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_damp") = _GODOT_set_angular_damp;
	void set_angular_damp(in float angular_damp)
	{
		_GODOT_set_angular_damp.bind("Area2D", "set_angular_damp");
		ptrcall!(void)(_GODOT_set_angular_damp, _godot_object, angular_damp);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_damp") = _GODOT_get_angular_damp;
	float get_angular_damp() const
	{
		_GODOT_get_angular_damp.bind("Area2D", "get_angular_damp");
		return ptrcall!(float)(_GODOT_get_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_priority") = _GODOT_set_priority;
	void set_priority(in float priority)
	{
		_GODOT_set_priority.bind("Area2D", "set_priority");
		ptrcall!(void)(_GODOT_set_priority, _godot_object, priority);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_priority") = _GODOT_get_priority;
	float get_priority() const
	{
		_GODOT_get_priority.bind("Area2D", "get_priority");
		return ptrcall!(float)(_GODOT_get_priority, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	void set_collision_mask(in int collision_mask)
	{
		_GODOT_set_collision_mask.bind("Area2D", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, collision_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	int get_collision_mask() const
	{
		_GODOT_get_collision_mask.bind("Area2D", "get_collision_mask");
		return ptrcall!(int)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	void set_collision_layer(in int collision_layer)
	{
		_GODOT_set_collision_layer.bind("Area2D", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, collision_layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	int get_collision_layer() const
	{
		_GODOT_get_collision_layer.bind("Area2D", "get_collision_layer");
		return ptrcall!(int)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	void set_collision_mask_bit(in int bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("Area2D", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	bool get_collision_mask_bit(in int bit) const
	{
		_GODOT_get_collision_mask_bit.bind("Area2D", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	void set_collision_layer_bit(in int bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("Area2D", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	bool get_collision_layer_bit(in int bit) const
	{
		_GODOT_get_collision_layer_bit.bind("Area2D", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_monitoring;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_monitoring") = _GODOT_set_monitoring;
	void set_monitoring(in bool enable)
	{
		_GODOT_set_monitoring.bind("Area2D", "set_monitoring");
		ptrcall!(void)(_GODOT_set_monitoring, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_monitoring;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_monitoring") = _GODOT_is_monitoring;
	bool is_monitoring() const
	{
		_GODOT_is_monitoring.bind("Area2D", "is_monitoring");
		return ptrcall!(bool)(_GODOT_is_monitoring, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_monitorable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_monitorable") = _GODOT_set_monitorable;
	void set_monitorable(in bool enable)
	{
		_GODOT_set_monitorable.bind("Area2D", "set_monitorable");
		ptrcall!(void)(_GODOT_set_monitorable, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_monitorable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_monitorable") = _GODOT_is_monitorable;
	bool is_monitorable() const
	{
		_GODOT_is_monitorable.bind("Area2D", "is_monitorable");
		return ptrcall!(bool)(_GODOT_is_monitorable, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_overlapping_bodies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_overlapping_bodies") = _GODOT_get_overlapping_bodies;
	Array get_overlapping_bodies() const
	{
		_GODOT_get_overlapping_bodies.bind("Area2D", "get_overlapping_bodies");
		return ptrcall!(Array)(_GODOT_get_overlapping_bodies, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_overlapping_areas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_overlapping_areas") = _GODOT_get_overlapping_areas;
	Array get_overlapping_areas() const
	{
		_GODOT_get_overlapping_areas.bind("Area2D", "get_overlapping_areas");
		return ptrcall!(Array)(_GODOT_get_overlapping_areas, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_overlaps_body;
	package(godot) alias _GODOT_methodBindInfo(string name : "overlaps_body") = _GODOT_overlaps_body;
	bool overlaps_body(in GodotObject _body) const
	{
		_GODOT_overlaps_body.bind("Area2D", "overlaps_body");
		return ptrcall!(bool)(_GODOT_overlaps_body, _godot_object, _body);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_overlaps_area;
	package(godot) alias _GODOT_methodBindInfo(string name : "overlaps_area") = _GODOT_overlaps_area;
	bool overlaps_area(in GodotObject area) const
	{
		_GODOT_overlaps_area.bind("Area2D", "overlaps_area");
		return ptrcall!(bool)(_GODOT_overlaps_area, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_audio_bus_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_bus_name") = _GODOT_set_audio_bus_name;
	void set_audio_bus_name(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_audio_bus_name.bind("Area2D", "set_audio_bus_name");
		ptrcall!(void)(_GODOT_set_audio_bus_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_audio_bus_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_bus_name") = _GODOT_get_audio_bus_name;
	String get_audio_bus_name() const
	{
		_GODOT_get_audio_bus_name.bind("Area2D", "get_audio_bus_name");
		return ptrcall!(String)(_GODOT_get_audio_bus_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_audio_bus_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_bus_override") = _GODOT_set_audio_bus_override;
	void set_audio_bus_override(in bool enable)
	{
		_GODOT_set_audio_bus_override.bind("Area2D", "set_audio_bus_override");
		ptrcall!(void)(_GODOT_set_audio_bus_override, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_overriding_audio_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_overriding_audio_bus") = _GODOT_is_overriding_audio_bus;
	bool is_overriding_audio_bus() const
	{
		_GODOT_is_overriding_audio_bus.bind("Area2D", "is_overriding_audio_bus");
		return ptrcall!(bool)(_GODOT_is_overriding_audio_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, RID, int, int, int) _GODOT__body_inout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_inout") = _GODOT__body_inout;
	void _body_inout(in int arg0, in RID arg1, in int arg2, in int arg3, in int arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_body_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, RID, int, int, int) _GODOT__area_inout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_area_inout") = _GODOT__area_inout;
	void _area_inout(in int arg0, in RID arg1, in int arg2, in int arg3, in int arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_area_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
