module godot.proceduralsky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.sky;
import godot.image;
@GodotBaseClass struct ProceduralSky
{
	static immutable string _GODOT_internal_name = "ProceduralSky";
public:
	union { godot_object _godot_object; Sky base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ProceduralSky other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProceduralSky opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProceduralSky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ProceduralSky");
		if(constructor is null) return typeof(this).init;
		return cast(ProceduralSky)(constructor());
	}
	enum TextureSize : int
	{
		TEXTURE_SIZE_MAX = 5,
		TEXTURE_SIZE_256 = 0,
		TEXTURE_SIZE_4096 = 4,
		TEXTURE_SIZE_512 = 1,
		TEXTURE_SIZE_1024 = 2,
		TEXTURE_SIZE_2048 = 3,
	}
	enum int TEXTURE_SIZE_MAX = 5;
	enum int TEXTURE_SIZE_256 = 0;
	enum int TEXTURE_SIZE_4096 = 4;
	enum int TEXTURE_SIZE_512 = 1;
	enum int TEXTURE_SIZE_1024 = 2;
	enum int TEXTURE_SIZE_2048 = 3;
	package(godot) static GodotMethod!(void) _GODOT__update_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_sky") = _GODOT__update_sky;
	void _update_sky()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_sky");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_sky_top_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_top_color") = _GODOT_set_sky_top_color;
	void set_sky_top_color(in Color color)
	{
		_GODOT_set_sky_top_color.bind("ProceduralSky", "set_sky_top_color");
		ptrcall!(void)(_GODOT_set_sky_top_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_sky_top_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_top_color") = _GODOT_get_sky_top_color;
	Color get_sky_top_color() const
	{
		_GODOT_get_sky_top_color.bind("ProceduralSky", "get_sky_top_color");
		return ptrcall!(Color)(_GODOT_get_sky_top_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_sky_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_horizon_color") = _GODOT_set_sky_horizon_color;
	void set_sky_horizon_color(in Color color)
	{
		_GODOT_set_sky_horizon_color.bind("ProceduralSky", "set_sky_horizon_color");
		ptrcall!(void)(_GODOT_set_sky_horizon_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_sky_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_horizon_color") = _GODOT_get_sky_horizon_color;
	Color get_sky_horizon_color() const
	{
		_GODOT_get_sky_horizon_color.bind("ProceduralSky", "get_sky_horizon_color");
		return ptrcall!(Color)(_GODOT_get_sky_horizon_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sky_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_curve") = _GODOT_set_sky_curve;
	void set_sky_curve(in float curve)
	{
		_GODOT_set_sky_curve.bind("ProceduralSky", "set_sky_curve");
		ptrcall!(void)(_GODOT_set_sky_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sky_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_curve") = _GODOT_get_sky_curve;
	float get_sky_curve() const
	{
		_GODOT_get_sky_curve.bind("ProceduralSky", "get_sky_curve");
		return ptrcall!(float)(_GODOT_get_sky_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sky_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_energy") = _GODOT_set_sky_energy;
	void set_sky_energy(in float energy)
	{
		_GODOT_set_sky_energy.bind("ProceduralSky", "set_sky_energy");
		ptrcall!(void)(_GODOT_set_sky_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sky_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_energy") = _GODOT_get_sky_energy;
	float get_sky_energy() const
	{
		_GODOT_get_sky_energy.bind("ProceduralSky", "get_sky_energy");
		return ptrcall!(float)(_GODOT_get_sky_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ground_bottom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_bottom_color") = _GODOT_set_ground_bottom_color;
	void set_ground_bottom_color(in Color color)
	{
		_GODOT_set_ground_bottom_color.bind("ProceduralSky", "set_ground_bottom_color");
		ptrcall!(void)(_GODOT_set_ground_bottom_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ground_bottom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_bottom_color") = _GODOT_get_ground_bottom_color;
	Color get_ground_bottom_color() const
	{
		_GODOT_get_ground_bottom_color.bind("ProceduralSky", "get_ground_bottom_color");
		return ptrcall!(Color)(_GODOT_get_ground_bottom_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ground_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_horizon_color") = _GODOT_set_ground_horizon_color;
	void set_ground_horizon_color(in Color color)
	{
		_GODOT_set_ground_horizon_color.bind("ProceduralSky", "set_ground_horizon_color");
		ptrcall!(void)(_GODOT_set_ground_horizon_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ground_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_horizon_color") = _GODOT_get_ground_horizon_color;
	Color get_ground_horizon_color() const
	{
		_GODOT_get_ground_horizon_color.bind("ProceduralSky", "get_ground_horizon_color");
		return ptrcall!(Color)(_GODOT_get_ground_horizon_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ground_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_curve") = _GODOT_set_ground_curve;
	void set_ground_curve(in float curve)
	{
		_GODOT_set_ground_curve.bind("ProceduralSky", "set_ground_curve");
		ptrcall!(void)(_GODOT_set_ground_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ground_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_curve") = _GODOT_get_ground_curve;
	float get_ground_curve() const
	{
		_GODOT_get_ground_curve.bind("ProceduralSky", "get_ground_curve");
		return ptrcall!(float)(_GODOT_get_ground_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ground_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_energy") = _GODOT_set_ground_energy;
	void set_ground_energy(in float energy)
	{
		_GODOT_set_ground_energy.bind("ProceduralSky", "set_ground_energy");
		ptrcall!(void)(_GODOT_set_ground_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ground_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_energy") = _GODOT_get_ground_energy;
	float get_ground_energy() const
	{
		_GODOT_get_ground_energy.bind("ProceduralSky", "get_ground_energy");
		return ptrcall!(float)(_GODOT_get_ground_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_color") = _GODOT_set_sun_color;
	void set_sun_color(in Color color)
	{
		_GODOT_set_sun_color.bind("ProceduralSky", "set_sun_color");
		ptrcall!(void)(_GODOT_set_sun_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_color") = _GODOT_get_sun_color;
	Color get_sun_color() const
	{
		_GODOT_get_sun_color.bind("ProceduralSky", "get_sun_color");
		return ptrcall!(Color)(_GODOT_get_sun_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sun_latitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_latitude") = _GODOT_set_sun_latitude;
	void set_sun_latitude(in float degrees)
	{
		_GODOT_set_sun_latitude.bind("ProceduralSky", "set_sun_latitude");
		ptrcall!(void)(_GODOT_set_sun_latitude, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sun_latitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_latitude") = _GODOT_get_sun_latitude;
	float get_sun_latitude() const
	{
		_GODOT_get_sun_latitude.bind("ProceduralSky", "get_sun_latitude");
		return ptrcall!(float)(_GODOT_get_sun_latitude, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sun_longitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_longitude") = _GODOT_set_sun_longitude;
	void set_sun_longitude(in float degrees)
	{
		_GODOT_set_sun_longitude.bind("ProceduralSky", "set_sun_longitude");
		ptrcall!(void)(_GODOT_set_sun_longitude, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sun_longitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_longitude") = _GODOT_get_sun_longitude;
	float get_sun_longitude() const
	{
		_GODOT_get_sun_longitude.bind("ProceduralSky", "get_sun_longitude");
		return ptrcall!(float)(_GODOT_get_sun_longitude, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sun_angle_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_angle_min") = _GODOT_set_sun_angle_min;
	void set_sun_angle_min(in float degrees)
	{
		_GODOT_set_sun_angle_min.bind("ProceduralSky", "set_sun_angle_min");
		ptrcall!(void)(_GODOT_set_sun_angle_min, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sun_angle_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_angle_min") = _GODOT_get_sun_angle_min;
	float get_sun_angle_min() const
	{
		_GODOT_get_sun_angle_min.bind("ProceduralSky", "get_sun_angle_min");
		return ptrcall!(float)(_GODOT_get_sun_angle_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sun_angle_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_angle_max") = _GODOT_set_sun_angle_max;
	void set_sun_angle_max(in float degrees)
	{
		_GODOT_set_sun_angle_max.bind("ProceduralSky", "set_sun_angle_max");
		ptrcall!(void)(_GODOT_set_sun_angle_max, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sun_angle_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_angle_max") = _GODOT_get_sun_angle_max;
	float get_sun_angle_max() const
	{
		_GODOT_get_sun_angle_max.bind("ProceduralSky", "get_sun_angle_max");
		return ptrcall!(float)(_GODOT_get_sun_angle_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sun_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_curve") = _GODOT_set_sun_curve;
	void set_sun_curve(in float curve)
	{
		_GODOT_set_sun_curve.bind("ProceduralSky", "set_sun_curve");
		ptrcall!(void)(_GODOT_set_sun_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sun_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_curve") = _GODOT_get_sun_curve;
	float get_sun_curve() const
	{
		_GODOT_get_sun_curve.bind("ProceduralSky", "get_sun_curve");
		return ptrcall!(float)(_GODOT_get_sun_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sun_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_energy") = _GODOT_set_sun_energy;
	void set_sun_energy(in float energy)
	{
		_GODOT_set_sun_energy.bind("ProceduralSky", "set_sun_energy");
		ptrcall!(void)(_GODOT_set_sun_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sun_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_energy") = _GODOT_get_sun_energy;
	float get_sun_energy() const
	{
		_GODOT_get_sun_energy.bind("ProceduralSky", "get_sun_energy");
		return ptrcall!(float)(_GODOT_get_sun_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_texture_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_size") = _GODOT_set_texture_size;
	void set_texture_size(in int size)
	{
		_GODOT_set_texture_size.bind("ProceduralSky", "set_texture_size");
		ptrcall!(void)(_GODOT_set_texture_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(ProceduralSky.TextureSize) _GODOT_get_texture_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_size") = _GODOT_get_texture_size;
	ProceduralSky.TextureSize get_texture_size() const
	{
		_GODOT_get_texture_size.bind("ProceduralSky", "get_texture_size");
		return ptrcall!(ProceduralSky.TextureSize)(_GODOT_get_texture_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT__thread_done;
	package(godot) alias _GODOT_methodBindInfo(string name : "_thread_done") = _GODOT__thread_done;
	void _thread_done(in Image image)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(image);
		String _GODOT_method_name = String("_thread_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
