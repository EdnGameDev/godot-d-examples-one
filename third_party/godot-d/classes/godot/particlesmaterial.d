module godot.particlesmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
import godot.curvetexture;
import godot.gradienttexture;
@GodotBaseClass struct ParticlesMaterial
{
	static immutable string _GODOT_internal_name = "ParticlesMaterial";
public:
	union { godot_object _godot_object; Material base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ParticlesMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParticlesMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ParticlesMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ParticlesMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(ParticlesMaterial)(constructor());
	}
	enum Flags : int
	{
		FLAG_MAX = 4,
		FLAG_ROTATE_Y = 1,
		FLAG_ALIGN_Y_TO_VELOCITY = 0,
	}
	enum EmissionShape : int
	{
		EMISSION_SHAPE_DIRECTED_POINTS = 4,
		EMISSION_SHAPE_SPHERE = 1,
		EMISSION_SHAPE_BOX = 2,
		EMISSION_SHAPE_POINTS = 3,
		EMISSION_SHAPE_POINT = 0,
	}
	enum Parameter : int
	{
		PARAM_ANGLE = 7,
		PARAM_SCALE = 8,
		PARAM_TANGENTIAL_ACCEL = 5,
		PARAM_ANGULAR_VELOCITY = 1,
		PARAM_INITIAL_LINEAR_VELOCITY = 0,
		PARAM_LINEAR_ACCEL = 3,
		PARAM_DAMPING = 6,
		PARAM_HUE_VARIATION = 9,
		PARAM_ANIM_SPEED = 10,
		PARAM_ORBIT_VELOCITY = 2,
		PARAM_ANIM_OFFSET = 11,
		PARAM_RADIAL_ACCEL = 4,
		PARAM_MAX = 12,
	}
	enum int EMISSION_SHAPE_BOX = 2;
	enum int PARAM_ANGLE = 7;
	enum int EMISSION_SHAPE_DIRECTED_POINTS = 4;
	enum int PARAM_SCALE = 8;
	enum int PARAM_TANGENTIAL_ACCEL = 5;
	enum int EMISSION_SHAPE_POINT = 0;
	enum int FLAG_MAX = 4;
	enum int EMISSION_SHAPE_SPHERE = 1;
	enum int FLAG_ALIGN_Y_TO_VELOCITY = 0;
	enum int PARAM_ANGULAR_VELOCITY = 1;
	enum int PARAM_INITIAL_LINEAR_VELOCITY = 0;
	enum int PARAM_LINEAR_ACCEL = 3;
	enum int EMISSION_SHAPE_POINTS = 3;
	enum int PARAM_DAMPING = 6;
	enum int PARAM_HUE_VARIATION = 9;
	enum int PARAM_ANIM_SPEED = 10;
	enum int PARAM_ORBIT_VELOCITY = 2;
	enum int PARAM_ANIM_OFFSET = 11;
	enum int PARAM_RADIAL_ACCEL = 4;
	enum int FLAG_ROTATE_Y = 1;
	enum int PARAM_MAX = 12;
	package(godot) static GodotMethod!(void, float) _GODOT_set_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spread") = _GODOT_set_spread;
	void set_spread(in float degrees)
	{
		_GODOT_set_spread.bind("ParticlesMaterial", "set_spread");
		ptrcall!(void)(_GODOT_set_spread, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_spread") = _GODOT_get_spread;
	float get_spread() const
	{
		_GODOT_get_spread.bind("ParticlesMaterial", "get_spread");
		return ptrcall!(float)(_GODOT_get_spread, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_flatness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flatness") = _GODOT_set_flatness;
	void set_flatness(in float amount)
	{
		_GODOT_set_flatness.bind("ParticlesMaterial", "set_flatness");
		ptrcall!(void)(_GODOT_set_flatness, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_flatness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flatness") = _GODOT_get_flatness;
	float get_flatness() const
	{
		_GODOT_get_flatness.bind("ParticlesMaterial", "get_flatness");
		return ptrcall!(float)(_GODOT_get_flatness, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	void set_param(in int param, in float value)
	{
		_GODOT_set_param.bind("ParticlesMaterial", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	float get_param(in int param) const
	{
		_GODOT_get_param.bind("ParticlesMaterial", "get_param");
		return ptrcall!(float)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param_randomness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_randomness") = _GODOT_set_param_randomness;
	void set_param_randomness(in int param, in float randomness)
	{
		_GODOT_set_param_randomness.bind("ParticlesMaterial", "set_param_randomness");
		ptrcall!(void)(_GODOT_set_param_randomness, _godot_object, param, randomness);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param_randomness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_randomness") = _GODOT_get_param_randomness;
	float get_param_randomness(in int param) const
	{
		_GODOT_get_param_randomness.bind("ParticlesMaterial", "get_param_randomness");
		return ptrcall!(float)(_GODOT_get_param_randomness, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_param_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_texture") = _GODOT_set_param_texture;
	void set_param_texture(in int param, in Texture texture)
	{
		_GODOT_set_param_texture.bind("ParticlesMaterial", "set_param_texture");
		ptrcall!(void)(_GODOT_set_param_texture, _godot_object, param, texture);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_param_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_texture") = _GODOT_get_param_texture;
	Texture get_param_texture(in int param) const
	{
		_GODOT_get_param_texture.bind("ParticlesMaterial", "get_param_texture");
		return ptrcall!(Texture)(_GODOT_get_param_texture, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(in Color color)
	{
		_GODOT_set_color.bind("ParticlesMaterial", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color() const
	{
		_GODOT_get_color.bind("ParticlesMaterial", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_color_ramp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color_ramp") = _GODOT_set_color_ramp;
	void set_color_ramp(in Texture ramp)
	{
		_GODOT_set_color_ramp.bind("ParticlesMaterial", "set_color_ramp");
		ptrcall!(void)(_GODOT_set_color_ramp, _godot_object, ramp);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_color_ramp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color_ramp") = _GODOT_get_color_ramp;
	Texture get_color_ramp() const
	{
		_GODOT_get_color_ramp.bind("ParticlesMaterial", "get_color_ramp");
		return ptrcall!(Texture)(_GODOT_get_color_ramp, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	void set_flag(in int flag, in bool enable)
	{
		_GODOT_set_flag.bind("ParticlesMaterial", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	bool get_flag(in int flag) const
	{
		_GODOT_get_flag.bind("ParticlesMaterial", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_emission_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_shape") = _GODOT_set_emission_shape;
	void set_emission_shape(in int shape)
	{
		_GODOT_set_emission_shape.bind("ParticlesMaterial", "set_emission_shape");
		ptrcall!(void)(_GODOT_set_emission_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(ParticlesMaterial.EmissionShape) _GODOT_get_emission_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_shape") = _GODOT_get_emission_shape;
	ParticlesMaterial.EmissionShape get_emission_shape() const
	{
		_GODOT_get_emission_shape.bind("ParticlesMaterial", "get_emission_shape");
		return ptrcall!(ParticlesMaterial.EmissionShape)(_GODOT_get_emission_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_emission_sphere_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_sphere_radius") = _GODOT_set_emission_sphere_radius;
	void set_emission_sphere_radius(in float radius)
	{
		_GODOT_set_emission_sphere_radius.bind("ParticlesMaterial", "set_emission_sphere_radius");
		ptrcall!(void)(_GODOT_set_emission_sphere_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_emission_sphere_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_sphere_radius") = _GODOT_get_emission_sphere_radius;
	float get_emission_sphere_radius() const
	{
		_GODOT_get_emission_sphere_radius.bind("ParticlesMaterial", "get_emission_sphere_radius");
		return ptrcall!(float)(_GODOT_get_emission_sphere_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_emission_box_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_box_extents") = _GODOT_set_emission_box_extents;
	void set_emission_box_extents(in Vector3 extents)
	{
		_GODOT_set_emission_box_extents.bind("ParticlesMaterial", "set_emission_box_extents");
		ptrcall!(void)(_GODOT_set_emission_box_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_emission_box_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_box_extents") = _GODOT_get_emission_box_extents;
	Vector3 get_emission_box_extents() const
	{
		_GODOT_get_emission_box_extents.bind("ParticlesMaterial", "get_emission_box_extents");
		return ptrcall!(Vector3)(_GODOT_get_emission_box_extents, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_emission_point_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_point_texture") = _GODOT_set_emission_point_texture;
	void set_emission_point_texture(in Texture texture)
	{
		_GODOT_set_emission_point_texture.bind("ParticlesMaterial", "set_emission_point_texture");
		ptrcall!(void)(_GODOT_set_emission_point_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_emission_point_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_point_texture") = _GODOT_get_emission_point_texture;
	Texture get_emission_point_texture() const
	{
		_GODOT_get_emission_point_texture.bind("ParticlesMaterial", "get_emission_point_texture");
		return ptrcall!(Texture)(_GODOT_get_emission_point_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_emission_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_normal_texture") = _GODOT_set_emission_normal_texture;
	void set_emission_normal_texture(in Texture texture)
	{
		_GODOT_set_emission_normal_texture.bind("ParticlesMaterial", "set_emission_normal_texture");
		ptrcall!(void)(_GODOT_set_emission_normal_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_emission_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_normal_texture") = _GODOT_get_emission_normal_texture;
	Texture get_emission_normal_texture() const
	{
		_GODOT_get_emission_normal_texture.bind("ParticlesMaterial", "get_emission_normal_texture");
		return ptrcall!(Texture)(_GODOT_get_emission_normal_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_emission_color_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_color_texture") = _GODOT_set_emission_color_texture;
	void set_emission_color_texture(in Texture texture)
	{
		_GODOT_set_emission_color_texture.bind("ParticlesMaterial", "set_emission_color_texture");
		ptrcall!(void)(_GODOT_set_emission_color_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_emission_color_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_color_texture") = _GODOT_get_emission_color_texture;
	Texture get_emission_color_texture() const
	{
		_GODOT_get_emission_color_texture.bind("ParticlesMaterial", "get_emission_color_texture");
		return ptrcall!(Texture)(_GODOT_get_emission_color_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_emission_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_point_count") = _GODOT_set_emission_point_count;
	void set_emission_point_count(in int point_count)
	{
		_GODOT_set_emission_point_count.bind("ParticlesMaterial", "set_emission_point_count");
		ptrcall!(void)(_GODOT_set_emission_point_count, _godot_object, point_count);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_emission_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_point_count") = _GODOT_get_emission_point_count;
	int get_emission_point_count() const
	{
		_GODOT_get_emission_point_count.bind("ParticlesMaterial", "get_emission_point_count");
		return ptrcall!(int)(_GODOT_get_emission_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_trail_divisor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_trail_divisor") = _GODOT_set_trail_divisor;
	void set_trail_divisor(in int divisor)
	{
		_GODOT_set_trail_divisor.bind("ParticlesMaterial", "set_trail_divisor");
		ptrcall!(void)(_GODOT_set_trail_divisor, _godot_object, divisor);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_trail_divisor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_trail_divisor") = _GODOT_get_trail_divisor;
	int get_trail_divisor() const
	{
		_GODOT_get_trail_divisor.bind("ParticlesMaterial", "get_trail_divisor");
		return ptrcall!(int)(_GODOT_get_trail_divisor, _godot_object);
	}
	package(godot) static GodotMethod!(void, CurveTexture) _GODOT_set_trail_size_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_trail_size_modifier") = _GODOT_set_trail_size_modifier;
	void set_trail_size_modifier(in CurveTexture texture)
	{
		_GODOT_set_trail_size_modifier.bind("ParticlesMaterial", "set_trail_size_modifier");
		ptrcall!(void)(_GODOT_set_trail_size_modifier, _godot_object, texture);
	}
	package(godot) static GodotMethod!(CurveTexture) _GODOT_get_trail_size_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_trail_size_modifier") = _GODOT_get_trail_size_modifier;
	CurveTexture get_trail_size_modifier() const
	{
		_GODOT_get_trail_size_modifier.bind("ParticlesMaterial", "get_trail_size_modifier");
		return ptrcall!(CurveTexture)(_GODOT_get_trail_size_modifier, _godot_object);
	}
	package(godot) static GodotMethod!(void, GradientTexture) _GODOT_set_trail_color_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_trail_color_modifier") = _GODOT_set_trail_color_modifier;
	void set_trail_color_modifier(in GradientTexture texture)
	{
		_GODOT_set_trail_color_modifier.bind("ParticlesMaterial", "set_trail_color_modifier");
		ptrcall!(void)(_GODOT_set_trail_color_modifier, _godot_object, texture);
	}
	package(godot) static GodotMethod!(GradientTexture) _GODOT_get_trail_color_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_trail_color_modifier") = _GODOT_get_trail_color_modifier;
	GradientTexture get_trail_color_modifier() const
	{
		_GODOT_get_trail_color_modifier.bind("ParticlesMaterial", "get_trail_color_modifier");
		return ptrcall!(GradientTexture)(_GODOT_get_trail_color_modifier, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity") = _GODOT_get_gravity;
	Vector3 get_gravity() const
	{
		_GODOT_get_gravity.bind("ParticlesMaterial", "get_gravity");
		return ptrcall!(Vector3)(_GODOT_get_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity") = _GODOT_set_gravity;
	void set_gravity(in Vector3 accel_vec)
	{
		_GODOT_set_gravity.bind("ParticlesMaterial", "set_gravity");
		ptrcall!(void)(_GODOT_set_gravity, _godot_object, accel_vec);
	}
}
