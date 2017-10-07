module godot.kinematicbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.physicsbody;
import godot.kinematiccollision;
@GodotBaseClass struct KinematicBody
{
	static immutable string _GODOT_internal_name = "KinematicBody";
public:
	union { godot_object _godot_object; PhysicsBody base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in KinematicBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("KinematicBody");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody)(constructor());
	}
	package(godot) static GodotMethod!(KinematicCollision, Vector3) _GODOT_move_and_collide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_collide") = _GODOT_move_and_collide;
	KinematicCollision move_and_collide(in Vector3 rel_vec)
	{
		_GODOT_move_and_collide.bind("KinematicBody", "move_and_collide");
		return ptrcall!(KinematicCollision)(_GODOT_move_and_collide, _godot_object, rel_vec);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, float, int, float) _GODOT_move_and_slide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_slide") = _GODOT_move_and_slide;
	Vector3 move_and_slide(in Vector3 linear_velocity, in Vector3 floor_normal = Vector3(0, 0, 0), in float slope_stop_min_velocity = 0.05, in int max_slides = 4, in float floor_max_angle = 0.785398)
	{
		_GODOT_move_and_slide.bind("KinematicBody", "move_and_slide");
		return ptrcall!(Vector3)(_GODOT_move_and_slide, _godot_object, linear_velocity, floor_normal, slope_stop_min_velocity, max_slides, floor_max_angle);
	}
	package(godot) static GodotMethod!(bool, Transform, Vector3) _GODOT_test_move;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_move") = _GODOT_test_move;
	bool test_move(in Transform from, in Vector3 rel_vec)
	{
		_GODOT_test_move.bind("KinematicBody", "test_move");
		return ptrcall!(bool)(_GODOT_test_move, _godot_object, from, rel_vec);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_floor;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_floor") = _GODOT_is_on_floor;
	bool is_on_floor() const
	{
		_GODOT_is_on_floor.bind("KinematicBody", "is_on_floor");
		return ptrcall!(bool)(_GODOT_is_on_floor, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_ceiling;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_ceiling") = _GODOT_is_on_ceiling;
	bool is_on_ceiling() const
	{
		_GODOT_is_on_ceiling.bind("KinematicBody", "is_on_ceiling");
		return ptrcall!(bool)(_GODOT_is_on_ceiling, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_wall;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_wall") = _GODOT_is_on_wall;
	bool is_on_wall() const
	{
		_GODOT_is_on_wall.bind("KinematicBody", "is_on_wall");
		return ptrcall!(bool)(_GODOT_is_on_wall, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_floor_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_floor_velocity") = _GODOT_get_floor_velocity;
	Vector3 get_floor_velocity() const
	{
		_GODOT_get_floor_velocity.bind("KinematicBody", "get_floor_velocity");
		return ptrcall!(Vector3)(_GODOT_get_floor_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_safe_margin") = _GODOT_set_safe_margin;
	void set_safe_margin(in float pixels)
	{
		_GODOT_set_safe_margin.bind("KinematicBody", "set_safe_margin");
		ptrcall!(void)(_GODOT_set_safe_margin, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_safe_margin") = _GODOT_get_safe_margin;
	float get_safe_margin() const
	{
		_GODOT_get_safe_margin.bind("KinematicBody", "get_safe_margin");
		return ptrcall!(float)(_GODOT_get_safe_margin, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_slide_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_count") = _GODOT_get_slide_count;
	int get_slide_count() const
	{
		_GODOT_get_slide_count.bind("KinematicBody", "get_slide_count");
		return ptrcall!(int)(_GODOT_get_slide_count, _godot_object);
	}
	package(godot) static GodotMethod!(KinematicCollision, int) _GODOT_get_slide_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_collision") = _GODOT_get_slide_collision;
	KinematicCollision get_slide_collision(in int slide_idx)
	{
		_GODOT_get_slide_collision.bind("KinematicBody", "get_slide_collision");
		return ptrcall!(KinematicCollision)(_GODOT_get_slide_collision, _godot_object, slide_idx);
	}
}
