module godot.environment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.sky;
import godot.texture;
@GodotBaseClass struct Environment
{
	static immutable string _GODOT_internal_name = "Environment";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Environment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Environment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Environment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Environment");
		if(constructor is null) return typeof(this).init;
		return cast(Environment)(constructor());
	}
	enum ToneMapper : int
	{
		TONE_MAPPER_LINEAR = 0,
		TONE_MAPPER_FILMIC = 2,
		TONE_MAPPER_REINHARDT = 1,
		TONE_MAPPER_ACES = 3,
	}
	enum GlowBlendMode : int
	{
		GLOW_BLEND_MODE_REPLACE = 3,
		GLOW_BLEND_MODE_ADDITIVE = 0,
		GLOW_BLEND_MODE_SOFTLIGHT = 2,
		GLOW_BLEND_MODE_SCREEN = 1,
	}
	enum BGMode : int
	{
		BG_COLOR = 1,
		BG_SKY = 2,
		BG_MAX = 6,
		BG_CLEAR_COLOR = 0,
		BG_CANVAS = 4,
		BG_KEEP = 5,
		BG_COLOR_SKY = 3,
	}
	enum DOFBlurQuality : int
	{
		DOF_BLUR_QUALITY_LOW = 0,
		DOF_BLUR_QUALITY_HIGH = 2,
		DOF_BLUR_QUALITY_MEDIUM = 1,
	}
	enum int TONE_MAPPER_ACES = 3;
	enum int TONE_MAPPER_FILMIC = 2;
	enum int GLOW_BLEND_MODE_SOFTLIGHT = 2;
	enum int GLOW_BLEND_MODE_REPLACE = 3;
	enum int BG_COLOR = 1;
	enum int TONE_MAPPER_REINHARDT = 1;
	enum int BG_SKY = 2;
	enum int DOF_BLUR_QUALITY_HIGH = 2;
	enum int BG_MAX = 6;
	enum int TONE_MAPPER_LINEAR = 0;
	enum int BG_CLEAR_COLOR = 0;
	enum int DOF_BLUR_QUALITY_MEDIUM = 1;
	enum int BG_CANVAS = 4;
	enum int BG_KEEP = 5;
	enum int DOF_BLUR_QUALITY_LOW = 0;
	enum int GLOW_BLEND_MODE_ADDITIVE = 0;
	enum int BG_COLOR_SKY = 3;
	enum int GLOW_BLEND_MODE_SCREEN = 1;
	package(godot) static GodotMethod!(void, int) _GODOT_set_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_background") = _GODOT_set_background;
	void set_background(in int mode)
	{
		_GODOT_set_background.bind("Environment", "set_background");
		ptrcall!(void)(_GODOT_set_background, _godot_object, mode);
	}
	package(godot) static GodotMethod!(void, Sky) _GODOT_set_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky") = _GODOT_set_sky;
	void set_sky(in Sky sky)
	{
		_GODOT_set_sky.bind("Environment", "set_sky");
		ptrcall!(void)(_GODOT_set_sky, _godot_object, sky);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sky_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_scale") = _GODOT_set_sky_scale;
	void set_sky_scale(in float scale)
	{
		_GODOT_set_sky_scale.bind("Environment", "set_sky_scale");
		ptrcall!(void)(_GODOT_set_sky_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bg_color") = _GODOT_set_bg_color;
	void set_bg_color(in Color color)
	{
		_GODOT_set_bg_color.bind("Environment", "set_bg_color");
		ptrcall!(void)(_GODOT_set_bg_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bg_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bg_energy") = _GODOT_set_bg_energy;
	void set_bg_energy(in float energy)
	{
		_GODOT_set_bg_energy.bind("Environment", "set_bg_energy");
		ptrcall!(void)(_GODOT_set_bg_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_canvas_max_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_canvas_max_layer") = _GODOT_set_canvas_max_layer;
	void set_canvas_max_layer(in int layer)
	{
		_GODOT_set_canvas_max_layer.bind("Environment", "set_canvas_max_layer");
		ptrcall!(void)(_GODOT_set_canvas_max_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ambient_light_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ambient_light_color") = _GODOT_set_ambient_light_color;
	void set_ambient_light_color(in Color color)
	{
		_GODOT_set_ambient_light_color.bind("Environment", "set_ambient_light_color");
		ptrcall!(void)(_GODOT_set_ambient_light_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ambient_light_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ambient_light_energy") = _GODOT_set_ambient_light_energy;
	void set_ambient_light_energy(in float energy)
	{
		_GODOT_set_ambient_light_energy.bind("Environment", "set_ambient_light_energy");
		ptrcall!(void)(_GODOT_set_ambient_light_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ambient_light_sky_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ambient_light_sky_contribution") = _GODOT_set_ambient_light_sky_contribution;
	void set_ambient_light_sky_contribution(in float energy)
	{
		_GODOT_set_ambient_light_sky_contribution.bind("Environment", "set_ambient_light_sky_contribution");
		ptrcall!(void)(_GODOT_set_ambient_light_sky_contribution, _godot_object, energy);
	}
	package(godot) static GodotMethod!(Environment.BGMode) _GODOT_get_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_background") = _GODOT_get_background;
	Environment.BGMode get_background() const
	{
		_GODOT_get_background.bind("Environment", "get_background");
		return ptrcall!(Environment.BGMode)(_GODOT_get_background, _godot_object);
	}
	package(godot) static GodotMethod!(Sky) _GODOT_get_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky") = _GODOT_get_sky;
	Sky get_sky() const
	{
		_GODOT_get_sky.bind("Environment", "get_sky");
		return ptrcall!(Sky)(_GODOT_get_sky, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sky_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_scale") = _GODOT_get_sky_scale;
	float get_sky_scale() const
	{
		_GODOT_get_sky_scale.bind("Environment", "get_sky_scale");
		return ptrcall!(float)(_GODOT_get_sky_scale, _godot_object);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bg_color") = _GODOT_get_bg_color;
	Color get_bg_color() const
	{
		_GODOT_get_bg_color.bind("Environment", "get_bg_color");
		return ptrcall!(Color)(_GODOT_get_bg_color, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bg_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bg_energy") = _GODOT_get_bg_energy;
	float get_bg_energy() const
	{
		_GODOT_get_bg_energy.bind("Environment", "get_bg_energy");
		return ptrcall!(float)(_GODOT_get_bg_energy, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_canvas_max_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_max_layer") = _GODOT_get_canvas_max_layer;
	int get_canvas_max_layer() const
	{
		_GODOT_get_canvas_max_layer.bind("Environment", "get_canvas_max_layer");
		return ptrcall!(int)(_GODOT_get_canvas_max_layer, _godot_object);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ambient_light_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ambient_light_color") = _GODOT_get_ambient_light_color;
	Color get_ambient_light_color() const
	{
		_GODOT_get_ambient_light_color.bind("Environment", "get_ambient_light_color");
		return ptrcall!(Color)(_GODOT_get_ambient_light_color, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ambient_light_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ambient_light_energy") = _GODOT_get_ambient_light_energy;
	float get_ambient_light_energy() const
	{
		_GODOT_get_ambient_light_energy.bind("Environment", "get_ambient_light_energy");
		return ptrcall!(float)(_GODOT_get_ambient_light_energy, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ambient_light_sky_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ambient_light_sky_contribution") = _GODOT_get_ambient_light_sky_contribution;
	float get_ambient_light_sky_contribution() const
	{
		_GODOT_get_ambient_light_sky_contribution.bind("Environment", "get_ambient_light_sky_contribution");
		return ptrcall!(float)(_GODOT_get_ambient_light_sky_contribution, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_enabled") = _GODOT_set_fog_enabled;
	void set_fog_enabled(in bool enabled)
	{
		_GODOT_set_fog_enabled.bind("Environment", "set_fog_enabled");
		ptrcall!(void)(_GODOT_set_fog_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_enabled") = _GODOT_is_fog_enabled;
	bool is_fog_enabled() const
	{
		_GODOT_is_fog_enabled.bind("Environment", "is_fog_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_fog_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_color") = _GODOT_set_fog_color;
	void set_fog_color(in Color color)
	{
		_GODOT_set_fog_color.bind("Environment", "set_fog_color");
		ptrcall!(void)(_GODOT_set_fog_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_fog_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_color") = _GODOT_get_fog_color;
	Color get_fog_color() const
	{
		_GODOT_get_fog_color.bind("Environment", "get_fog_color");
		return ptrcall!(Color)(_GODOT_get_fog_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_fog_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_sun_color") = _GODOT_set_fog_sun_color;
	void set_fog_sun_color(in Color color)
	{
		_GODOT_set_fog_sun_color.bind("Environment", "set_fog_sun_color");
		ptrcall!(void)(_GODOT_set_fog_sun_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_fog_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_sun_color") = _GODOT_get_fog_sun_color;
	Color get_fog_sun_color() const
	{
		_GODOT_get_fog_sun_color.bind("Environment", "get_fog_sun_color");
		return ptrcall!(Color)(_GODOT_get_fog_sun_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_sun_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_sun_amount") = _GODOT_set_fog_sun_amount;
	void set_fog_sun_amount(in float amount)
	{
		_GODOT_set_fog_sun_amount.bind("Environment", "set_fog_sun_amount");
		ptrcall!(void)(_GODOT_set_fog_sun_amount, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_sun_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_sun_amount") = _GODOT_get_fog_sun_amount;
	float get_fog_sun_amount() const
	{
		_GODOT_get_fog_sun_amount.bind("Environment", "get_fog_sun_amount");
		return ptrcall!(float)(_GODOT_get_fog_sun_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_depth_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_depth_enabled") = _GODOT_set_fog_depth_enabled;
	void set_fog_depth_enabled(in bool enabled)
	{
		_GODOT_set_fog_depth_enabled.bind("Environment", "set_fog_depth_enabled");
		ptrcall!(void)(_GODOT_set_fog_depth_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_depth_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_depth_enabled") = _GODOT_is_fog_depth_enabled;
	bool is_fog_depth_enabled() const
	{
		_GODOT_is_fog_depth_enabled.bind("Environment", "is_fog_depth_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_depth_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_depth_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_depth_begin") = _GODOT_set_fog_depth_begin;
	void set_fog_depth_begin(in float distance)
	{
		_GODOT_set_fog_depth_begin.bind("Environment", "set_fog_depth_begin");
		ptrcall!(void)(_GODOT_set_fog_depth_begin, _godot_object, distance);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_depth_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_depth_begin") = _GODOT_get_fog_depth_begin;
	float get_fog_depth_begin() const
	{
		_GODOT_get_fog_depth_begin.bind("Environment", "get_fog_depth_begin");
		return ptrcall!(float)(_GODOT_get_fog_depth_begin, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_depth_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_depth_curve") = _GODOT_set_fog_depth_curve;
	void set_fog_depth_curve(in float curve)
	{
		_GODOT_set_fog_depth_curve.bind("Environment", "set_fog_depth_curve");
		ptrcall!(void)(_GODOT_set_fog_depth_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_depth_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_depth_curve") = _GODOT_get_fog_depth_curve;
	float get_fog_depth_curve() const
	{
		_GODOT_get_fog_depth_curve.bind("Environment", "get_fog_depth_curve");
		return ptrcall!(float)(_GODOT_get_fog_depth_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_transmit_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_transmit_enabled") = _GODOT_set_fog_transmit_enabled;
	void set_fog_transmit_enabled(in bool enabled)
	{
		_GODOT_set_fog_transmit_enabled.bind("Environment", "set_fog_transmit_enabled");
		ptrcall!(void)(_GODOT_set_fog_transmit_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_transmit_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_transmit_enabled") = _GODOT_is_fog_transmit_enabled;
	bool is_fog_transmit_enabled() const
	{
		_GODOT_is_fog_transmit_enabled.bind("Environment", "is_fog_transmit_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_transmit_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_transmit_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_transmit_curve") = _GODOT_set_fog_transmit_curve;
	void set_fog_transmit_curve(in float curve)
	{
		_GODOT_set_fog_transmit_curve.bind("Environment", "set_fog_transmit_curve");
		ptrcall!(void)(_GODOT_set_fog_transmit_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_transmit_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_transmit_curve") = _GODOT_get_fog_transmit_curve;
	float get_fog_transmit_curve() const
	{
		_GODOT_get_fog_transmit_curve.bind("Environment", "get_fog_transmit_curve");
		return ptrcall!(float)(_GODOT_get_fog_transmit_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_height_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_enabled") = _GODOT_set_fog_height_enabled;
	void set_fog_height_enabled(in bool enabled)
	{
		_GODOT_set_fog_height_enabled.bind("Environment", "set_fog_height_enabled");
		ptrcall!(void)(_GODOT_set_fog_height_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_height_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_height_enabled") = _GODOT_is_fog_height_enabled;
	bool is_fog_height_enabled() const
	{
		_GODOT_is_fog_height_enabled.bind("Environment", "is_fog_height_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_height_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_height_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_min") = _GODOT_set_fog_height_min;
	void set_fog_height_min(in float height)
	{
		_GODOT_set_fog_height_min.bind("Environment", "set_fog_height_min");
		ptrcall!(void)(_GODOT_set_fog_height_min, _godot_object, height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_height_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_height_min") = _GODOT_get_fog_height_min;
	float get_fog_height_min() const
	{
		_GODOT_get_fog_height_min.bind("Environment", "get_fog_height_min");
		return ptrcall!(float)(_GODOT_get_fog_height_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_height_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_max") = _GODOT_set_fog_height_max;
	void set_fog_height_max(in float height)
	{
		_GODOT_set_fog_height_max.bind("Environment", "set_fog_height_max");
		ptrcall!(void)(_GODOT_set_fog_height_max, _godot_object, height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_height_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_height_max") = _GODOT_get_fog_height_max;
	float get_fog_height_max() const
	{
		_GODOT_get_fog_height_max.bind("Environment", "get_fog_height_max");
		return ptrcall!(float)(_GODOT_get_fog_height_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fog_height_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_curve") = _GODOT_set_fog_height_curve;
	void set_fog_height_curve(in float curve)
	{
		_GODOT_set_fog_height_curve.bind("Environment", "set_fog_height_curve");
		ptrcall!(void)(_GODOT_set_fog_height_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fog_height_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_height_curve") = _GODOT_get_fog_height_curve;
	float get_fog_height_curve() const
	{
		_GODOT_get_fog_height_curve.bind("Environment", "get_fog_height_curve");
		return ptrcall!(float)(_GODOT_get_fog_height_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tonemapper;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemapper") = _GODOT_set_tonemapper;
	void set_tonemapper(in int mode)
	{
		_GODOT_set_tonemapper.bind("Environment", "set_tonemapper");
		ptrcall!(void)(_GODOT_set_tonemapper, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Environment.ToneMapper) _GODOT_get_tonemapper;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemapper") = _GODOT_get_tonemapper;
	Environment.ToneMapper get_tonemapper() const
	{
		_GODOT_get_tonemapper.bind("Environment", "get_tonemapper");
		return ptrcall!(Environment.ToneMapper)(_GODOT_get_tonemapper, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tonemap_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_exposure") = _GODOT_set_tonemap_exposure;
	void set_tonemap_exposure(in float exposure)
	{
		_GODOT_set_tonemap_exposure.bind("Environment", "set_tonemap_exposure");
		ptrcall!(void)(_GODOT_set_tonemap_exposure, _godot_object, exposure);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tonemap_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_exposure") = _GODOT_get_tonemap_exposure;
	float get_tonemap_exposure() const
	{
		_GODOT_get_tonemap_exposure.bind("Environment", "get_tonemap_exposure");
		return ptrcall!(float)(_GODOT_get_tonemap_exposure, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tonemap_white;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_white") = _GODOT_set_tonemap_white;
	void set_tonemap_white(in float white)
	{
		_GODOT_set_tonemap_white.bind("Environment", "set_tonemap_white");
		ptrcall!(void)(_GODOT_set_tonemap_white, _godot_object, white);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tonemap_white;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_white") = _GODOT_get_tonemap_white;
	float get_tonemap_white() const
	{
		_GODOT_get_tonemap_white.bind("Environment", "get_tonemap_white");
		return ptrcall!(float)(_GODOT_get_tonemap_white, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tonemap_auto_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure") = _GODOT_set_tonemap_auto_exposure;
	void set_tonemap_auto_exposure(in bool auto_exposure)
	{
		_GODOT_set_tonemap_auto_exposure.bind("Environment", "set_tonemap_auto_exposure");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure, _godot_object, auto_exposure);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_tonemap_auto_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure") = _GODOT_get_tonemap_auto_exposure;
	bool get_tonemap_auto_exposure() const
	{
		_GODOT_get_tonemap_auto_exposure.bind("Environment", "get_tonemap_auto_exposure");
		return ptrcall!(bool)(_GODOT_get_tonemap_auto_exposure, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tonemap_auto_exposure_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_max") = _GODOT_set_tonemap_auto_exposure_max;
	void set_tonemap_auto_exposure_max(in float exposure_max)
	{
		_GODOT_set_tonemap_auto_exposure_max.bind("Environment", "set_tonemap_auto_exposure_max");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_max, _godot_object, exposure_max);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tonemap_auto_exposure_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_max") = _GODOT_get_tonemap_auto_exposure_max;
	float get_tonemap_auto_exposure_max() const
	{
		_GODOT_get_tonemap_auto_exposure_max.bind("Environment", "get_tonemap_auto_exposure_max");
		return ptrcall!(float)(_GODOT_get_tonemap_auto_exposure_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tonemap_auto_exposure_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_min") = _GODOT_set_tonemap_auto_exposure_min;
	void set_tonemap_auto_exposure_min(in float exposure_min)
	{
		_GODOT_set_tonemap_auto_exposure_min.bind("Environment", "set_tonemap_auto_exposure_min");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_min, _godot_object, exposure_min);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tonemap_auto_exposure_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_min") = _GODOT_get_tonemap_auto_exposure_min;
	float get_tonemap_auto_exposure_min() const
	{
		_GODOT_get_tonemap_auto_exposure_min.bind("Environment", "get_tonemap_auto_exposure_min");
		return ptrcall!(float)(_GODOT_get_tonemap_auto_exposure_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tonemap_auto_exposure_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_speed") = _GODOT_set_tonemap_auto_exposure_speed;
	void set_tonemap_auto_exposure_speed(in float exposure_speed)
	{
		_GODOT_set_tonemap_auto_exposure_speed.bind("Environment", "set_tonemap_auto_exposure_speed");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_speed, _godot_object, exposure_speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tonemap_auto_exposure_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_speed") = _GODOT_get_tonemap_auto_exposure_speed;
	float get_tonemap_auto_exposure_speed() const
	{
		_GODOT_get_tonemap_auto_exposure_speed.bind("Environment", "get_tonemap_auto_exposure_speed");
		return ptrcall!(float)(_GODOT_get_tonemap_auto_exposure_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_tonemap_auto_exposure_grey;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_grey") = _GODOT_set_tonemap_auto_exposure_grey;
	void set_tonemap_auto_exposure_grey(in float exposure_grey)
	{
		_GODOT_set_tonemap_auto_exposure_grey.bind("Environment", "set_tonemap_auto_exposure_grey");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_grey, _godot_object, exposure_grey);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_tonemap_auto_exposure_grey;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_grey") = _GODOT_get_tonemap_auto_exposure_grey;
	float get_tonemap_auto_exposure_grey() const
	{
		_GODOT_get_tonemap_auto_exposure_grey.bind("Environment", "get_tonemap_auto_exposure_grey");
		return ptrcall!(float)(_GODOT_get_tonemap_auto_exposure_grey, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssr_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_enabled") = _GODOT_set_ssr_enabled;
	void set_ssr_enabled(in bool enabled)
	{
		_GODOT_set_ssr_enabled.bind("Environment", "set_ssr_enabled");
		ptrcall!(void)(_GODOT_set_ssr_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssr_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssr_enabled") = _GODOT_is_ssr_enabled;
	bool is_ssr_enabled() const
	{
		_GODOT_is_ssr_enabled.bind("Environment", "is_ssr_enabled");
		return ptrcall!(bool)(_GODOT_is_ssr_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_ssr_max_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_max_steps") = _GODOT_set_ssr_max_steps;
	void set_ssr_max_steps(in int max_steps)
	{
		_GODOT_set_ssr_max_steps.bind("Environment", "set_ssr_max_steps");
		ptrcall!(void)(_GODOT_set_ssr_max_steps, _godot_object, max_steps);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_ssr_max_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_max_steps") = _GODOT_get_ssr_max_steps;
	int get_ssr_max_steps() const
	{
		_GODOT_get_ssr_max_steps.bind("Environment", "get_ssr_max_steps");
		return ptrcall!(int)(_GODOT_get_ssr_max_steps, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssr_fade_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_fade_in") = _GODOT_set_ssr_fade_in;
	void set_ssr_fade_in(in float fade_in)
	{
		_GODOT_set_ssr_fade_in.bind("Environment", "set_ssr_fade_in");
		ptrcall!(void)(_GODOT_set_ssr_fade_in, _godot_object, fade_in);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssr_fade_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_fade_in") = _GODOT_get_ssr_fade_in;
	float get_ssr_fade_in() const
	{
		_GODOT_get_ssr_fade_in.bind("Environment", "get_ssr_fade_in");
		return ptrcall!(float)(_GODOT_get_ssr_fade_in, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssr_fade_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_fade_out") = _GODOT_set_ssr_fade_out;
	void set_ssr_fade_out(in float fade_out)
	{
		_GODOT_set_ssr_fade_out.bind("Environment", "set_ssr_fade_out");
		ptrcall!(void)(_GODOT_set_ssr_fade_out, _godot_object, fade_out);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssr_fade_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_fade_out") = _GODOT_get_ssr_fade_out;
	float get_ssr_fade_out() const
	{
		_GODOT_get_ssr_fade_out.bind("Environment", "get_ssr_fade_out");
		return ptrcall!(float)(_GODOT_get_ssr_fade_out, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssr_depth_tolerance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_depth_tolerance") = _GODOT_set_ssr_depth_tolerance;
	void set_ssr_depth_tolerance(in float depth_tolerance)
	{
		_GODOT_set_ssr_depth_tolerance.bind("Environment", "set_ssr_depth_tolerance");
		ptrcall!(void)(_GODOT_set_ssr_depth_tolerance, _godot_object, depth_tolerance);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssr_depth_tolerance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_depth_tolerance") = _GODOT_get_ssr_depth_tolerance;
	float get_ssr_depth_tolerance() const
	{
		_GODOT_get_ssr_depth_tolerance.bind("Environment", "get_ssr_depth_tolerance");
		return ptrcall!(float)(_GODOT_get_ssr_depth_tolerance, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssr_rough;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_rough") = _GODOT_set_ssr_rough;
	void set_ssr_rough(in bool rough)
	{
		_GODOT_set_ssr_rough.bind("Environment", "set_ssr_rough");
		ptrcall!(void)(_GODOT_set_ssr_rough, _godot_object, rough);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssr_rough;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssr_rough") = _GODOT_is_ssr_rough;
	bool is_ssr_rough() const
	{
		_GODOT_is_ssr_rough.bind("Environment", "is_ssr_rough");
		return ptrcall!(bool)(_GODOT_is_ssr_rough, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssao_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_enabled") = _GODOT_set_ssao_enabled;
	void set_ssao_enabled(in bool enabled)
	{
		_GODOT_set_ssao_enabled.bind("Environment", "set_ssao_enabled");
		ptrcall!(void)(_GODOT_set_ssao_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssao_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssao_enabled") = _GODOT_is_ssao_enabled;
	bool is_ssao_enabled() const
	{
		_GODOT_is_ssao_enabled.bind("Environment", "is_ssao_enabled");
		return ptrcall!(bool)(_GODOT_is_ssao_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssao_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_radius") = _GODOT_set_ssao_radius;
	void set_ssao_radius(in float radius)
	{
		_GODOT_set_ssao_radius.bind("Environment", "set_ssao_radius");
		ptrcall!(void)(_GODOT_set_ssao_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssao_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_radius") = _GODOT_get_ssao_radius;
	float get_ssao_radius() const
	{
		_GODOT_get_ssao_radius.bind("Environment", "get_ssao_radius");
		return ptrcall!(float)(_GODOT_get_ssao_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssao_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_intensity") = _GODOT_set_ssao_intensity;
	void set_ssao_intensity(in float intensity)
	{
		_GODOT_set_ssao_intensity.bind("Environment", "set_ssao_intensity");
		ptrcall!(void)(_GODOT_set_ssao_intensity, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssao_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_intensity") = _GODOT_get_ssao_intensity;
	float get_ssao_intensity() const
	{
		_GODOT_get_ssao_intensity.bind("Environment", "get_ssao_intensity");
		return ptrcall!(float)(_GODOT_get_ssao_intensity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssao_radius2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_radius2") = _GODOT_set_ssao_radius2;
	void set_ssao_radius2(in float radius)
	{
		_GODOT_set_ssao_radius2.bind("Environment", "set_ssao_radius2");
		ptrcall!(void)(_GODOT_set_ssao_radius2, _godot_object, radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssao_radius2;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_radius2") = _GODOT_get_ssao_radius2;
	float get_ssao_radius2() const
	{
		_GODOT_get_ssao_radius2.bind("Environment", "get_ssao_radius2");
		return ptrcall!(float)(_GODOT_get_ssao_radius2, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssao_intensity2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_intensity2") = _GODOT_set_ssao_intensity2;
	void set_ssao_intensity2(in float intensity)
	{
		_GODOT_set_ssao_intensity2.bind("Environment", "set_ssao_intensity2");
		ptrcall!(void)(_GODOT_set_ssao_intensity2, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssao_intensity2;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_intensity2") = _GODOT_get_ssao_intensity2;
	float get_ssao_intensity2() const
	{
		_GODOT_get_ssao_intensity2.bind("Environment", "get_ssao_intensity2");
		return ptrcall!(float)(_GODOT_get_ssao_intensity2, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssao_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_bias") = _GODOT_set_ssao_bias;
	void set_ssao_bias(in float bias)
	{
		_GODOT_set_ssao_bias.bind("Environment", "set_ssao_bias");
		ptrcall!(void)(_GODOT_set_ssao_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssao_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_bias") = _GODOT_get_ssao_bias;
	float get_ssao_bias() const
	{
		_GODOT_get_ssao_bias.bind("Environment", "get_ssao_bias");
		return ptrcall!(float)(_GODOT_get_ssao_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ssao_direct_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_direct_light_affect") = _GODOT_set_ssao_direct_light_affect;
	void set_ssao_direct_light_affect(in float amount)
	{
		_GODOT_set_ssao_direct_light_affect.bind("Environment", "set_ssao_direct_light_affect");
		ptrcall!(void)(_GODOT_set_ssao_direct_light_affect, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ssao_direct_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_direct_light_affect") = _GODOT_get_ssao_direct_light_affect;
	float get_ssao_direct_light_affect() const
	{
		_GODOT_get_ssao_direct_light_affect.bind("Environment", "get_ssao_direct_light_affect");
		return ptrcall!(float)(_GODOT_get_ssao_direct_light_affect, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ssao_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_color") = _GODOT_set_ssao_color;
	void set_ssao_color(in Color color)
	{
		_GODOT_set_ssao_color.bind("Environment", "set_ssao_color");
		ptrcall!(void)(_GODOT_set_ssao_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ssao_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_color") = _GODOT_get_ssao_color;
	Color get_ssao_color() const
	{
		_GODOT_get_ssao_color.bind("Environment", "get_ssao_color");
		return ptrcall!(Color)(_GODOT_get_ssao_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssao_blur;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_blur") = _GODOT_set_ssao_blur;
	void set_ssao_blur(in bool enabled)
	{
		_GODOT_set_ssao_blur.bind("Environment", "set_ssao_blur");
		ptrcall!(void)(_GODOT_set_ssao_blur, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssao_blur_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssao_blur_enabled") = _GODOT_is_ssao_blur_enabled;
	bool is_ssao_blur_enabled() const
	{
		_GODOT_is_ssao_blur_enabled.bind("Environment", "is_ssao_blur_enabled");
		return ptrcall!(bool)(_GODOT_is_ssao_blur_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_dof_blur_far_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_enabled") = _GODOT_set_dof_blur_far_enabled;
	void set_dof_blur_far_enabled(in bool enabled)
	{
		_GODOT_set_dof_blur_far_enabled.bind("Environment", "set_dof_blur_far_enabled");
		ptrcall!(void)(_GODOT_set_dof_blur_far_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_dof_blur_far_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_dof_blur_far_enabled") = _GODOT_is_dof_blur_far_enabled;
	bool is_dof_blur_far_enabled() const
	{
		_GODOT_is_dof_blur_far_enabled.bind("Environment", "is_dof_blur_far_enabled");
		return ptrcall!(bool)(_GODOT_is_dof_blur_far_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dof_blur_far_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_distance") = _GODOT_set_dof_blur_far_distance;
	void set_dof_blur_far_distance(in float intensity)
	{
		_GODOT_set_dof_blur_far_distance.bind("Environment", "set_dof_blur_far_distance");
		ptrcall!(void)(_GODOT_set_dof_blur_far_distance, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dof_blur_far_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_distance") = _GODOT_get_dof_blur_far_distance;
	float get_dof_blur_far_distance() const
	{
		_GODOT_get_dof_blur_far_distance.bind("Environment", "get_dof_blur_far_distance");
		return ptrcall!(float)(_GODOT_get_dof_blur_far_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dof_blur_far_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_transition") = _GODOT_set_dof_blur_far_transition;
	void set_dof_blur_far_transition(in float intensity)
	{
		_GODOT_set_dof_blur_far_transition.bind("Environment", "set_dof_blur_far_transition");
		ptrcall!(void)(_GODOT_set_dof_blur_far_transition, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dof_blur_far_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_transition") = _GODOT_get_dof_blur_far_transition;
	float get_dof_blur_far_transition() const
	{
		_GODOT_get_dof_blur_far_transition.bind("Environment", "get_dof_blur_far_transition");
		return ptrcall!(float)(_GODOT_get_dof_blur_far_transition, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dof_blur_far_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_amount") = _GODOT_set_dof_blur_far_amount;
	void set_dof_blur_far_amount(in float intensity)
	{
		_GODOT_set_dof_blur_far_amount.bind("Environment", "set_dof_blur_far_amount");
		ptrcall!(void)(_GODOT_set_dof_blur_far_amount, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dof_blur_far_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_amount") = _GODOT_get_dof_blur_far_amount;
	float get_dof_blur_far_amount() const
	{
		_GODOT_get_dof_blur_far_amount.bind("Environment", "get_dof_blur_far_amount");
		return ptrcall!(float)(_GODOT_get_dof_blur_far_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_dof_blur_far_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_quality") = _GODOT_set_dof_blur_far_quality;
	void set_dof_blur_far_quality(in int intensity)
	{
		_GODOT_set_dof_blur_far_quality.bind("Environment", "set_dof_blur_far_quality");
		ptrcall!(void)(_GODOT_set_dof_blur_far_quality, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(Environment.DOFBlurQuality) _GODOT_get_dof_blur_far_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_quality") = _GODOT_get_dof_blur_far_quality;
	Environment.DOFBlurQuality get_dof_blur_far_quality() const
	{
		_GODOT_get_dof_blur_far_quality.bind("Environment", "get_dof_blur_far_quality");
		return ptrcall!(Environment.DOFBlurQuality)(_GODOT_get_dof_blur_far_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_dof_blur_near_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_enabled") = _GODOT_set_dof_blur_near_enabled;
	void set_dof_blur_near_enabled(in bool enabled)
	{
		_GODOT_set_dof_blur_near_enabled.bind("Environment", "set_dof_blur_near_enabled");
		ptrcall!(void)(_GODOT_set_dof_blur_near_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_dof_blur_near_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_dof_blur_near_enabled") = _GODOT_is_dof_blur_near_enabled;
	bool is_dof_blur_near_enabled() const
	{
		_GODOT_is_dof_blur_near_enabled.bind("Environment", "is_dof_blur_near_enabled");
		return ptrcall!(bool)(_GODOT_is_dof_blur_near_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dof_blur_near_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_distance") = _GODOT_set_dof_blur_near_distance;
	void set_dof_blur_near_distance(in float intensity)
	{
		_GODOT_set_dof_blur_near_distance.bind("Environment", "set_dof_blur_near_distance");
		ptrcall!(void)(_GODOT_set_dof_blur_near_distance, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dof_blur_near_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_distance") = _GODOT_get_dof_blur_near_distance;
	float get_dof_blur_near_distance() const
	{
		_GODOT_get_dof_blur_near_distance.bind("Environment", "get_dof_blur_near_distance");
		return ptrcall!(float)(_GODOT_get_dof_blur_near_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dof_blur_near_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_transition") = _GODOT_set_dof_blur_near_transition;
	void set_dof_blur_near_transition(in float intensity)
	{
		_GODOT_set_dof_blur_near_transition.bind("Environment", "set_dof_blur_near_transition");
		ptrcall!(void)(_GODOT_set_dof_blur_near_transition, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dof_blur_near_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_transition") = _GODOT_get_dof_blur_near_transition;
	float get_dof_blur_near_transition() const
	{
		_GODOT_get_dof_blur_near_transition.bind("Environment", "get_dof_blur_near_transition");
		return ptrcall!(float)(_GODOT_get_dof_blur_near_transition, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_dof_blur_near_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_amount") = _GODOT_set_dof_blur_near_amount;
	void set_dof_blur_near_amount(in float intensity)
	{
		_GODOT_set_dof_blur_near_amount.bind("Environment", "set_dof_blur_near_amount");
		ptrcall!(void)(_GODOT_set_dof_blur_near_amount, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_dof_blur_near_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_amount") = _GODOT_get_dof_blur_near_amount;
	float get_dof_blur_near_amount() const
	{
		_GODOT_get_dof_blur_near_amount.bind("Environment", "get_dof_blur_near_amount");
		return ptrcall!(float)(_GODOT_get_dof_blur_near_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_dof_blur_near_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_quality") = _GODOT_set_dof_blur_near_quality;
	void set_dof_blur_near_quality(in int level)
	{
		_GODOT_set_dof_blur_near_quality.bind("Environment", "set_dof_blur_near_quality");
		ptrcall!(void)(_GODOT_set_dof_blur_near_quality, _godot_object, level);
	}
	package(godot) static GodotMethod!(Environment.DOFBlurQuality) _GODOT_get_dof_blur_near_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_quality") = _GODOT_get_dof_blur_near_quality;
	Environment.DOFBlurQuality get_dof_blur_near_quality() const
	{
		_GODOT_get_dof_blur_near_quality.bind("Environment", "get_dof_blur_near_quality");
		return ptrcall!(Environment.DOFBlurQuality)(_GODOT_get_dof_blur_near_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_glow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_enabled") = _GODOT_set_glow_enabled;
	void set_glow_enabled(in bool enabled)
	{
		_GODOT_set_glow_enabled.bind("Environment", "set_glow_enabled");
		ptrcall!(void)(_GODOT_set_glow_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_glow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_glow_enabled") = _GODOT_is_glow_enabled;
	bool is_glow_enabled() const
	{
		_GODOT_is_glow_enabled.bind("Environment", "is_glow_enabled");
		return ptrcall!(bool)(_GODOT_is_glow_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_glow_level;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_level") = _GODOT_set_glow_level;
	void set_glow_level(in int idx, in bool enabled)
	{
		_GODOT_set_glow_level.bind("Environment", "set_glow_level");
		ptrcall!(void)(_GODOT_set_glow_level, _godot_object, idx, enabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_glow_level_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_glow_level_enabled") = _GODOT_is_glow_level_enabled;
	bool is_glow_level_enabled(in int idx) const
	{
		_GODOT_is_glow_level_enabled.bind("Environment", "is_glow_level_enabled");
		return ptrcall!(bool)(_GODOT_is_glow_level_enabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_glow_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_intensity") = _GODOT_set_glow_intensity;
	void set_glow_intensity(in float intensity)
	{
		_GODOT_set_glow_intensity.bind("Environment", "set_glow_intensity");
		ptrcall!(void)(_GODOT_set_glow_intensity, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_glow_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_intensity") = _GODOT_get_glow_intensity;
	float get_glow_intensity() const
	{
		_GODOT_get_glow_intensity.bind("Environment", "get_glow_intensity");
		return ptrcall!(float)(_GODOT_get_glow_intensity, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_glow_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_strength") = _GODOT_set_glow_strength;
	void set_glow_strength(in float strength)
	{
		_GODOT_set_glow_strength.bind("Environment", "set_glow_strength");
		ptrcall!(void)(_GODOT_set_glow_strength, _godot_object, strength);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_glow_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_strength") = _GODOT_get_glow_strength;
	float get_glow_strength() const
	{
		_GODOT_get_glow_strength.bind("Environment", "get_glow_strength");
		return ptrcall!(float)(_GODOT_get_glow_strength, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_glow_bloom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_bloom") = _GODOT_set_glow_bloom;
	void set_glow_bloom(in float amount)
	{
		_GODOT_set_glow_bloom.bind("Environment", "set_glow_bloom");
		ptrcall!(void)(_GODOT_set_glow_bloom, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_glow_bloom;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_bloom") = _GODOT_get_glow_bloom;
	float get_glow_bloom() const
	{
		_GODOT_get_glow_bloom.bind("Environment", "get_glow_bloom");
		return ptrcall!(float)(_GODOT_get_glow_bloom, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_glow_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_blend_mode") = _GODOT_set_glow_blend_mode;
	void set_glow_blend_mode(in int mode)
	{
		_GODOT_set_glow_blend_mode.bind("Environment", "set_glow_blend_mode");
		ptrcall!(void)(_GODOT_set_glow_blend_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Environment.GlowBlendMode) _GODOT_get_glow_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_blend_mode") = _GODOT_get_glow_blend_mode;
	Environment.GlowBlendMode get_glow_blend_mode() const
	{
		_GODOT_get_glow_blend_mode.bind("Environment", "get_glow_blend_mode");
		return ptrcall!(Environment.GlowBlendMode)(_GODOT_get_glow_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_glow_hdr_bleed_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_hdr_bleed_threshold") = _GODOT_set_glow_hdr_bleed_threshold;
	void set_glow_hdr_bleed_threshold(in float threshold)
	{
		_GODOT_set_glow_hdr_bleed_threshold.bind("Environment", "set_glow_hdr_bleed_threshold");
		ptrcall!(void)(_GODOT_set_glow_hdr_bleed_threshold, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_glow_hdr_bleed_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_hdr_bleed_threshold") = _GODOT_get_glow_hdr_bleed_threshold;
	float get_glow_hdr_bleed_threshold() const
	{
		_GODOT_get_glow_hdr_bleed_threshold.bind("Environment", "get_glow_hdr_bleed_threshold");
		return ptrcall!(float)(_GODOT_get_glow_hdr_bleed_threshold, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_glow_hdr_bleed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_hdr_bleed_scale") = _GODOT_set_glow_hdr_bleed_scale;
	void set_glow_hdr_bleed_scale(in float scale)
	{
		_GODOT_set_glow_hdr_bleed_scale.bind("Environment", "set_glow_hdr_bleed_scale");
		ptrcall!(void)(_GODOT_set_glow_hdr_bleed_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_glow_hdr_bleed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_hdr_bleed_scale") = _GODOT_get_glow_hdr_bleed_scale;
	float get_glow_hdr_bleed_scale() const
	{
		_GODOT_get_glow_hdr_bleed_scale.bind("Environment", "get_glow_hdr_bleed_scale");
		return ptrcall!(float)(_GODOT_get_glow_hdr_bleed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_glow_bicubic_upscale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_bicubic_upscale") = _GODOT_set_glow_bicubic_upscale;
	void set_glow_bicubic_upscale(in bool enabled)
	{
		_GODOT_set_glow_bicubic_upscale.bind("Environment", "set_glow_bicubic_upscale");
		ptrcall!(void)(_GODOT_set_glow_bicubic_upscale, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_glow_bicubic_upscale_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_glow_bicubic_upscale_enabled") = _GODOT_is_glow_bicubic_upscale_enabled;
	bool is_glow_bicubic_upscale_enabled() const
	{
		_GODOT_is_glow_bicubic_upscale_enabled.bind("Environment", "is_glow_bicubic_upscale_enabled");
		return ptrcall!(bool)(_GODOT_is_glow_bicubic_upscale_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_adjustment_enable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_enable") = _GODOT_set_adjustment_enable;
	void set_adjustment_enable(in bool enabled)
	{
		_GODOT_set_adjustment_enable.bind("Environment", "set_adjustment_enable");
		ptrcall!(void)(_GODOT_set_adjustment_enable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_adjustment_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_adjustment_enabled") = _GODOT_is_adjustment_enabled;
	bool is_adjustment_enabled() const
	{
		_GODOT_is_adjustment_enabled.bind("Environment", "is_adjustment_enabled");
		return ptrcall!(bool)(_GODOT_is_adjustment_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_adjustment_brightness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_brightness") = _GODOT_set_adjustment_brightness;
	void set_adjustment_brightness(in float brightness)
	{
		_GODOT_set_adjustment_brightness.bind("Environment", "set_adjustment_brightness");
		ptrcall!(void)(_GODOT_set_adjustment_brightness, _godot_object, brightness);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_adjustment_brightness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_brightness") = _GODOT_get_adjustment_brightness;
	float get_adjustment_brightness() const
	{
		_GODOT_get_adjustment_brightness.bind("Environment", "get_adjustment_brightness");
		return ptrcall!(float)(_GODOT_get_adjustment_brightness, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_adjustment_contrast;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_contrast") = _GODOT_set_adjustment_contrast;
	void set_adjustment_contrast(in float contrast)
	{
		_GODOT_set_adjustment_contrast.bind("Environment", "set_adjustment_contrast");
		ptrcall!(void)(_GODOT_set_adjustment_contrast, _godot_object, contrast);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_adjustment_contrast;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_contrast") = _GODOT_get_adjustment_contrast;
	float get_adjustment_contrast() const
	{
		_GODOT_get_adjustment_contrast.bind("Environment", "get_adjustment_contrast");
		return ptrcall!(float)(_GODOT_get_adjustment_contrast, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_adjustment_saturation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_saturation") = _GODOT_set_adjustment_saturation;
	void set_adjustment_saturation(in float saturation)
	{
		_GODOT_set_adjustment_saturation.bind("Environment", "set_adjustment_saturation");
		ptrcall!(void)(_GODOT_set_adjustment_saturation, _godot_object, saturation);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_adjustment_saturation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_saturation") = _GODOT_get_adjustment_saturation;
	float get_adjustment_saturation() const
	{
		_GODOT_get_adjustment_saturation.bind("Environment", "get_adjustment_saturation");
		return ptrcall!(float)(_GODOT_get_adjustment_saturation, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_adjustment_color_correction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_color_correction") = _GODOT_set_adjustment_color_correction;
	void set_adjustment_color_correction(in Texture color_correction)
	{
		_GODOT_set_adjustment_color_correction.bind("Environment", "set_adjustment_color_correction");
		ptrcall!(void)(_GODOT_set_adjustment_color_correction, _godot_object, color_correction);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_adjustment_color_correction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_color_correction") = _GODOT_get_adjustment_color_correction;
	Texture get_adjustment_color_correction() const
	{
		_GODOT_get_adjustment_color_correction.bind("Environment", "get_adjustment_color_correction");
		return ptrcall!(Texture)(_GODOT_get_adjustment_color_correction, _godot_object);
	}
}
