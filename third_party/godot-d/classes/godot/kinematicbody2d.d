module godot.kinematicbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
import godot.kinematiccollision2d;
@GodotBaseClass struct KinematicBody2D
{
	static immutable string _GODOT_internal_name = "KinematicBody2D";
public:
	union { godot_object _godot_object; PhysicsBody2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in KinematicBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("KinematicBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody2D)(constructor());
	}
	package(godot) static GodotMethod!(KinematicCollision2D, Vector2) _GODOT_move_and_collide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_collide") = _GODOT_move_and_collide;
	KinematicCollision2D move_and_collide(in Vector2 rel_vec)
	{
		_GODOT_move_and_collide.bind("KinematicBody2D", "move_and_collide");
		return ptrcall!(KinematicCollision2D)(_GODOT_move_and_collide, _godot_object, rel_vec);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, Vector2, float, int, float) _GODOT_move_and_slide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_slide") = _GODOT_move_and_slide;
	Vector2 move_and_slide(in Vector2 linear_velocity, in Vector2 floor_normal = Vector2(0, 0), in float slope_stop_min_velocity = 5, in int max_bounces = 4, in float floor_max_angle = 0.785398)
	{
		_GODOT_move_and_slide.bind("KinematicBody2D", "move_and_slide");
		return ptrcall!(Vector2)(_GODOT_move_and_slide, _godot_object, linear_velocity, floor_normal, slope_stop_min_velocity, max_bounces, floor_max_angle);
	}
	package(godot) static GodotMethod!(bool, Transform2D, Vector2) _GODOT_test_move;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_move") = _GODOT_test_move;
	bool test_move(in Transform2D from, in Vector2 rel_vec)
	{
		_GODOT_test_move.bind("KinematicBody2D", "test_move");
		return ptrcall!(bool)(_GODOT_test_move, _godot_object, from, rel_vec);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_floor;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_floor") = _GODOT_is_on_floor;
	bool is_on_floor() const
	{
		_GODOT_is_on_floor.bind("KinematicBody2D", "is_on_floor");
		return ptrcall!(bool)(_GODOT_is_on_floor, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_ceiling;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_ceiling") = _GODOT_is_on_ceiling;
	bool is_on_ceiling() const
	{
		_GODOT_is_on_ceiling.bind("KinematicBody2D", "is_on_ceiling");
		return ptrcall!(bool)(_GODOT_is_on_ceiling, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_wall;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_wall") = _GODOT_is_on_wall;
	bool is_on_wall() const
	{
		_GODOT_is_on_wall.bind("KinematicBody2D", "is_on_wall");
		return ptrcall!(bool)(_GODOT_is_on_wall, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_floor_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_floor_velocity") = _GODOT_get_floor_velocity;
	Vector2 get_floor_velocity() const
	{
		_GODOT_get_floor_velocity.bind("KinematicBody2D", "get_floor_velocity");
		return ptrcall!(Vector2)(_GODOT_get_floor_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_safe_margin") = _GODOT_set_safe_margin;
	void set_safe_margin(in float pixels)
	{
		_GODOT_set_safe_margin.bind("KinematicBody2D", "set_safe_margin");
		ptrcall!(void)(_GODOT_set_safe_margin, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_safe_margin") = _GODOT_get_safe_margin;
	float get_safe_margin() const
	{
		_GODOT_get_safe_margin.bind("KinematicBody2D", "get_safe_margin");
		return ptrcall!(float)(_GODOT_get_safe_margin, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_slide_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_count") = _GODOT_get_slide_count;
	int get_slide_count() const
	{
		_GODOT_get_slide_count.bind("KinematicBody2D", "get_slide_count");
		return ptrcall!(int)(_GODOT_get_slide_count, _godot_object);
	}
	package(godot) static GodotMethod!(KinematicCollision2D, int) _GODOT_get_slide_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_collision") = _GODOT_get_slide_collision;
	KinematicCollision2D get_slide_collision(in int slide_idx)
	{
		_GODOT_get_slide_collision.bind("KinematicBody2D", "get_slide_collision");
		return ptrcall!(KinematicCollision2D)(_GODOT_get_slide_collision, _godot_object, slide_idx);
	}
}
