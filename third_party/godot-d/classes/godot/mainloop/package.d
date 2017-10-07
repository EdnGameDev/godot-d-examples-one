module godot.mainloop;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct MainLoop
{
	static immutable string _GODOT_internal_name = "MainLoop";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MainLoop other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MainLoop opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MainLoop _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MainLoop");
		if(constructor is null) return typeof(this).init;
		return cast(MainLoop)(constructor());
	}
	enum int NOTIFICATION_OS_MEMORY_WARNING = 9;
	enum int NOTIFICATION_WM_FOCUS_IN = 4;
	enum int NOTIFICATION_WM_FOCUS_OUT = 5;
	enum int NOTIFICATION_WM_ABOUT = 91;
	enum int NOTIFICATION_WM_QUIT_REQUEST = 6;
	enum int NOTIFICATION_TRANSLATION_CHANGED = 90;
	enum int NOTIFICATION_WM_UNFOCUS_REQUEST = 8;
	enum int NOTIFICATION_WM_MOUSE_EXIT = 3;
	enum int NOTIFICATION_WM_MOUSE_ENTER = 2;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_event") = _GODOT__input_event;
	void _input_event(in InputEvent ev)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(ev);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__input_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_text") = _GODOT__input_text;
	void _input_text(StringArg0)(in StringArg0 text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__initialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "_initialize") = _GODOT__initialize;
	void _initialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_initialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__iteration;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iteration") = _GODOT__iteration;
	void _iteration(in float delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_iteration");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__idle;
	package(godot) alias _GODOT_methodBindInfo(string name : "_idle") = _GODOT__idle;
	void _idle(in float delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_idle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, PoolStringArray, int) _GODOT__drop_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "_drop_files") = _GODOT__drop_files;
	void _drop_files(in PoolStringArray files, in int screen)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(files);
		_GODOT_args.append(screen);
		String _GODOT_method_name = String("_drop_files");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__finalize;
	package(godot) alias _GODOT_methodBindInfo(string name : "_finalize") = _GODOT__finalize;
	void _finalize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_finalize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "input_event") = _GODOT_input_event;
	void input_event(in InputEvent ev)
	{
		_GODOT_input_event.bind("MainLoop", "input_event");
		ptrcall!(void)(_GODOT_input_event, _godot_object, ev);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_input_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "input_text") = _GODOT_input_text;
	void input_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_input_text.bind("MainLoop", "input_text");
		ptrcall!(void)(_GODOT_input_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void) _GODOT__init;
	package(godot) alias _GODOT_methodBindInfo(string name : "init") = _GODOT__init;
	void _init()
	{
		_GODOT__init.bind("MainLoop", "init");
		ptrcall!(void)(_GODOT__init, _godot_object);
	}
	package(godot) static GodotMethod!(bool, float) _GODOT_iteration;
	package(godot) alias _GODOT_methodBindInfo(string name : "iteration") = _GODOT_iteration;
	bool iteration(in float delta)
	{
		_GODOT_iteration.bind("MainLoop", "iteration");
		return ptrcall!(bool)(_GODOT_iteration, _godot_object, delta);
	}
	package(godot) static GodotMethod!(bool, float) _GODOT_idle;
	package(godot) alias _GODOT_methodBindInfo(string name : "idle") = _GODOT_idle;
	bool idle(in float delta)
	{
		_GODOT_idle.bind("MainLoop", "idle");
		return ptrcall!(bool)(_GODOT_idle, _godot_object, delta);
	}
	package(godot) static GodotMethod!(void) _GODOT_finish;
	package(godot) alias _GODOT_methodBindInfo(string name : "finish") = _GODOT_finish;
	void finish()
	{
		_GODOT_finish.bind("MainLoop", "finish");
		ptrcall!(void)(_GODOT_finish, _godot_object);
	}
}
