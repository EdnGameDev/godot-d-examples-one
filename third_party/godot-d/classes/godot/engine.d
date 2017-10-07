module godot.engine;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.mainloop;
@GodotBaseClass struct EngineSingleton
{
	static immutable string _GODOT_internal_name = "_Engine";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_Engine";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EngineSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EngineSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Engine");
		if(constructor is null) return typeof(this).init;
		return cast(EngineSingleton)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_iterations_per_second;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_iterations_per_second") = _GODOT_set_iterations_per_second;
	void set_iterations_per_second(in int iterations_per_second)
	{
		_GODOT_set_iterations_per_second.bind("_Engine", "set_iterations_per_second");
		ptrcall!(void)(_GODOT_set_iterations_per_second, _godot_object, iterations_per_second);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_iterations_per_second;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_iterations_per_second") = _GODOT_get_iterations_per_second;
	int get_iterations_per_second() const
	{
		_GODOT_get_iterations_per_second.bind("_Engine", "get_iterations_per_second");
		return ptrcall!(int)(_GODOT_get_iterations_per_second, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_target_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target_fps") = _GODOT_set_target_fps;
	void set_target_fps(in int target_fps)
	{
		_GODOT_set_target_fps.bind("_Engine", "set_target_fps");
		ptrcall!(void)(_GODOT_set_target_fps, _godot_object, target_fps);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_target_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_target_fps") = _GODOT_get_target_fps;
	float get_target_fps() const
	{
		_GODOT_get_target_fps.bind("_Engine", "get_target_fps");
		return ptrcall!(float)(_GODOT_get_target_fps, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_time_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_time_scale") = _GODOT_set_time_scale;
	void set_time_scale(in float time_scale)
	{
		_GODOT_set_time_scale.bind("_Engine", "set_time_scale");
		ptrcall!(void)(_GODOT_set_time_scale, _godot_object, time_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_time_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_scale") = _GODOT_get_time_scale;
	float get_time_scale()
	{
		_GODOT_get_time_scale.bind("_Engine", "get_time_scale");
		return ptrcall!(float)(_GODOT_get_time_scale, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_frames_drawn;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frames_drawn") = _GODOT_get_frames_drawn;
	int get_frames_drawn()
	{
		_GODOT_get_frames_drawn.bind("_Engine", "get_frames_drawn");
		return ptrcall!(int)(_GODOT_get_frames_drawn, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_frames_per_second;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frames_per_second") = _GODOT_get_frames_per_second;
	float get_frames_per_second() const
	{
		_GODOT_get_frames_per_second.bind("_Engine", "get_frames_per_second");
		return ptrcall!(float)(_GODOT_get_frames_per_second, _godot_object);
	}
	package(godot) static GodotMethod!(MainLoop) _GODOT_get_main_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_main_loop") = _GODOT_get_main_loop;
	MainLoop get_main_loop() const
	{
		_GODOT_get_main_loop.bind("_Engine", "get_main_loop");
		return ptrcall!(MainLoop)(_GODOT_get_main_loop, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_version_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_version_info") = _GODOT_get_version_info;
	Dictionary get_version_info() const
	{
		_GODOT_get_version_info.bind("_Engine", "get_version_info");
		return ptrcall!(Dictionary)(_GODOT_get_version_info, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_in_fixed_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_fixed_frame") = _GODOT_is_in_fixed_frame;
	bool is_in_fixed_frame() const
	{
		_GODOT_is_in_fixed_frame.bind("_Engine", "is_in_fixed_frame");
		return ptrcall!(bool)(_GODOT_is_in_fixed_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editor_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editor_hint") = _GODOT_set_editor_hint;
	void set_editor_hint(in bool enabled)
	{
		_GODOT_set_editor_hint.bind("_Engine", "set_editor_hint");
		ptrcall!(void)(_GODOT_set_editor_hint, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editor_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editor_hint") = _GODOT_is_editor_hint;
	bool is_editor_hint() const
	{
		_GODOT_is_editor_hint.bind("_Engine", "is_editor_hint");
		return ptrcall!(bool)(_GODOT_is_editor_hint, _godot_object);
	}
}
@property pragma(inline, true)
EngineSingleton Engine()
{
	return EngineSingleton._GODOT_singleton();
}
