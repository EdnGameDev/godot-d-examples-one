module godot.audiostreamplayer3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.audiostream;
@GodotBaseClass struct AudioStreamPlayer3D
{
	static immutable string _GODOT_internal_name = "AudioStreamPlayer3D";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioStreamPlayer3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamPlayer3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamPlayer3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioStreamPlayer3D");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamPlayer3D)(constructor());
	}
	enum AttenuationModel : int
	{
		ATTENUATION_INVERSE_DISTANCE = 0,
		ATTENUATION_INVERSE_SQUARE_DISTANCE = 1,
		ATTENUATION_LOGARITHMIC = 2,
	}
	enum OutOfRangeMode : int
	{
		OUT_OF_RANGE_MIX = 0,
		OUT_OF_RANGE_PAUSE = 1,
	}
	enum DopplerTracking : int
	{
		DOPPLER_TRACKING_DISABLED = 0,
		DOPPLER_TRACKING_FIXED_STEP = 2,
		DOPPLER_TRACKING_IDLE_STEP = 1,
	}
	enum int ATTENUATION_INVERSE_DISTANCE = 0;
	enum int OUT_OF_RANGE_MIX = 0;
	enum int DOPPLER_TRACKING_DISABLED = 0;
	enum int ATTENUATION_INVERSE_SQUARE_DISTANCE = 1;
	enum int DOPPLER_TRACKING_IDLE_STEP = 1;
	enum int DOPPLER_TRACKING_FIXED_STEP = 2;
	enum int OUT_OF_RANGE_PAUSE = 1;
	enum int ATTENUATION_LOGARITHMIC = 2;
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	void set_stream(in AudioStream stream)
	{
		_GODOT_set_stream.bind("AudioStreamPlayer3D", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	AudioStream get_stream() const
	{
		_GODOT_get_stream.bind("AudioStreamPlayer3D", "get_stream");
		return ptrcall!(AudioStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_unit_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_db") = _GODOT_set_unit_db;
	void set_unit_db(in float unit_db)
	{
		_GODOT_set_unit_db.bind("AudioStreamPlayer3D", "set_unit_db");
		ptrcall!(void)(_GODOT_set_unit_db, _godot_object, unit_db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_unit_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_db") = _GODOT_get_unit_db;
	float get_unit_db() const
	{
		_GODOT_get_unit_db.bind("AudioStreamPlayer3D", "get_unit_db");
		return ptrcall!(float)(_GODOT_get_unit_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_unit_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_size") = _GODOT_set_unit_size;
	void set_unit_size(in float unit_size)
	{
		_GODOT_set_unit_size.bind("AudioStreamPlayer3D", "set_unit_size");
		ptrcall!(void)(_GODOT_set_unit_size, _godot_object, unit_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_unit_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_size") = _GODOT_get_unit_size;
	float get_unit_size() const
	{
		_GODOT_get_unit_size.bind("AudioStreamPlayer3D", "get_unit_size");
		return ptrcall!(float)(_GODOT_get_unit_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_max_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_db") = _GODOT_set_max_db;
	void set_max_db(in float max_db)
	{
		_GODOT_set_max_db.bind("AudioStreamPlayer3D", "set_max_db");
		ptrcall!(void)(_GODOT_set_max_db, _godot_object, max_db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_max_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_db") = _GODOT_get_max_db;
	float get_max_db() const
	{
		_GODOT_get_max_db.bind("AudioStreamPlayer3D", "get_max_db");
		return ptrcall!(float)(_GODOT_get_max_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	void play(in float from_position = 0)
	{
		_GODOT_play.bind("AudioStreamPlayer3D", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, from_position);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	void seek(in float to_position)
	{
		_GODOT_seek.bind("AudioStreamPlayer3D", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("AudioStreamPlayer3D", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	bool is_playing() const
	{
		_GODOT_is_playing.bind("AudioStreamPlayer3D", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_playback_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_playback_position") = _GODOT_get_playback_position;
	float get_playback_position()
	{
		_GODOT_get_playback_position.bind("AudioStreamPlayer3D", "get_playback_position");
		return ptrcall!(float)(_GODOT_get_playback_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	void set_bus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("AudioStreamPlayer3D", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	String get_bus() const
	{
		_GODOT_get_bus.bind("AudioStreamPlayer3D", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	void set_autoplay(in bool enable)
	{
		_GODOT_set_autoplay.bind("AudioStreamPlayer3D", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_autoplay_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_autoplay_enabled") = _GODOT_is_autoplay_enabled;
	bool is_autoplay_enabled()
	{
		_GODOT_is_autoplay_enabled.bind("AudioStreamPlayer3D", "is_autoplay_enabled");
		return ptrcall!(bool)(_GODOT_is_autoplay_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_playing") = _GODOT__set_playing;
	void _set_playing(in bool enable)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_active") = _GODOT__is_active;
	bool _is_active() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_distance") = _GODOT_set_max_distance;
	void set_max_distance(in float metres)
	{
		_GODOT_set_max_distance.bind("AudioStreamPlayer3D", "set_max_distance");
		ptrcall!(void)(_GODOT_set_max_distance, _godot_object, metres);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_distance") = _GODOT_get_max_distance;
	float get_max_distance() const
	{
		_GODOT_get_max_distance.bind("AudioStreamPlayer3D", "get_max_distance");
		return ptrcall!(float)(_GODOT_get_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_area_mask") = _GODOT_set_area_mask;
	void set_area_mask(in int mask)
	{
		_GODOT_set_area_mask.bind("AudioStreamPlayer3D", "set_area_mask");
		ptrcall!(void)(_GODOT_set_area_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_area_mask") = _GODOT_get_area_mask;
	int get_area_mask() const
	{
		_GODOT_get_area_mask.bind("AudioStreamPlayer3D", "get_area_mask");
		return ptrcall!(int)(_GODOT_get_area_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_emission_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_angle") = _GODOT_set_emission_angle;
	void set_emission_angle(in float degrees)
	{
		_GODOT_set_emission_angle.bind("AudioStreamPlayer3D", "set_emission_angle");
		ptrcall!(void)(_GODOT_set_emission_angle, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_emission_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_angle") = _GODOT_get_emission_angle;
	float get_emission_angle() const
	{
		_GODOT_get_emission_angle.bind("AudioStreamPlayer3D", "get_emission_angle");
		return ptrcall!(float)(_GODOT_get_emission_angle, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_emission_angle_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_angle_enabled") = _GODOT_set_emission_angle_enabled;
	void set_emission_angle_enabled(in bool enabled)
	{
		_GODOT_set_emission_angle_enabled.bind("AudioStreamPlayer3D", "set_emission_angle_enabled");
		ptrcall!(void)(_GODOT_set_emission_angle_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_emission_angle_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_emission_angle_enabled") = _GODOT_is_emission_angle_enabled;
	bool is_emission_angle_enabled() const
	{
		_GODOT_is_emission_angle_enabled.bind("AudioStreamPlayer3D", "is_emission_angle_enabled");
		return ptrcall!(bool)(_GODOT_is_emission_angle_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_emission_angle_filter_attenuation_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_angle_filter_attenuation_db") = _GODOT_set_emission_angle_filter_attenuation_db;
	void set_emission_angle_filter_attenuation_db(in float db)
	{
		_GODOT_set_emission_angle_filter_attenuation_db.bind("AudioStreamPlayer3D", "set_emission_angle_filter_attenuation_db");
		ptrcall!(void)(_GODOT_set_emission_angle_filter_attenuation_db, _godot_object, db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_emission_angle_filter_attenuation_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_angle_filter_attenuation_db") = _GODOT_get_emission_angle_filter_attenuation_db;
	float get_emission_angle_filter_attenuation_db() const
	{
		_GODOT_get_emission_angle_filter_attenuation_db.bind("AudioStreamPlayer3D", "get_emission_angle_filter_attenuation_db");
		return ptrcall!(float)(_GODOT_get_emission_angle_filter_attenuation_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_attenuation_filter_cutoff_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation_filter_cutoff_hz") = _GODOT_set_attenuation_filter_cutoff_hz;
	void set_attenuation_filter_cutoff_hz(in float degrees)
	{
		_GODOT_set_attenuation_filter_cutoff_hz.bind("AudioStreamPlayer3D", "set_attenuation_filter_cutoff_hz");
		ptrcall!(void)(_GODOT_set_attenuation_filter_cutoff_hz, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_attenuation_filter_cutoff_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation_filter_cutoff_hz") = _GODOT_get_attenuation_filter_cutoff_hz;
	float get_attenuation_filter_cutoff_hz() const
	{
		_GODOT_get_attenuation_filter_cutoff_hz.bind("AudioStreamPlayer3D", "get_attenuation_filter_cutoff_hz");
		return ptrcall!(float)(_GODOT_get_attenuation_filter_cutoff_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_attenuation_filter_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation_filter_db") = _GODOT_set_attenuation_filter_db;
	void set_attenuation_filter_db(in float db)
	{
		_GODOT_set_attenuation_filter_db.bind("AudioStreamPlayer3D", "set_attenuation_filter_db");
		ptrcall!(void)(_GODOT_set_attenuation_filter_db, _godot_object, db);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_attenuation_filter_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation_filter_db") = _GODOT_get_attenuation_filter_db;
	float get_attenuation_filter_db() const
	{
		_GODOT_get_attenuation_filter_db.bind("AudioStreamPlayer3D", "get_attenuation_filter_db");
		return ptrcall!(float)(_GODOT_get_attenuation_filter_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_attenuation_model;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation_model") = _GODOT_set_attenuation_model;
	void set_attenuation_model(in int model)
	{
		_GODOT_set_attenuation_model.bind("AudioStreamPlayer3D", "set_attenuation_model");
		ptrcall!(void)(_GODOT_set_attenuation_model, _godot_object, model);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer3D.AttenuationModel) _GODOT_get_attenuation_model;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation_model") = _GODOT_get_attenuation_model;
	AudioStreamPlayer3D.AttenuationModel get_attenuation_model() const
	{
		_GODOT_get_attenuation_model.bind("AudioStreamPlayer3D", "get_attenuation_model");
		return ptrcall!(AudioStreamPlayer3D.AttenuationModel)(_GODOT_get_attenuation_model, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_out_of_range_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_out_of_range_mode") = _GODOT_set_out_of_range_mode;
	void set_out_of_range_mode(in int mode)
	{
		_GODOT_set_out_of_range_mode.bind("AudioStreamPlayer3D", "set_out_of_range_mode");
		ptrcall!(void)(_GODOT_set_out_of_range_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer3D.OutOfRangeMode) _GODOT_get_out_of_range_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_out_of_range_mode") = _GODOT_get_out_of_range_mode;
	AudioStreamPlayer3D.OutOfRangeMode get_out_of_range_mode() const
	{
		_GODOT_get_out_of_range_mode.bind("AudioStreamPlayer3D", "get_out_of_range_mode");
		return ptrcall!(AudioStreamPlayer3D.OutOfRangeMode)(_GODOT_get_out_of_range_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_doppler_tracking") = _GODOT_set_doppler_tracking;
	void set_doppler_tracking(in int mode)
	{
		_GODOT_set_doppler_tracking.bind("AudioStreamPlayer3D", "set_doppler_tracking");
		ptrcall!(void)(_GODOT_set_doppler_tracking, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer3D.DopplerTracking) _GODOT_get_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_doppler_tracking") = _GODOT_get_doppler_tracking;
	AudioStreamPlayer3D.DopplerTracking get_doppler_tracking() const
	{
		_GODOT_get_doppler_tracking.bind("AudioStreamPlayer3D", "get_doppler_tracking");
		return ptrcall!(AudioStreamPlayer3D.DopplerTracking)(_GODOT_get_doppler_tracking, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__bus_layout_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_bus_layout_changed") = _GODOT__bus_layout_changed;
	void _bus_layout_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
