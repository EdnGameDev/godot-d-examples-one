module godot.particles2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.material;
import godot.texture;
@GodotBaseClass struct Particles2D
{
	static immutable string _GODOT_internal_name = "Particles2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Particles2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Particles2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Particles2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Particles2D");
		if(constructor is null) return typeof(this).init;
		return cast(Particles2D)(constructor());
	}
	enum DrawOrder : int
	{
		DRAW_ORDER_INDEX = 0,
		DRAW_ORDER_LIFETIME = 1,
	}
	enum int DRAW_ORDER_INDEX = 0;
	enum int DRAW_ORDER_LIFETIME = 1;
	package(godot) static GodotMethod!(void, bool) _GODOT_set_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emitting") = _GODOT_set_emitting;
	void set_emitting(in bool emitting)
	{
		_GODOT_set_emitting.bind("Particles2D", "set_emitting");
		ptrcall!(void)(_GODOT_set_emitting, _godot_object, emitting);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_amount") = _GODOT_set_amount;
	void set_amount(in int amount)
	{
		_GODOT_set_amount.bind("Particles2D", "set_amount");
		ptrcall!(void)(_GODOT_set_amount, _godot_object, amount);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lifetime") = _GODOT_set_lifetime;
	void set_lifetime(in float secs)
	{
		_GODOT_set_lifetime.bind("Particles2D", "set_lifetime");
		ptrcall!(void)(_GODOT_set_lifetime, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_shot") = _GODOT_set_one_shot;
	void set_one_shot(in bool secs)
	{
		_GODOT_set_one_shot.bind("Particles2D", "set_one_shot");
		ptrcall!(void)(_GODOT_set_one_shot, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pre_process_time") = _GODOT_set_pre_process_time;
	void set_pre_process_time(in float secs)
	{
		_GODOT_set_pre_process_time.bind("Particles2D", "set_pre_process_time");
		ptrcall!(void)(_GODOT_set_pre_process_time, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_explosiveness_ratio") = _GODOT_set_explosiveness_ratio;
	void set_explosiveness_ratio(in float ratio)
	{
		_GODOT_set_explosiveness_ratio.bind("Particles2D", "set_explosiveness_ratio");
		ptrcall!(void)(_GODOT_set_explosiveness_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_randomness_ratio") = _GODOT_set_randomness_ratio;
	void set_randomness_ratio(in float ratio)
	{
		_GODOT_set_randomness_ratio.bind("Particles2D", "set_randomness_ratio");
		ptrcall!(void)(_GODOT_set_randomness_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_visibility_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visibility_rect") = _GODOT_set_visibility_rect;
	void set_visibility_rect(in Rect2 aabb)
	{
		_GODOT_set_visibility_rect.bind("Particles2D", "set_visibility_rect");
		ptrcall!(void)(_GODOT_set_visibility_rect, _godot_object, aabb);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_local_coordinates") = _GODOT_set_use_local_coordinates;
	void set_use_local_coordinates(in bool enable)
	{
		_GODOT_set_use_local_coordinates.bind("Particles2D", "set_use_local_coordinates");
		ptrcall!(void)(_GODOT_set_use_local_coordinates, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_fps") = _GODOT_set_fixed_fps;
	void set_fixed_fps(in int fps)
	{
		_GODOT_set_fixed_fps.bind("Particles2D", "set_fixed_fps");
		ptrcall!(void)(_GODOT_set_fixed_fps, _godot_object, fps);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fractional_delta") = _GODOT_set_fractional_delta;
	void set_fractional_delta(in bool enable)
	{
		_GODOT_set_fractional_delta.bind("Particles2D", "set_fractional_delta");
		ptrcall!(void)(_GODOT_set_fractional_delta, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_material") = _GODOT_set_process_material;
	void set_process_material(in Material material)
	{
		_GODOT_set_process_material.bind("Particles2D", "set_process_material");
		ptrcall!(void)(_GODOT_set_process_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	void set_speed_scale(in float scale)
	{
		_GODOT_set_speed_scale.bind("Particles2D", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_emitting") = _GODOT_is_emitting;
	bool is_emitting() const
	{
		_GODOT_is_emitting.bind("Particles2D", "is_emitting");
		return ptrcall!(bool)(_GODOT_is_emitting, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_amount") = _GODOT_get_amount;
	int get_amount() const
	{
		_GODOT_get_amount.bind("Particles2D", "get_amount");
		return ptrcall!(int)(_GODOT_get_amount, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lifetime") = _GODOT_get_lifetime;
	float get_lifetime() const
	{
		_GODOT_get_lifetime.bind("Particles2D", "get_lifetime");
		return ptrcall!(float)(_GODOT_get_lifetime, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_one_shot") = _GODOT_get_one_shot;
	bool get_one_shot() const
	{
		_GODOT_get_one_shot.bind("Particles2D", "get_one_shot");
		return ptrcall!(bool)(_GODOT_get_one_shot, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pre_process_time") = _GODOT_get_pre_process_time;
	float get_pre_process_time() const
	{
		_GODOT_get_pre_process_time.bind("Particles2D", "get_pre_process_time");
		return ptrcall!(float)(_GODOT_get_pre_process_time, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_explosiveness_ratio") = _GODOT_get_explosiveness_ratio;
	float get_explosiveness_ratio() const
	{
		_GODOT_get_explosiveness_ratio.bind("Particles2D", "get_explosiveness_ratio");
		return ptrcall!(float)(_GODOT_get_explosiveness_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_randomness_ratio") = _GODOT_get_randomness_ratio;
	float get_randomness_ratio() const
	{
		_GODOT_get_randomness_ratio.bind("Particles2D", "get_randomness_ratio");
		return ptrcall!(float)(_GODOT_get_randomness_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_visibility_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visibility_rect") = _GODOT_get_visibility_rect;
	Rect2 get_visibility_rect() const
	{
		_GODOT_get_visibility_rect.bind("Particles2D", "get_visibility_rect");
		return ptrcall!(Rect2)(_GODOT_get_visibility_rect, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_local_coordinates") = _GODOT_get_use_local_coordinates;
	bool get_use_local_coordinates() const
	{
		_GODOT_get_use_local_coordinates.bind("Particles2D", "get_use_local_coordinates");
		return ptrcall!(bool)(_GODOT_get_use_local_coordinates, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_fps") = _GODOT_get_fixed_fps;
	int get_fixed_fps() const
	{
		_GODOT_get_fixed_fps.bind("Particles2D", "get_fixed_fps");
		return ptrcall!(int)(_GODOT_get_fixed_fps, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fractional_delta") = _GODOT_get_fractional_delta;
	bool get_fractional_delta() const
	{
		_GODOT_get_fractional_delta.bind("Particles2D", "get_fractional_delta");
		return ptrcall!(bool)(_GODOT_get_fractional_delta, _godot_object);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_material") = _GODOT_get_process_material;
	Material get_process_material() const
	{
		_GODOT_get_process_material.bind("Particles2D", "get_process_material");
		return ptrcall!(Material)(_GODOT_get_process_material, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	float get_speed_scale() const
	{
		_GODOT_get_speed_scale.bind("Particles2D", "get_speed_scale");
		return ptrcall!(float)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_order") = _GODOT_set_draw_order;
	void set_draw_order(in int order)
	{
		_GODOT_set_draw_order.bind("Particles2D", "set_draw_order");
		ptrcall!(void)(_GODOT_set_draw_order, _godot_object, order);
	}
	package(godot) static GodotMethod!(Particles2D.DrawOrder) _GODOT_get_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_order") = _GODOT_get_draw_order;
	Particles2D.DrawOrder get_draw_order() const
	{
		_GODOT_get_draw_order.bind("Particles2D", "get_draw_order");
		return ptrcall!(Particles2D.DrawOrder)(_GODOT_get_draw_order, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("Particles2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("Particles2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	void set_normal_map(in Texture texture)
	{
		_GODOT_set_normal_map.bind("Particles2D", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	Texture get_normal_map() const
	{
		_GODOT_get_normal_map.bind("Particles2D", "get_normal_map");
		return ptrcall!(Texture)(_GODOT_get_normal_map, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_capture_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "capture_rect") = _GODOT_capture_rect;
	Rect2 capture_rect() const
	{
		_GODOT_capture_rect.bind("Particles2D", "capture_rect");
		return ptrcall!(Rect2)(_GODOT_capture_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_frames") = _GODOT_set_v_frames;
	void set_v_frames(in int frames)
	{
		_GODOT_set_v_frames.bind("Particles2D", "set_v_frames");
		ptrcall!(void)(_GODOT_set_v_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_frames") = _GODOT_get_v_frames;
	int get_v_frames() const
	{
		_GODOT_get_v_frames.bind("Particles2D", "get_v_frames");
		return ptrcall!(int)(_GODOT_get_v_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_frames") = _GODOT_set_h_frames;
	void set_h_frames(in int frames)
	{
		_GODOT_set_h_frames.bind("Particles2D", "set_h_frames");
		ptrcall!(void)(_GODOT_set_h_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_frames") = _GODOT_get_h_frames;
	int get_h_frames() const
	{
		_GODOT_get_h_frames.bind("Particles2D", "get_h_frames");
		return ptrcall!(int)(_GODOT_get_h_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_restart;
	package(godot) alias _GODOT_methodBindInfo(string name : "restart") = _GODOT_restart;
	void restart()
	{
		_GODOT_restart.bind("Particles2D", "restart");
		ptrcall!(void)(_GODOT_restart, _godot_object);
	}
}
