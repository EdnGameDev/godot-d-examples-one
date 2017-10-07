module godot.os;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.image;
@GodotBaseClass struct OSSingleton
{
	static immutable string _GODOT_internal_name = "_OS";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_OS";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in OSSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OSSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OSSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_OS");
		if(constructor is null) return typeof(this).init;
		return cast(OSSingleton)(constructor());
	}
	enum SystemDir : int
	{
		SYSTEM_DIR_DCIM = 1,
		SYSTEM_DIR_PICTURES = 6,
		SYSTEM_DIR_DOCUMENTS = 2,
		SYSTEM_DIR_DESKTOP = 0,
		SYSTEM_DIR_MOVIES = 4,
		SYSTEM_DIR_MUSIC = 5,
		SYSTEM_DIR_RINGTONES = 7,
		SYSTEM_DIR_DOWNLOADS = 3,
	}
	enum ScreenOrientation : int
	{
		SCREEN_ORIENTATION_SENSOR = 6,
		SCREEN_ORIENTATION_REVERSE_LANDSCAPE = 2,
		SCREEN_ORIENTATION_PORTRAIT = 1,
		SCREEN_ORIENTATION_REVERSE_PORTRAIT = 3,
		SCREEN_ORIENTATION_LANDSCAPE = 0,
		SCREEN_ORIENTATION_SENSOR_LANDSCAPE = 4,
		SCREEN_ORIENTATION_SENSOR_PORTRAIT = 5,
	}
	enum PowerState : int
	{
		POWERSTATE_CHARGING = 3,
		POWERSTATE_ON_BATTERY = 1,
		POWERSTATE_UNKNOWN = 0,
		POWERSTATE_NO_BATTERY = 2,
		POWERSTATE_CHARGED = 4,
	}
	enum Month : int
	{
		MONTH_OCTOBER = 10,
		MONTH_JULY = 7,
		MONTH_MARCH = 3,
		MONTH_JANUARY = 1,
		MONTH_JUNE = 6,
		MONTH_MAY = 5,
		MONTH_SEPTEMBER = 9,
		MONTH_NOVEMBER = 11,
		MONTH_FEBRUARY = 2,
		MONTH_AUGUST = 8,
		MONTH_DECEMBER = 12,
		MONTH_APRIL = 4,
	}
	enum Weekday : int
	{
		DAY_FRIDAY = 5,
		DAY_TUESDAY = 2,
		DAY_THURSDAY = 4,
		DAY_WEDNESDAY = 3,
		DAY_MONDAY = 1,
		DAY_SUNDAY = 0,
		DAY_SATURDAY = 6,
	}
	enum int DAY_FRIDAY = 5;
	enum int MONTH_OCTOBER = 10;
	enum int MONTH_JULY = 7;
	enum int SCREEN_ORIENTATION_SENSOR = 6;
	enum int DAY_TUESDAY = 2;
	enum int SCREEN_ORIENTATION_PORTRAIT = 1;
	enum int MONTH_FEBRUARY = 2;
	enum int POWERSTATE_UNKNOWN = 0;
	enum int POWERSTATE_CHARGED = 4;
	enum int SYSTEM_DIR_MUSIC = 5;
	enum int DAY_MONDAY = 1;
	enum int SYSTEM_DIR_RINGTONES = 7;
	enum int DAY_SUNDAY = 0;
	enum int SCREEN_ORIENTATION_REVERSE_LANDSCAPE = 2;
	enum int MONTH_NOVEMBER = 11;
	enum int DAY_WEDNESDAY = 3;
	enum int SCREEN_ORIENTATION_REVERSE_PORTRAIT = 3;
	enum int SCREEN_ORIENTATION_LANDSCAPE = 0;
	enum int SCREEN_ORIENTATION_SENSOR_LANDSCAPE = 4;
	enum int DAY_SATURDAY = 6;
	enum int SCREEN_ORIENTATION_SENSOR_PORTRAIT = 5;
	enum int MONTH_MARCH = 3;
	enum int MONTH_MAY = 5;
	enum int SYSTEM_DIR_DESKTOP = 0;
	enum int MONTH_SEPTEMBER = 9;
	enum int DAY_THURSDAY = 4;
	enum int SYSTEM_DIR_DOCUMENTS = 2;
	enum int POWERSTATE_ON_BATTERY = 1;
	enum int POWERSTATE_NO_BATTERY = 2;
	enum int MONTH_JANUARY = 1;
	enum int MONTH_JUNE = 6;
	enum int SYSTEM_DIR_DCIM = 1;
	enum int SYSTEM_DIR_PICTURES = 6;
	enum int POWERSTATE_CHARGING = 3;
	enum int SYSTEM_DIR_MOVIES = 4;
	enum int MONTH_AUGUST = 8;
	enum int MONTH_DECEMBER = 12;
	enum int MONTH_APRIL = 4;
	enum int SYSTEM_DIR_DOWNLOADS = 3;
	package(godot) static GodotMethod!(void, String) _GODOT_set_clipboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clipboard") = _GODOT_set_clipboard;
	void set_clipboard(StringArg0)(in StringArg0 clipboard)
	{
		_GODOT_set_clipboard.bind("_OS", "set_clipboard");
		ptrcall!(void)(_GODOT_set_clipboard, _godot_object, clipboard);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_clipboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clipboard") = _GODOT_get_clipboard;
	String get_clipboard() const
	{
		_GODOT_get_clipboard.bind("_OS", "get_clipboard");
		return ptrcall!(String)(_GODOT_get_clipboard, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_screen_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_count") = _GODOT_get_screen_count;
	int get_screen_count() const
	{
		_GODOT_get_screen_count.bind("_OS", "get_screen_count");
		return ptrcall!(int)(_GODOT_get_screen_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_current_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_screen") = _GODOT_get_current_screen;
	int get_current_screen() const
	{
		_GODOT_get_current_screen.bind("_OS", "get_current_screen");
		return ptrcall!(int)(_GODOT_get_current_screen, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_current_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_screen") = _GODOT_set_current_screen;
	void set_current_screen(in int screen)
	{
		_GODOT_set_current_screen.bind("_OS", "set_current_screen");
		ptrcall!(void)(_GODOT_set_current_screen, _godot_object, screen);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_screen_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_position") = _GODOT_get_screen_position;
	Vector2 get_screen_position(in int screen = -1) const
	{
		_GODOT_get_screen_position.bind("_OS", "get_screen_position");
		return ptrcall!(Vector2)(_GODOT_get_screen_position, _godot_object, screen);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_screen_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_size") = _GODOT_get_screen_size;
	Vector2 get_screen_size(in int screen = -1) const
	{
		_GODOT_get_screen_size.bind("_OS", "get_screen_size");
		return ptrcall!(Vector2)(_GODOT_get_screen_size, _godot_object, screen);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_screen_dpi;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_dpi") = _GODOT_get_screen_dpi;
	int get_screen_dpi(in int screen = -1) const
	{
		_GODOT_get_screen_dpi.bind("_OS", "get_screen_dpi");
		return ptrcall!(int)(_GODOT_get_screen_dpi, _godot_object, screen);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_window_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_window_position") = _GODOT_get_window_position;
	Vector2 get_window_position() const
	{
		_GODOT_get_window_position.bind("_OS", "get_window_position");
		return ptrcall!(Vector2)(_GODOT_get_window_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_window_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_position") = _GODOT_set_window_position;
	void set_window_position(in Vector2 position)
	{
		_GODOT_set_window_position.bind("_OS", "set_window_position");
		ptrcall!(void)(_GODOT_set_window_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_window_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_window_size") = _GODOT_get_window_size;
	Vector2 get_window_size() const
	{
		_GODOT_get_window_size.bind("_OS", "get_window_size");
		return ptrcall!(Vector2)(_GODOT_get_window_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_window_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_size") = _GODOT_set_window_size;
	void set_window_size(in Vector2 size)
	{
		_GODOT_set_window_size.bind("_OS", "set_window_size");
		ptrcall!(void)(_GODOT_set_window_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_fullscreen;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_fullscreen") = _GODOT_set_window_fullscreen;
	void set_window_fullscreen(in bool enabled)
	{
		_GODOT_set_window_fullscreen.bind("_OS", "set_window_fullscreen");
		ptrcall!(void)(_GODOT_set_window_fullscreen, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_fullscreen;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_fullscreen") = _GODOT_is_window_fullscreen;
	bool is_window_fullscreen() const
	{
		_GODOT_is_window_fullscreen.bind("_OS", "is_window_fullscreen");
		return ptrcall!(bool)(_GODOT_is_window_fullscreen, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_resizable") = _GODOT_set_window_resizable;
	void set_window_resizable(in bool enabled)
	{
		_GODOT_set_window_resizable.bind("_OS", "set_window_resizable");
		ptrcall!(void)(_GODOT_set_window_resizable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_resizable") = _GODOT_is_window_resizable;
	bool is_window_resizable() const
	{
		_GODOT_is_window_resizable.bind("_OS", "is_window_resizable");
		return ptrcall!(bool)(_GODOT_is_window_resizable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_minimized;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_minimized") = _GODOT_set_window_minimized;
	void set_window_minimized(in bool enabled)
	{
		_GODOT_set_window_minimized.bind("_OS", "set_window_minimized");
		ptrcall!(void)(_GODOT_set_window_minimized, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_minimized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_minimized") = _GODOT_is_window_minimized;
	bool is_window_minimized() const
	{
		_GODOT_is_window_minimized.bind("_OS", "is_window_minimized");
		return ptrcall!(bool)(_GODOT_is_window_minimized, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_maximized;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_maximized") = _GODOT_set_window_maximized;
	void set_window_maximized(in bool enabled)
	{
		_GODOT_set_window_maximized.bind("_OS", "set_window_maximized");
		ptrcall!(void)(_GODOT_set_window_maximized, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_maximized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_maximized") = _GODOT_is_window_maximized;
	bool is_window_maximized() const
	{
		_GODOT_is_window_maximized.bind("_OS", "is_window_maximized");
		return ptrcall!(bool)(_GODOT_is_window_maximized, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_request_attention;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_attention") = _GODOT_request_attention;
	void request_attention()
	{
		_GODOT_request_attention.bind("_OS", "request_attention");
		ptrcall!(void)(_GODOT_request_attention, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_borderless_window;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_borderless_window") = _GODOT_set_borderless_window;
	void set_borderless_window(in bool borderless)
	{
		_GODOT_set_borderless_window.bind("_OS", "set_borderless_window");
		ptrcall!(void)(_GODOT_set_borderless_window, _godot_object, borderless);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_borderless_window;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_borderless_window") = _GODOT_get_borderless_window;
	bool get_borderless_window() const
	{
		_GODOT_get_borderless_window.bind("_OS", "get_borderless_window");
		return ptrcall!(bool)(_GODOT_get_borderless_window, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_ime_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ime_position") = _GODOT_set_ime_position;
	void set_ime_position(in Vector2 position)
	{
		_GODOT_set_ime_position.bind("_OS", "set_ime_position");
		ptrcall!(void)(_GODOT_set_ime_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_screen_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_screen_orientation") = _GODOT_set_screen_orientation;
	void set_screen_orientation(in int orientation)
	{
		_GODOT_set_screen_orientation.bind("_OS", "set_screen_orientation");
		ptrcall!(void)(_GODOT_set_screen_orientation, _godot_object, orientation);
	}
	package(godot) static GodotMethod!(OS.ScreenOrientation) _GODOT_get_screen_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_orientation") = _GODOT_get_screen_orientation;
	OS.ScreenOrientation get_screen_orientation() const
	{
		_GODOT_get_screen_orientation.bind("_OS", "get_screen_orientation");
		return ptrcall!(OS.ScreenOrientation)(_GODOT_get_screen_orientation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_keep_screen_on;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_keep_screen_on") = _GODOT_set_keep_screen_on;
	void set_keep_screen_on(in bool enabled)
	{
		_GODOT_set_keep_screen_on.bind("_OS", "set_keep_screen_on");
		ptrcall!(void)(_GODOT_set_keep_screen_on, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_keep_screen_on;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_keep_screen_on") = _GODOT_is_keep_screen_on;
	bool is_keep_screen_on() const
	{
		_GODOT_is_keep_screen_on.bind("_OS", "is_keep_screen_on");
		return ptrcall!(bool)(_GODOT_is_keep_screen_on, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_touchscreen_ui_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_touchscreen_ui_hint") = _GODOT_has_touchscreen_ui_hint;
	bool has_touchscreen_ui_hint() const
	{
		_GODOT_has_touchscreen_ui_hint.bind("_OS", "has_touchscreen_ui_hint");
		return ptrcall!(bool)(_GODOT_has_touchscreen_ui_hint, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_window_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_title") = _GODOT_set_window_title;
	void set_window_title(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_window_title.bind("_OS", "set_window_title");
		ptrcall!(void)(_GODOT_set_window_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_low_processor_usage_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_low_processor_usage_mode") = _GODOT_set_low_processor_usage_mode;
	void set_low_processor_usage_mode(in bool enable)
	{
		_GODOT_set_low_processor_usage_mode.bind("_OS", "set_low_processor_usage_mode");
		ptrcall!(void)(_GODOT_set_low_processor_usage_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_in_low_processor_usage_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_low_processor_usage_mode") = _GODOT_is_in_low_processor_usage_mode;
	bool is_in_low_processor_usage_mode() const
	{
		_GODOT_is_in_low_processor_usage_mode.bind("_OS", "is_in_low_processor_usage_mode");
		return ptrcall!(bool)(_GODOT_is_in_low_processor_usage_mode, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_processor_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_processor_count") = _GODOT_get_processor_count;
	int get_processor_count() const
	{
		_GODOT_get_processor_count.bind("_OS", "get_processor_count");
		return ptrcall!(int)(_GODOT_get_processor_count, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_executable_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_executable_path") = _GODOT_get_executable_path;
	String get_executable_path() const
	{
		_GODOT_get_executable_path.bind("_OS", "get_executable_path");
		return ptrcall!(String)(_GODOT_get_executable_path, _godot_object);
	}
	package(godot) static GodotMethod!(int, String, PoolStringArray, bool, Array) _GODOT_execute;
	package(godot) alias _GODOT_methodBindInfo(string name : "execute") = _GODOT_execute;
	int execute(StringArg0)(in StringArg0 path, in PoolStringArray arguments, in bool blocking, in Array output = Array.empty_array)
	{
		_GODOT_execute.bind("_OS", "execute");
		return ptrcall!(int)(_GODOT_execute, _godot_object, path, arguments, blocking, output);
	}
	package(godot) static GodotMethod!(GodotError, int) _GODOT_kill;
	package(godot) alias _GODOT_methodBindInfo(string name : "kill") = _GODOT_kill;
	GodotError kill(in int pid)
	{
		_GODOT_kill.bind("_OS", "kill");
		return ptrcall!(GodotError)(_GODOT_kill, _godot_object, pid);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_shell_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "shell_open") = _GODOT_shell_open;
	GodotError shell_open(StringArg0)(in StringArg0 uri)
	{
		_GODOT_shell_open.bind("_OS", "shell_open");
		return ptrcall!(GodotError)(_GODOT_shell_open, _godot_object, uri);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_process_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_id") = _GODOT_get_process_id;
	int get_process_id() const
	{
		_GODOT_get_process_id.bind("_OS", "get_process_id");
		return ptrcall!(int)(_GODOT_get_process_id, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	String get_environment(StringArg0)(in StringArg0 environment) const
	{
		_GODOT_get_environment.bind("_OS", "get_environment");
		return ptrcall!(String)(_GODOT_get_environment, _godot_object, environment);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_environment") = _GODOT_has_environment;
	bool has_environment(StringArg0)(in StringArg0 environment) const
	{
		_GODOT_has_environment.bind("_OS", "has_environment");
		return ptrcall!(bool)(_GODOT_has_environment, _godot_object, environment);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	String get_name() const
	{
		_GODOT_get_name.bind("_OS", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_cmdline_args;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cmdline_args") = _GODOT_get_cmdline_args;
	PoolStringArray get_cmdline_args()
	{
		_GODOT_get_cmdline_args.bind("_OS", "get_cmdline_args");
		return ptrcall!(PoolStringArray)(_GODOT_get_cmdline_args, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_datetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_datetime") = _GODOT_get_datetime;
	Dictionary get_datetime(in bool utc = false) const
	{
		_GODOT_get_datetime.bind("_OS", "get_datetime");
		return ptrcall!(Dictionary)(_GODOT_get_datetime, _godot_object, utc);
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_date;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_date") = _GODOT_get_date;
	Dictionary get_date(in bool utc = false) const
	{
		_GODOT_get_date.bind("_OS", "get_date");
		return ptrcall!(Dictionary)(_GODOT_get_date, _godot_object, utc);
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time") = _GODOT_get_time;
	Dictionary get_time(in bool utc = false) const
	{
		_GODOT_get_time.bind("_OS", "get_time");
		return ptrcall!(Dictionary)(_GODOT_get_time, _godot_object, utc);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_time_zone_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_zone_info") = _GODOT_get_time_zone_info;
	Dictionary get_time_zone_info() const
	{
		_GODOT_get_time_zone_info.bind("_OS", "get_time_zone_info");
		return ptrcall!(Dictionary)(_GODOT_get_time_zone_info, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_unix_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unix_time") = _GODOT_get_unix_time;
	int get_unix_time() const
	{
		_GODOT_get_unix_time.bind("_OS", "get_unix_time");
		return ptrcall!(int)(_GODOT_get_unix_time, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary, int) _GODOT_get_datetime_from_unix_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_datetime_from_unix_time") = _GODOT_get_datetime_from_unix_time;
	Dictionary get_datetime_from_unix_time(in int unix_time_val) const
	{
		_GODOT_get_datetime_from_unix_time.bind("_OS", "get_datetime_from_unix_time");
		return ptrcall!(Dictionary)(_GODOT_get_datetime_from_unix_time, _godot_object, unix_time_val);
	}
	package(godot) static GodotMethod!(int, Dictionary) _GODOT_get_unix_time_from_datetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unix_time_from_datetime") = _GODOT_get_unix_time_from_datetime;
	int get_unix_time_from_datetime(in Dictionary datetime) const
	{
		_GODOT_get_unix_time_from_datetime.bind("_OS", "get_unix_time_from_datetime");
		return ptrcall!(int)(_GODOT_get_unix_time_from_datetime, _godot_object, datetime);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_system_time_secs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_system_time_secs") = _GODOT_get_system_time_secs;
	int get_system_time_secs() const
	{
		_GODOT_get_system_time_secs.bind("_OS", "get_system_time_secs");
		return ptrcall!(int)(_GODOT_get_system_time_secs, _godot_object);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_set_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon") = _GODOT_set_icon;
	void set_icon(in Image icon)
	{
		_GODOT_set_icon.bind("_OS", "set_icon");
		ptrcall!(void)(_GODOT_set_icon, _godot_object, icon);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_exit_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exit_code") = _GODOT_get_exit_code;
	int get_exit_code() const
	{
		_GODOT_get_exit_code.bind("_OS", "get_exit_code");
		return ptrcall!(int)(_GODOT_get_exit_code, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_exit_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exit_code") = _GODOT_set_exit_code;
	void set_exit_code(in int code)
	{
		_GODOT_set_exit_code.bind("_OS", "set_exit_code");
		ptrcall!(void)(_GODOT_set_exit_code, _godot_object, code);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_delay_usec;
	package(godot) alias _GODOT_methodBindInfo(string name : "delay_usec") = _GODOT_delay_usec;
	void delay_usec(in int usec) const
	{
		_GODOT_delay_usec.bind("_OS", "delay_usec");
		ptrcall!(void)(_GODOT_delay_usec, _godot_object, usec);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_delay_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "delay_msec") = _GODOT_delay_msec;
	void delay_msec(in int msec) const
	{
		_GODOT_delay_msec.bind("_OS", "delay_msec");
		ptrcall!(void)(_GODOT_delay_msec, _godot_object, msec);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_ticks_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ticks_msec") = _GODOT_get_ticks_msec;
	int get_ticks_msec() const
	{
		_GODOT_get_ticks_msec.bind("_OS", "get_ticks_msec");
		return ptrcall!(int)(_GODOT_get_ticks_msec, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_splash_tick_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_splash_tick_msec") = _GODOT_get_splash_tick_msec;
	int get_splash_tick_msec() const
	{
		_GODOT_get_splash_tick_msec.bind("_OS", "get_splash_tick_msec");
		return ptrcall!(int)(_GODOT_get_splash_tick_msec, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_locale") = _GODOT_get_locale;
	String get_locale() const
	{
		_GODOT_get_locale.bind("_OS", "get_locale");
		return ptrcall!(String)(_GODOT_get_locale, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_latin_keyboard_variant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_latin_keyboard_variant") = _GODOT_get_latin_keyboard_variant;
	String get_latin_keyboard_variant() const
	{
		_GODOT_get_latin_keyboard_variant.bind("_OS", "get_latin_keyboard_variant");
		return ptrcall!(String)(_GODOT_get_latin_keyboard_variant, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_model_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_model_name") = _GODOT_get_model_name;
	String get_model_name() const
	{
		_GODOT_get_model_name.bind("_OS", "get_model_name");
		return ptrcall!(String)(_GODOT_get_model_name, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_draw") = _GODOT_can_draw;
	bool can_draw() const
	{
		_GODOT_can_draw.bind("_OS", "can_draw");
		return ptrcall!(bool)(_GODOT_can_draw, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stdout_verbose;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stdout_verbose") = _GODOT_is_stdout_verbose;
	bool is_stdout_verbose() const
	{
		_GODOT_is_stdout_verbose.bind("_OS", "is_stdout_verbose");
		return ptrcall!(bool)(_GODOT_is_stdout_verbose, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_use_threads;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_use_threads") = _GODOT_can_use_threads;
	bool can_use_threads() const
	{
		_GODOT_can_use_threads.bind("_OS", "can_use_threads");
		return ptrcall!(bool)(_GODOT_can_use_threads, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_debug_build;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_debug_build") = _GODOT_is_debug_build;
	bool is_debug_build() const
	{
		_GODOT_is_debug_build.bind("_OS", "is_debug_build");
		return ptrcall!(bool)(_GODOT_is_debug_build, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_dump_memory_to_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "dump_memory_to_file") = _GODOT_dump_memory_to_file;
	void dump_memory_to_file(StringArg0)(in StringArg0 file)
	{
		_GODOT_dump_memory_to_file.bind("_OS", "dump_memory_to_file");
		ptrcall!(void)(_GODOT_dump_memory_to_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_dump_resources_to_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "dump_resources_to_file") = _GODOT_dump_resources_to_file;
	void dump_resources_to_file(StringArg0)(in StringArg0 file)
	{
		_GODOT_dump_resources_to_file.bind("_OS", "dump_resources_to_file");
		ptrcall!(void)(_GODOT_dump_resources_to_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_virtual_keyboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_virtual_keyboard") = _GODOT_has_virtual_keyboard;
	bool has_virtual_keyboard() const
	{
		_GODOT_has_virtual_keyboard.bind("_OS", "has_virtual_keyboard");
		return ptrcall!(bool)(_GODOT_has_virtual_keyboard, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_show_virtual_keyboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "show_virtual_keyboard") = _GODOT_show_virtual_keyboard;
	void show_virtual_keyboard(StringArg0)(in StringArg0 existing_text = "")
	{
		_GODOT_show_virtual_keyboard.bind("_OS", "show_virtual_keyboard");
		ptrcall!(void)(_GODOT_show_virtual_keyboard, _godot_object, existing_text);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide_virtual_keyboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide_virtual_keyboard") = _GODOT_hide_virtual_keyboard;
	void hide_virtual_keyboard()
	{
		_GODOT_hide_virtual_keyboard.bind("_OS", "hide_virtual_keyboard");
		ptrcall!(void)(_GODOT_hide_virtual_keyboard, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_print_resources_in_use;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_resources_in_use") = _GODOT_print_resources_in_use;
	void print_resources_in_use(in bool _short = false)
	{
		_GODOT_print_resources_in_use.bind("_OS", "print_resources_in_use");
		ptrcall!(void)(_GODOT_print_resources_in_use, _godot_object, _short);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_print_all_resources;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_all_resources") = _GODOT_print_all_resources;
	void print_all_resources(StringArg0)(in StringArg0 tofile = "")
	{
		_GODOT_print_all_resources.bind("_OS", "print_all_resources");
		ptrcall!(void)(_GODOT_print_all_resources, _godot_object, tofile);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_static_memory_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_static_memory_usage") = _GODOT_get_static_memory_usage;
	int get_static_memory_usage() const
	{
		_GODOT_get_static_memory_usage.bind("_OS", "get_static_memory_usage");
		return ptrcall!(int)(_GODOT_get_static_memory_usage, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_static_memory_peak_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_static_memory_peak_usage") = _GODOT_get_static_memory_peak_usage;
	int get_static_memory_peak_usage() const
	{
		_GODOT_get_static_memory_peak_usage.bind("_OS", "get_static_memory_peak_usage");
		return ptrcall!(int)(_GODOT_get_static_memory_peak_usage, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_dynamic_memory_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_memory_usage") = _GODOT_get_dynamic_memory_usage;
	int get_dynamic_memory_usage() const
	{
		_GODOT_get_dynamic_memory_usage.bind("_OS", "get_dynamic_memory_usage");
		return ptrcall!(int)(_GODOT_get_dynamic_memory_usage, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_data_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data_dir") = _GODOT_get_data_dir;
	String get_data_dir() const
	{
		_GODOT_get_data_dir.bind("_OS", "get_data_dir");
		return ptrcall!(String)(_GODOT_get_data_dir, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_system_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_system_dir") = _GODOT_get_system_dir;
	String get_system_dir(in int dir) const
	{
		_GODOT_get_system_dir.bind("_OS", "get_system_dir");
		return ptrcall!(String)(_GODOT_get_system_dir, _godot_object, dir);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unique_id") = _GODOT_get_unique_id;
	String get_unique_id() const
	{
		_GODOT_get_unique_id.bind("_OS", "get_unique_id");
		return ptrcall!(String)(_GODOT_get_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ok_left_and_cancel_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ok_left_and_cancel_right") = _GODOT_is_ok_left_and_cancel_right;
	bool is_ok_left_and_cancel_right() const
	{
		_GODOT_is_ok_left_and_cancel_right.bind("_OS", "is_ok_left_and_cancel_right");
		return ptrcall!(bool)(_GODOT_is_ok_left_and_cancel_right, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_print_all_textures_by_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_all_textures_by_size") = _GODOT_print_all_textures_by_size;
	void print_all_textures_by_size()
	{
		_GODOT_print_all_textures_by_size.bind("_OS", "print_all_textures_by_size");
		ptrcall!(void)(_GODOT_print_all_textures_by_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_print_resources_by_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_resources_by_type") = _GODOT_print_resources_by_type;
	void print_resources_by_type(in PoolStringArray types)
	{
		_GODOT_print_resources_by_type.bind("_OS", "print_resources_by_type");
		ptrcall!(void)(_GODOT_print_resources_by_type, _godot_object, types);
	}
	package(godot) static GodotMethod!(GodotError, String, float, String, String) _GODOT_native_video_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_play") = _GODOT_native_video_play;
	GodotError native_video_play(StringArg0, StringArg2, StringArg3)(in StringArg0 path, in float volume, in StringArg2 audio_track, in StringArg3 subtitle_track)
	{
		_GODOT_native_video_play.bind("_OS", "native_video_play");
		return ptrcall!(GodotError)(_GODOT_native_video_play, _godot_object, path, volume, audio_track, subtitle_track);
	}
	package(godot) static GodotMethod!(bool) _GODOT_native_video_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_is_playing") = _GODOT_native_video_is_playing;
	bool native_video_is_playing()
	{
		_GODOT_native_video_is_playing.bind("_OS", "native_video_is_playing");
		return ptrcall!(bool)(_GODOT_native_video_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_native_video_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_stop") = _GODOT_native_video_stop;
	void native_video_stop()
	{
		_GODOT_native_video_stop.bind("_OS", "native_video_stop");
		ptrcall!(void)(_GODOT_native_video_stop, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_native_video_pause;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_pause") = _GODOT_native_video_pause;
	void native_video_pause()
	{
		_GODOT_native_video_pause.bind("_OS", "native_video_pause");
		ptrcall!(void)(_GODOT_native_video_pause, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_native_video_unpause;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_unpause") = _GODOT_native_video_unpause;
	void native_video_unpause()
	{
		_GODOT_native_video_unpause.bind("_OS", "native_video_unpause");
		ptrcall!(void)(_GODOT_native_video_unpause, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_scancode_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scancode_string") = _GODOT_get_scancode_string;
	String get_scancode_string(in int code) const
	{
		_GODOT_get_scancode_string.bind("_OS", "get_scancode_string");
		return ptrcall!(String)(_GODOT_get_scancode_string, _godot_object, code);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_scancode_unicode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scancode_unicode") = _GODOT_is_scancode_unicode;
	bool is_scancode_unicode(in int code) const
	{
		_GODOT_is_scancode_unicode.bind("_OS", "is_scancode_unicode");
		return ptrcall!(bool)(_GODOT_is_scancode_unicode, _godot_object, code);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_find_scancode_from_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_scancode_from_string") = _GODOT_find_scancode_from_string;
	int find_scancode_from_string(StringArg0)(in StringArg0 string) const
	{
		_GODOT_find_scancode_from_string.bind("_OS", "find_scancode_from_string");
		return ptrcall!(int)(_GODOT_find_scancode_from_string, _godot_object, string);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_file_access_save_and_swap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_file_access_save_and_swap") = _GODOT_set_use_file_access_save_and_swap;
	void set_use_file_access_save_and_swap(in bool enabled)
	{
		_GODOT_set_use_file_access_save_and_swap.bind("_OS", "set_use_file_access_save_and_swap");
		ptrcall!(void)(_GODOT_set_use_file_access_save_and_swap, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_alert;
	package(godot) alias _GODOT_methodBindInfo(string name : "alert") = _GODOT_alert;
	void alert(StringArg0, StringArg1)(in StringArg0 text, in StringArg1 title = "Alert!")
	{
		_GODOT_alert.bind("_OS", "alert");
		ptrcall!(void)(_GODOT_alert, _godot_object, text, title);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_set_thread_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_thread_name") = _GODOT_set_thread_name;
	GodotError set_thread_name(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_thread_name.bind("_OS", "set_thread_name");
		return ptrcall!(GodotError)(_GODOT_set_thread_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_vsync;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_vsync") = _GODOT_set_use_vsync;
	void set_use_vsync(in bool enable)
	{
		_GODOT_set_use_vsync.bind("_OS", "set_use_vsync");
		ptrcall!(void)(_GODOT_set_use_vsync, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_vsync_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_vsync_enabled") = _GODOT_is_vsync_enabled;
	bool is_vsync_enabled() const
	{
		_GODOT_is_vsync_enabled.bind("_OS", "is_vsync_enabled");
		return ptrcall!(bool)(_GODOT_is_vsync_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(OS.PowerState) _GODOT_get_power_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_power_state") = _GODOT_get_power_state;
	OS.PowerState get_power_state()
	{
		_GODOT_get_power_state.bind("_OS", "get_power_state");
		return ptrcall!(OS.PowerState)(_GODOT_get_power_state, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_power_seconds_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_power_seconds_left") = _GODOT_get_power_seconds_left;
	int get_power_seconds_left()
	{
		_GODOT_get_power_seconds_left.bind("_OS", "get_power_seconds_left");
		return ptrcall!(int)(_GODOT_get_power_seconds_left, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_power_percent_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_power_percent_left") = _GODOT_get_power_percent_left;
	int get_power_percent_left()
	{
		_GODOT_get_power_percent_left.bind("_OS", "get_power_percent_left");
		return ptrcall!(int)(_GODOT_get_power_percent_left, _godot_object);
	}
}
@property pragma(inline, true)
OSSingleton OS()
{
	return OSSingleton._GODOT_singleton();
}
