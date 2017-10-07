module godot.audioserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.audioeffect;
import godot.audiobuslayout;
@GodotBaseClass struct AudioServerSingleton
{
	static immutable string _GODOT_internal_name = "AudioServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "AudioServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioServer");
		if(constructor is null) return typeof(this).init;
		return cast(AudioServerSingleton)(constructor());
	}
	enum SpeakerMode : int
	{
		SPEAKER_MODE_STEREO = 0,
		SPEAKER_SURROUND_71 = 3,
		SPEAKER_SURROUND_51 = 2,
	}
	enum int SPEAKER_MODE_STEREO = 0;
	enum int SPEAKER_SURROUND_71 = 3;
	enum int SPEAKER_SURROUND_51 = 2;
	package(godot) static GodotMethod!(void, int) _GODOT_set_bus_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_count") = _GODOT_set_bus_count;
	void set_bus_count(in int amount)
	{
		_GODOT_set_bus_count.bind("AudioServer", "set_bus_count");
		ptrcall!(void)(_GODOT_set_bus_count, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_bus_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_count") = _GODOT_get_bus_count;
	int get_bus_count() const
	{
		_GODOT_get_bus_count.bind("AudioServer", "get_bus_count");
		return ptrcall!(int)(_GODOT_get_bus_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_bus") = _GODOT_remove_bus;
	void remove_bus(in int index)
	{
		_GODOT_remove_bus.bind("AudioServer", "remove_bus");
		ptrcall!(void)(_GODOT_remove_bus, _godot_object, index);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_add_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bus") = _GODOT_add_bus;
	void add_bus(in int at_position = -1)
	{
		_GODOT_add_bus.bind("AudioServer", "add_bus");
		ptrcall!(void)(_GODOT_add_bus, _godot_object, at_position);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_move_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_bus") = _GODOT_move_bus;
	void move_bus(in int index, in int to_index)
	{
		_GODOT_move_bus.bind("AudioServer", "move_bus");
		ptrcall!(void)(_GODOT_move_bus, _godot_object, index, to_index);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_bus_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_name") = _GODOT_set_bus_name;
	void set_bus_name(StringArg1)(in int bus_idx, in StringArg1 name)
	{
		_GODOT_set_bus_name.bind("AudioServer", "set_bus_name");
		ptrcall!(void)(_GODOT_set_bus_name, _godot_object, bus_idx, name);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_bus_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_name") = _GODOT_get_bus_name;
	String get_bus_name(in int bus_idx) const
	{
		_GODOT_get_bus_name.bind("AudioServer", "get_bus_name");
		return ptrcall!(String)(_GODOT_get_bus_name, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_get_bus_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_index") = _GODOT_get_bus_index;
	int get_bus_index(StringArg0)(in StringArg0 bus_name) const
	{
		_GODOT_get_bus_index.bind("AudioServer", "get_bus_index");
		return ptrcall!(int)(_GODOT_get_bus_index, _godot_object, bus_name);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_bus_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_volume_db") = _GODOT_set_bus_volume_db;
	void set_bus_volume_db(in int bus_idx, in float volume_db)
	{
		_GODOT_set_bus_volume_db.bind("AudioServer", "set_bus_volume_db");
		ptrcall!(void)(_GODOT_set_bus_volume_db, _godot_object, bus_idx, volume_db);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_bus_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_volume_db") = _GODOT_get_bus_volume_db;
	float get_bus_volume_db(in int bus_idx) const
	{
		_GODOT_get_bus_volume_db.bind("AudioServer", "get_bus_volume_db");
		return ptrcall!(float)(_GODOT_get_bus_volume_db, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_bus_send;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_send") = _GODOT_set_bus_send;
	void set_bus_send(StringArg1)(in int bus_idx, in StringArg1 send)
	{
		_GODOT_set_bus_send.bind("AudioServer", "set_bus_send");
		ptrcall!(void)(_GODOT_set_bus_send, _godot_object, bus_idx, send);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_bus_send;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_send") = _GODOT_get_bus_send;
	String get_bus_send(in int bus_idx) const
	{
		_GODOT_get_bus_send.bind("AudioServer", "get_bus_send");
		return ptrcall!(String)(_GODOT_get_bus_send, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_bus_solo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_solo") = _GODOT_set_bus_solo;
	void set_bus_solo(in int bus_idx, in bool enable)
	{
		_GODOT_set_bus_solo.bind("AudioServer", "set_bus_solo");
		ptrcall!(void)(_GODOT_set_bus_solo, _godot_object, bus_idx, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_bus_solo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_solo") = _GODOT_is_bus_solo;
	bool is_bus_solo(in int bus_idx) const
	{
		_GODOT_is_bus_solo.bind("AudioServer", "is_bus_solo");
		return ptrcall!(bool)(_GODOT_is_bus_solo, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_bus_mute;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_mute") = _GODOT_set_bus_mute;
	void set_bus_mute(in int bus_idx, in bool enable)
	{
		_GODOT_set_bus_mute.bind("AudioServer", "set_bus_mute");
		ptrcall!(void)(_GODOT_set_bus_mute, _godot_object, bus_idx, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_bus_mute;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_mute") = _GODOT_is_bus_mute;
	bool is_bus_mute(in int bus_idx) const
	{
		_GODOT_is_bus_mute.bind("AudioServer", "is_bus_mute");
		return ptrcall!(bool)(_GODOT_is_bus_mute, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_bus_bypass_effects;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_bypass_effects") = _GODOT_set_bus_bypass_effects;
	void set_bus_bypass_effects(in int bus_idx, in bool enable)
	{
		_GODOT_set_bus_bypass_effects.bind("AudioServer", "set_bus_bypass_effects");
		ptrcall!(void)(_GODOT_set_bus_bypass_effects, _godot_object, bus_idx, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_bus_bypassing_effects;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_bypassing_effects") = _GODOT_is_bus_bypassing_effects;
	bool is_bus_bypassing_effects(in int bus_idx) const
	{
		_GODOT_is_bus_bypassing_effects.bind("AudioServer", "is_bus_bypassing_effects");
		return ptrcall!(bool)(_GODOT_is_bus_bypassing_effects, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, int, AudioEffect, int) _GODOT_add_bus_effect;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bus_effect") = _GODOT_add_bus_effect;
	void add_bus_effect(in int bus_idx, in AudioEffect effect, in int at_position = -1)
	{
		_GODOT_add_bus_effect.bind("AudioServer", "add_bus_effect");
		ptrcall!(void)(_GODOT_add_bus_effect, _godot_object, bus_idx, effect, at_position);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_remove_bus_effect;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_bus_effect") = _GODOT_remove_bus_effect;
	void remove_bus_effect(in int bus_idx, in int effect_idx)
	{
		_GODOT_remove_bus_effect.bind("AudioServer", "remove_bus_effect");
		ptrcall!(void)(_GODOT_remove_bus_effect, _godot_object, bus_idx, effect_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_bus_effect_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_effect_count") = _GODOT_get_bus_effect_count;
	int get_bus_effect_count(in int bus_idx)
	{
		_GODOT_get_bus_effect_count.bind("AudioServer", "get_bus_effect_count");
		return ptrcall!(int)(_GODOT_get_bus_effect_count, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(AudioEffect, int, int) _GODOT_get_bus_effect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_effect") = _GODOT_get_bus_effect;
	AudioEffect get_bus_effect(in int bus_idx, in int effect_idx)
	{
		_GODOT_get_bus_effect.bind("AudioServer", "get_bus_effect");
		return ptrcall!(AudioEffect)(_GODOT_get_bus_effect, _godot_object, bus_idx, effect_idx);
	}
	package(godot) static GodotMethod!(void, int, int, int) _GODOT_swap_bus_effects;
	package(godot) alias _GODOT_methodBindInfo(string name : "swap_bus_effects") = _GODOT_swap_bus_effects;
	void swap_bus_effects(in int bus_idx, in int effect_idx, in int by_effect_idx)
	{
		_GODOT_swap_bus_effects.bind("AudioServer", "swap_bus_effects");
		ptrcall!(void)(_GODOT_swap_bus_effects, _godot_object, bus_idx, effect_idx, by_effect_idx);
	}
	package(godot) static GodotMethod!(void, int, int, bool) _GODOT_set_bus_effect_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_effect_enabled") = _GODOT_set_bus_effect_enabled;
	void set_bus_effect_enabled(in int bus_idx, in int effect_idx, in bool enabled)
	{
		_GODOT_set_bus_effect_enabled.bind("AudioServer", "set_bus_effect_enabled");
		ptrcall!(void)(_GODOT_set_bus_effect_enabled, _godot_object, bus_idx, effect_idx, enabled);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_is_bus_effect_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_effect_enabled") = _GODOT_is_bus_effect_enabled;
	bool is_bus_effect_enabled(in int bus_idx, in int effect_idx) const
	{
		_GODOT_is_bus_effect_enabled.bind("AudioServer", "is_bus_effect_enabled");
		return ptrcall!(bool)(_GODOT_is_bus_effect_enabled, _godot_object, bus_idx, effect_idx);
	}
	package(godot) static GodotMethod!(float, int, int) _GODOT_get_bus_peak_volume_left_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_peak_volume_left_db") = _GODOT_get_bus_peak_volume_left_db;
	float get_bus_peak_volume_left_db(in int bus_idx, in int channel) const
	{
		_GODOT_get_bus_peak_volume_left_db.bind("AudioServer", "get_bus_peak_volume_left_db");
		return ptrcall!(float)(_GODOT_get_bus_peak_volume_left_db, _godot_object, bus_idx, channel);
	}
	package(godot) static GodotMethod!(float, int, int) _GODOT_get_bus_peak_volume_right_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_peak_volume_right_db") = _GODOT_get_bus_peak_volume_right_db;
	float get_bus_peak_volume_right_db(in int bus_idx, in int channel) const
	{
		_GODOT_get_bus_peak_volume_right_db.bind("AudioServer", "get_bus_peak_volume_right_db");
		return ptrcall!(float)(_GODOT_get_bus_peak_volume_right_db, _godot_object, bus_idx, channel);
	}
	package(godot) static GodotMethod!(void) _GODOT_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "lock") = _GODOT_lock;
	void lock()
	{
		_GODOT_lock.bind("AudioServer", "lock");
		ptrcall!(void)(_GODOT_lock, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unlock;
	package(godot) alias _GODOT_methodBindInfo(string name : "unlock") = _GODOT_unlock;
	void unlock()
	{
		_GODOT_unlock.bind("AudioServer", "unlock");
		ptrcall!(void)(_GODOT_unlock, _godot_object);
	}
	package(godot) static GodotMethod!(AudioServer.SpeakerMode) _GODOT_get_speaker_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speaker_mode") = _GODOT_get_speaker_mode;
	AudioServer.SpeakerMode get_speaker_mode() const
	{
		_GODOT_get_speaker_mode.bind("AudioServer", "get_speaker_mode");
		return ptrcall!(AudioServer.SpeakerMode)(_GODOT_get_speaker_mode, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_mix_rate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix_rate") = _GODOT_get_mix_rate;
	float get_mix_rate() const
	{
		_GODOT_get_mix_rate.bind("AudioServer", "get_mix_rate");
		return ptrcall!(float)(_GODOT_get_mix_rate, _godot_object);
	}
	package(godot) static GodotMethod!(void, AudioBusLayout) _GODOT_set_bus_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_layout") = _GODOT_set_bus_layout;
	void set_bus_layout(in AudioBusLayout bus_layout)
	{
		_GODOT_set_bus_layout.bind("AudioServer", "set_bus_layout");
		ptrcall!(void)(_GODOT_set_bus_layout, _godot_object, bus_layout);
	}
	package(godot) static GodotMethod!(AudioBusLayout) _GODOT_generate_bus_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_bus_layout") = _GODOT_generate_bus_layout;
	AudioBusLayout generate_bus_layout() const
	{
		_GODOT_generate_bus_layout.bind("AudioServer", "generate_bus_layout");
		return ptrcall!(AudioBusLayout)(_GODOT_generate_bus_layout, _godot_object);
	}
}
@property pragma(inline, true)
AudioServerSingleton AudioServer()
{
	return AudioServerSingleton._GODOT_singleton();
}
