module godot.timer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
@GodotBaseClass struct Timer
{
	static immutable string _GODOT_internal_name = "Timer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Timer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Timer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Timer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Timer");
		if(constructor is null) return typeof(this).init;
		return cast(Timer)(constructor());
	}
	enum TimerProcessMode : int
	{
		TIMER_PROCESS_FIXED = 0,
		TIMER_PROCESS_IDLE = 1,
	}
	enum int TIMER_PROCESS_FIXED = 0;
	enum int TIMER_PROCESS_IDLE = 1;
	package(godot) static GodotMethod!(void, float) _GODOT_set_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wait_time") = _GODOT_set_wait_time;
	void set_wait_time(in float time_sec)
	{
		_GODOT_set_wait_time.bind("Timer", "set_wait_time");
		ptrcall!(void)(_GODOT_set_wait_time, _godot_object, time_sec);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wait_time") = _GODOT_get_wait_time;
	float get_wait_time() const
	{
		_GODOT_get_wait_time.bind("Timer", "get_wait_time");
		return ptrcall!(float)(_GODOT_get_wait_time, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_shot") = _GODOT_set_one_shot;
	void set_one_shot(in bool enable)
	{
		_GODOT_set_one_shot.bind("Timer", "set_one_shot");
		ptrcall!(void)(_GODOT_set_one_shot, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_one_shot") = _GODOT_is_one_shot;
	bool is_one_shot() const
	{
		_GODOT_is_one_shot.bind("Timer", "is_one_shot");
		return ptrcall!(bool)(_GODOT_is_one_shot, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autostart;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autostart") = _GODOT_set_autostart;
	void set_autostart(in bool enable)
	{
		_GODOT_set_autostart.bind("Timer", "set_autostart");
		ptrcall!(void)(_GODOT_set_autostart, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_autostart;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_autostart") = _GODOT_has_autostart;
	bool has_autostart() const
	{
		_GODOT_has_autostart.bind("Timer", "has_autostart");
		return ptrcall!(bool)(_GODOT_has_autostart, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "start") = _GODOT_start;
	void start()
	{
		_GODOT_start.bind("Timer", "start");
		ptrcall!(void)(_GODOT_start, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("Timer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_paused") = _GODOT_set_paused;
	void set_paused(in bool paused)
	{
		_GODOT_set_paused.bind("Timer", "set_paused");
		ptrcall!(void)(_GODOT_set_paused, _godot_object, paused);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_paused") = _GODOT_is_paused;
	bool is_paused() const
	{
		_GODOT_is_paused.bind("Timer", "is_paused");
		return ptrcall!(bool)(_GODOT_is_paused, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stopped;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stopped") = _GODOT_is_stopped;
	bool is_stopped() const
	{
		_GODOT_is_stopped.bind("Timer", "is_stopped");
		return ptrcall!(bool)(_GODOT_is_stopped, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_time_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_left") = _GODOT_get_time_left;
	float get_time_left() const
	{
		_GODOT_get_time_left.bind("Timer", "get_time_left");
		return ptrcall!(float)(_GODOT_get_time_left, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_timer_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_timer_process_mode") = _GODOT_set_timer_process_mode;
	void set_timer_process_mode(in int mode)
	{
		_GODOT_set_timer_process_mode.bind("Timer", "set_timer_process_mode");
		ptrcall!(void)(_GODOT_set_timer_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Timer.TimerProcessMode) _GODOT_get_timer_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_timer_process_mode") = _GODOT_get_timer_process_mode;
	Timer.TimerProcessMode get_timer_process_mode() const
	{
		_GODOT_get_timer_process_mode.bind("Timer", "get_timer_process_mode");
		return ptrcall!(Timer.TimerProcessMode)(_GODOT_get_timer_process_mode, _godot_object);
	}
}
