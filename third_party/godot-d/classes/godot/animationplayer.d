module godot.animationplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.animation;
@GodotBaseClass struct AnimationPlayer
{
	static immutable string _GODOT_internal_name = "AnimationPlayer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AnimationPlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationPlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AnimationPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationPlayer)(constructor());
	}
	enum AnimationProcessMode : int
	{
		ANIMATION_PROCESS_FIXED = 0,
		ANIMATION_PROCESS_IDLE = 1,
	}
	enum int ANIMATION_PROCESS_FIXED = 0;
	enum int ANIMATION_PROCESS_IDLE = 1;
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__node_removed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_removed") = _GODOT__node_removed;
	void _node_removed(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__animation_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_animation_changed") = _GODOT__animation_changed;
	void _animation_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_animation_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(GodotError, String, Animation) _GODOT_add_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_animation") = _GODOT_add_animation;
	GodotError add_animation(StringArg0)(in StringArg0 name, in Animation animation)
	{
		_GODOT_add_animation.bind("AnimationPlayer", "add_animation");
		return ptrcall!(GodotError)(_GODOT_add_animation, _godot_object, name, animation);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_animation") = _GODOT_remove_animation;
	void remove_animation(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_animation.bind("AnimationPlayer", "remove_animation");
		ptrcall!(void)(_GODOT_remove_animation, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_animation") = _GODOT_rename_animation;
	void rename_animation(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 newname)
	{
		_GODOT_rename_animation.bind("AnimationPlayer", "rename_animation");
		ptrcall!(void)(_GODOT_rename_animation, _godot_object, name, newname);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_animation") = _GODOT_has_animation;
	bool has_animation(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_animation.bind("AnimationPlayer", "has_animation");
		return ptrcall!(bool)(_GODOT_has_animation, _godot_object, name);
	}
	package(godot) static GodotMethod!(Animation, String) _GODOT_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation") = _GODOT_get_animation;
	Animation get_animation(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_animation.bind("AnimationPlayer", "get_animation");
		return ptrcall!(Animation)(_GODOT_get_animation, _godot_object, name);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_animation_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_list") = _GODOT_get_animation_list;
	PoolStringArray get_animation_list() const
	{
		_GODOT_get_animation_list.bind("AnimationPlayer", "get_animation_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_animation_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_animation_set_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_set_next") = _GODOT_animation_set_next;
	void animation_set_next(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to)
	{
		_GODOT_animation_set_next.bind("AnimationPlayer", "animation_set_next");
		ptrcall!(void)(_GODOT_animation_set_next, _godot_object, anim_from, anim_to);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_animation_get_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_get_next") = _GODOT_animation_get_next;
	String animation_get_next(StringArg0)(in StringArg0 anim_from) const
	{
		_GODOT_animation_get_next.bind("AnimationPlayer", "animation_get_next");
		return ptrcall!(String)(_GODOT_animation_get_next, _godot_object, anim_from);
	}
	package(godot) static GodotMethod!(void, String, String, float) _GODOT_set_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_time") = _GODOT_set_blend_time;
	void set_blend_time(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to, in float sec)
	{
		_GODOT_set_blend_time.bind("AnimationPlayer", "set_blend_time");
		ptrcall!(void)(_GODOT_set_blend_time, _godot_object, anim_from, anim_to, sec);
	}
	package(godot) static GodotMethod!(float, String, String) _GODOT_get_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_time") = _GODOT_get_blend_time;
	float get_blend_time(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to) const
	{
		_GODOT_get_blend_time.bind("AnimationPlayer", "get_blend_time");
		return ptrcall!(float)(_GODOT_get_blend_time, _godot_object, anim_from, anim_to);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_default_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_blend_time") = _GODOT_set_default_blend_time;
	void set_default_blend_time(in float sec)
	{
		_GODOT_set_default_blend_time.bind("AnimationPlayer", "set_default_blend_time");
		ptrcall!(void)(_GODOT_set_default_blend_time, _godot_object, sec);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_default_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_blend_time") = _GODOT_get_default_blend_time;
	float get_default_blend_time() const
	{
		_GODOT_get_default_blend_time.bind("AnimationPlayer", "get_default_blend_time");
		return ptrcall!(float)(_GODOT_get_default_blend_time, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, float, float, bool) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	void play(StringArg0)(in StringArg0 name = "", in float custom_blend = -1, in float custom_speed = 1, in bool from_end = false)
	{
		_GODOT_play.bind("AnimationPlayer", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, name, custom_blend, custom_speed, from_end);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_play_backwards;
	package(godot) alias _GODOT_methodBindInfo(string name : "play_backwards") = _GODOT_play_backwards;
	void play_backwards(StringArg0)(in StringArg0 name = "", in float custom_blend = -1)
	{
		_GODOT_play_backwards.bind("AnimationPlayer", "play_backwards");
		ptrcall!(void)(_GODOT_play_backwards, _godot_object, name, custom_blend);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop(in bool reset = true)
	{
		_GODOT_stop.bind("AnimationPlayer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object, reset);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop_all") = _GODOT_stop_all;
	void stop_all()
	{
		_GODOT_stop_all.bind("AnimationPlayer", "stop_all");
		ptrcall!(void)(_GODOT_stop_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	bool is_playing() const
	{
		_GODOT_is_playing.bind("AnimationPlayer", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_animation") = _GODOT_set_current_animation;
	void set_current_animation(StringArg0)(in StringArg0 anim)
	{
		_GODOT_set_current_animation.bind("AnimationPlayer", "set_current_animation");
		ptrcall!(void)(_GODOT_set_current_animation, _godot_object, anim);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_animation") = _GODOT_get_current_animation;
	String get_current_animation() const
	{
		_GODOT_get_current_animation.bind("AnimationPlayer", "get_current_animation");
		return ptrcall!(String)(_GODOT_get_current_animation, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_queue;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue") = _GODOT_queue;
	void queue(StringArg0)(in StringArg0 name)
	{
		_GODOT_queue.bind("AnimationPlayer", "queue");
		ptrcall!(void)(_GODOT_queue, _godot_object, name);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_queue;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_queue") = _GODOT_clear_queue;
	void clear_queue()
	{
		_GODOT_clear_queue.bind("AnimationPlayer", "clear_queue");
		ptrcall!(void)(_GODOT_clear_queue, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	void set_active(in bool active)
	{
		_GODOT_set_active.bind("AnimationPlayer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	bool is_active() const
	{
		_GODOT_is_active.bind("AnimationPlayer", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	void set_speed_scale(in float speed)
	{
		_GODOT_set_speed_scale.bind("AnimationPlayer", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	float get_speed_scale() const
	{
		_GODOT_get_speed_scale.bind("AnimationPlayer", "get_speed_scale");
		return ptrcall!(float)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	void set_autoplay(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_autoplay.bind("AnimationPlayer", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_autoplay") = _GODOT_get_autoplay;
	String get_autoplay() const
	{
		_GODOT_get_autoplay.bind("AnimationPlayer", "get_autoplay");
		return ptrcall!(String)(_GODOT_get_autoplay, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_root") = _GODOT_set_root;
	void set_root(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_root.bind("AnimationPlayer", "set_root");
		ptrcall!(void)(_GODOT_set_root, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_root") = _GODOT_get_root;
	NodePath get_root() const
	{
		_GODOT_get_root.bind("AnimationPlayer", "get_root");
		return ptrcall!(NodePath)(_GODOT_get_root, _godot_object);
	}
	package(godot) static GodotMethod!(void, float, bool) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	void seek(in float seconds, in bool update = false)
	{
		_GODOT_seek.bind("AnimationPlayer", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, seconds, update);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	float get_position() const
	{
		_GODOT_get_position.bind("AnimationPlayer", "get_position");
		return ptrcall!(float)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(String, Animation) _GODOT_find_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_animation") = _GODOT_find_animation;
	String find_animation(in Animation animation) const
	{
		_GODOT_find_animation.bind("AnimationPlayer", "find_animation");
		return ptrcall!(String)(_GODOT_find_animation, _godot_object, animation);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_caches;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_caches") = _GODOT_clear_caches;
	void clear_caches()
	{
		_GODOT_clear_caches.bind("AnimationPlayer", "clear_caches");
		ptrcall!(void)(_GODOT_clear_caches, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation_process_mode") = _GODOT_set_animation_process_mode;
	void set_animation_process_mode(in int mode)
	{
		_GODOT_set_animation_process_mode.bind("AnimationPlayer", "set_animation_process_mode");
		ptrcall!(void)(_GODOT_set_animation_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AnimationPlayer.AnimationProcessMode) _GODOT_get_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_process_mode") = _GODOT_get_animation_process_mode;
	AnimationPlayer.AnimationProcessMode get_animation_process_mode() const
	{
		_GODOT_get_animation_process_mode.bind("AnimationPlayer", "get_animation_process_mode");
		return ptrcall!(AnimationPlayer.AnimationProcessMode)(_GODOT_get_animation_process_mode, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_current_animation_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_animation_position") = _GODOT_get_current_animation_position;
	float get_current_animation_position() const
	{
		_GODOT_get_current_animation_position.bind("AnimationPlayer", "get_current_animation_position");
		return ptrcall!(float)(_GODOT_get_current_animation_position, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_current_animation_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_animation_length") = _GODOT_get_current_animation_length;
	float get_current_animation_length() const
	{
		_GODOT_get_current_animation_length.bind("AnimationPlayer", "get_current_animation_length");
		return ptrcall!(float)(_GODOT_get_current_animation_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "advance") = _GODOT_advance;
	void advance(in float delta)
	{
		_GODOT_advance.bind("AnimationPlayer", "advance");
		ptrcall!(void)(_GODOT_advance, _godot_object, delta);
	}
}
