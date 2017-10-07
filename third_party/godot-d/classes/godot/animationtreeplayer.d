module godot.animationtreeplayer;
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
@GodotBaseClass struct AnimationTreePlayer
{
	static immutable string _GODOT_internal_name = "AnimationTreePlayer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AnimationTreePlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationTreePlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationTreePlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AnimationTreePlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationTreePlayer)(constructor());
	}
	enum AnimationProcessMode : int
	{
		ANIMATION_PROCESS_FIXED = 0,
		ANIMATION_PROCESS_IDLE = 1,
	}
	enum NodeType : int
	{
		NODE_BLEND4 = 6,
		NODE_BLEND2 = 4,
		NODE_OUTPUT = 0,
		NODE_ANIMATION = 1,
		NODE_ONESHOT = 2,
		NODE_TIMESEEK = 8,
		NODE_BLEND3 = 5,
		NODE_MIX = 3,
		NODE_TRANSITION = 9,
		NODE_TIMESCALE = 7,
	}
	enum int ANIMATION_PROCESS_IDLE = 1;
	enum int NODE_BLEND4 = 6;
	enum int NODE_BLEND2 = 4;
	enum int NODE_OUTPUT = 0;
	enum int NODE_ANIMATION = 1;
	enum int NODE_ONESHOT = 2;
	enum int NODE_TIMESEEK = 8;
	enum int NODE_BLEND3 = 5;
	enum int ANIMATION_PROCESS_FIXED = 0;
	enum int NODE_MIX = 3;
	enum int NODE_TRANSITION = 9;
	enum int NODE_TIMESCALE = 7;
	package(godot) static GodotMethod!(void, int, String) _GODOT_add_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_node") = _GODOT_add_node;
	void add_node(StringArg1)(in int type, in StringArg1 id)
	{
		_GODOT_add_node.bind("AnimationTreePlayer", "add_node");
		ptrcall!(void)(_GODOT_add_node, _godot_object, type, id);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_node_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_exists") = _GODOT_node_exists;
	bool node_exists(StringArg0)(in StringArg0 node) const
	{
		_GODOT_node_exists.bind("AnimationTreePlayer", "node_exists");
		return ptrcall!(bool)(_GODOT_node_exists, _godot_object, node);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_node_rename;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_rename") = _GODOT_node_rename;
	GodotError node_rename(StringArg0, StringArg1)(in StringArg0 node, in StringArg1 new_name)
	{
		_GODOT_node_rename.bind("AnimationTreePlayer", "node_rename");
		return ptrcall!(GodotError)(_GODOT_node_rename, _godot_object, node, new_name);
	}
	package(godot) static GodotMethod!(AnimationTreePlayer.NodeType, String) _GODOT_node_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_type") = _GODOT_node_get_type;
	AnimationTreePlayer.NodeType node_get_type(StringArg0)(in StringArg0 id) const
	{
		_GODOT_node_get_type.bind("AnimationTreePlayer", "node_get_type");
		return ptrcall!(AnimationTreePlayer.NodeType)(_GODOT_node_get_type, _godot_object, id);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_node_get_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_input_count") = _GODOT_node_get_input_count;
	int node_get_input_count(StringArg0)(in StringArg0 id) const
	{
		_GODOT_node_get_input_count.bind("AnimationTreePlayer", "node_get_input_count");
		return ptrcall!(int)(_GODOT_node_get_input_count, _godot_object, id);
	}
	package(godot) static GodotMethod!(String, String, int) _GODOT_node_get_input_source;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_input_source") = _GODOT_node_get_input_source;
	String node_get_input_source(StringArg0)(in StringArg0 id, in int idx) const
	{
		_GODOT_node_get_input_source.bind("AnimationTreePlayer", "node_get_input_source");
		return ptrcall!(String)(_GODOT_node_get_input_source, _godot_object, id, idx);
	}
	package(godot) static GodotMethod!(void, String, Animation) _GODOT_animation_node_set_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_set_animation") = _GODOT_animation_node_set_animation;
	void animation_node_set_animation(StringArg0)(in StringArg0 id, in Animation animation)
	{
		_GODOT_animation_node_set_animation.bind("AnimationTreePlayer", "animation_node_set_animation");
		ptrcall!(void)(_GODOT_animation_node_set_animation, _godot_object, id, animation);
	}
	package(godot) static GodotMethod!(Animation, String) _GODOT_animation_node_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_get_animation") = _GODOT_animation_node_get_animation;
	Animation animation_node_get_animation(StringArg0)(in StringArg0 id) const
	{
		_GODOT_animation_node_get_animation.bind("AnimationTreePlayer", "animation_node_get_animation");
		return ptrcall!(Animation)(_GODOT_animation_node_get_animation, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_animation_node_set_master_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_set_master_animation") = _GODOT_animation_node_set_master_animation;
	void animation_node_set_master_animation(StringArg0, StringArg1)(in StringArg0 id, in StringArg1 source)
	{
		_GODOT_animation_node_set_master_animation.bind("AnimationTreePlayer", "animation_node_set_master_animation");
		ptrcall!(void)(_GODOT_animation_node_set_master_animation, _godot_object, id, source);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_animation_node_get_master_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_get_master_animation") = _GODOT_animation_node_get_master_animation;
	String animation_node_get_master_animation(StringArg0)(in StringArg0 id) const
	{
		_GODOT_animation_node_get_master_animation.bind("AnimationTreePlayer", "animation_node_get_master_animation");
		return ptrcall!(String)(_GODOT_animation_node_get_master_animation, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, NodePath, bool) _GODOT_animation_node_set_filter_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_set_filter_path") = _GODOT_animation_node_set_filter_path;
	void animation_node_set_filter_path(StringArg0, NodePathArg1)(in StringArg0 id, in NodePathArg1 path, in bool enable)
	{
		_GODOT_animation_node_set_filter_path.bind("AnimationTreePlayer", "animation_node_set_filter_path");
		ptrcall!(void)(_GODOT_animation_node_set_filter_path, _godot_object, id, path, enable);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_oneshot_node_set_fadein_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_fadein_time") = _GODOT_oneshot_node_set_fadein_time;
	void oneshot_node_set_fadein_time(StringArg0)(in StringArg0 id, in float time_sec)
	{
		_GODOT_oneshot_node_set_fadein_time.bind("AnimationTreePlayer", "oneshot_node_set_fadein_time");
		ptrcall!(void)(_GODOT_oneshot_node_set_fadein_time, _godot_object, id, time_sec);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_oneshot_node_get_fadein_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_fadein_time") = _GODOT_oneshot_node_get_fadein_time;
	float oneshot_node_get_fadein_time(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_fadein_time.bind("AnimationTreePlayer", "oneshot_node_get_fadein_time");
		return ptrcall!(float)(_GODOT_oneshot_node_get_fadein_time, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_oneshot_node_set_fadeout_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_fadeout_time") = _GODOT_oneshot_node_set_fadeout_time;
	void oneshot_node_set_fadeout_time(StringArg0)(in StringArg0 id, in float time_sec)
	{
		_GODOT_oneshot_node_set_fadeout_time.bind("AnimationTreePlayer", "oneshot_node_set_fadeout_time");
		ptrcall!(void)(_GODOT_oneshot_node_set_fadeout_time, _godot_object, id, time_sec);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_oneshot_node_get_fadeout_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_fadeout_time") = _GODOT_oneshot_node_get_fadeout_time;
	float oneshot_node_get_fadeout_time(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_fadeout_time.bind("AnimationTreePlayer", "oneshot_node_get_fadeout_time");
		return ptrcall!(float)(_GODOT_oneshot_node_get_fadeout_time, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_oneshot_node_set_autorestart;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_autorestart") = _GODOT_oneshot_node_set_autorestart;
	void oneshot_node_set_autorestart(StringArg0)(in StringArg0 id, in bool enable)
	{
		_GODOT_oneshot_node_set_autorestart.bind("AnimationTreePlayer", "oneshot_node_set_autorestart");
		ptrcall!(void)(_GODOT_oneshot_node_set_autorestart, _godot_object, id, enable);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_oneshot_node_set_autorestart_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_autorestart_delay") = _GODOT_oneshot_node_set_autorestart_delay;
	void oneshot_node_set_autorestart_delay(StringArg0)(in StringArg0 id, in float delay_sec)
	{
		_GODOT_oneshot_node_set_autorestart_delay.bind("AnimationTreePlayer", "oneshot_node_set_autorestart_delay");
		ptrcall!(void)(_GODOT_oneshot_node_set_autorestart_delay, _godot_object, id, delay_sec);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_oneshot_node_set_autorestart_random_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_autorestart_random_delay") = _GODOT_oneshot_node_set_autorestart_random_delay;
	void oneshot_node_set_autorestart_random_delay(StringArg0)(in StringArg0 id, in float rand_sec)
	{
		_GODOT_oneshot_node_set_autorestart_random_delay.bind("AnimationTreePlayer", "oneshot_node_set_autorestart_random_delay");
		ptrcall!(void)(_GODOT_oneshot_node_set_autorestart_random_delay, _godot_object, id, rand_sec);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_oneshot_node_has_autorestart;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_has_autorestart") = _GODOT_oneshot_node_has_autorestart;
	bool oneshot_node_has_autorestart(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_has_autorestart.bind("AnimationTreePlayer", "oneshot_node_has_autorestart");
		return ptrcall!(bool)(_GODOT_oneshot_node_has_autorestart, _godot_object, id);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_oneshot_node_get_autorestart_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_autorestart_delay") = _GODOT_oneshot_node_get_autorestart_delay;
	float oneshot_node_get_autorestart_delay(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_autorestart_delay.bind("AnimationTreePlayer", "oneshot_node_get_autorestart_delay");
		return ptrcall!(float)(_GODOT_oneshot_node_get_autorestart_delay, _godot_object, id);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_oneshot_node_get_autorestart_random_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_autorestart_random_delay") = _GODOT_oneshot_node_get_autorestart_random_delay;
	float oneshot_node_get_autorestart_random_delay(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_autorestart_random_delay.bind("AnimationTreePlayer", "oneshot_node_get_autorestart_random_delay");
		return ptrcall!(float)(_GODOT_oneshot_node_get_autorestart_random_delay, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_oneshot_node_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_start") = _GODOT_oneshot_node_start;
	void oneshot_node_start(StringArg0)(in StringArg0 id)
	{
		_GODOT_oneshot_node_start.bind("AnimationTreePlayer", "oneshot_node_start");
		ptrcall!(void)(_GODOT_oneshot_node_start, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_oneshot_node_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_stop") = _GODOT_oneshot_node_stop;
	void oneshot_node_stop(StringArg0)(in StringArg0 id)
	{
		_GODOT_oneshot_node_stop.bind("AnimationTreePlayer", "oneshot_node_stop");
		ptrcall!(void)(_GODOT_oneshot_node_stop, _godot_object, id);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_oneshot_node_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_is_active") = _GODOT_oneshot_node_is_active;
	bool oneshot_node_is_active(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_is_active.bind("AnimationTreePlayer", "oneshot_node_is_active");
		return ptrcall!(bool)(_GODOT_oneshot_node_is_active, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, NodePath, bool) _GODOT_oneshot_node_set_filter_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_filter_path") = _GODOT_oneshot_node_set_filter_path;
	void oneshot_node_set_filter_path(StringArg0, NodePathArg1)(in StringArg0 id, in NodePathArg1 path, in bool enable)
	{
		_GODOT_oneshot_node_set_filter_path.bind("AnimationTreePlayer", "oneshot_node_set_filter_path");
		ptrcall!(void)(_GODOT_oneshot_node_set_filter_path, _godot_object, id, path, enable);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_mix_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "mix_node_set_amount") = _GODOT_mix_node_set_amount;
	void mix_node_set_amount(StringArg0)(in StringArg0 id, in float ratio)
	{
		_GODOT_mix_node_set_amount.bind("AnimationTreePlayer", "mix_node_set_amount");
		ptrcall!(void)(_GODOT_mix_node_set_amount, _godot_object, id, ratio);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_mix_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "mix_node_get_amount") = _GODOT_mix_node_get_amount;
	float mix_node_get_amount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_mix_node_get_amount.bind("AnimationTreePlayer", "mix_node_get_amount");
		return ptrcall!(float)(_GODOT_mix_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_blend2_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend2_node_set_amount") = _GODOT_blend2_node_set_amount;
	void blend2_node_set_amount(StringArg0)(in StringArg0 id, in float blend)
	{
		_GODOT_blend2_node_set_amount.bind("AnimationTreePlayer", "blend2_node_set_amount");
		ptrcall!(void)(_GODOT_blend2_node_set_amount, _godot_object, id, blend);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_blend2_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend2_node_get_amount") = _GODOT_blend2_node_get_amount;
	float blend2_node_get_amount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_blend2_node_get_amount.bind("AnimationTreePlayer", "blend2_node_get_amount");
		return ptrcall!(float)(_GODOT_blend2_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, NodePath, bool) _GODOT_blend2_node_set_filter_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend2_node_set_filter_path") = _GODOT_blend2_node_set_filter_path;
	void blend2_node_set_filter_path(StringArg0, NodePathArg1)(in StringArg0 id, in NodePathArg1 path, in bool enable)
	{
		_GODOT_blend2_node_set_filter_path.bind("AnimationTreePlayer", "blend2_node_set_filter_path");
		ptrcall!(void)(_GODOT_blend2_node_set_filter_path, _godot_object, id, path, enable);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_blend3_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend3_node_set_amount") = _GODOT_blend3_node_set_amount;
	void blend3_node_set_amount(StringArg0)(in StringArg0 id, in float blend)
	{
		_GODOT_blend3_node_set_amount.bind("AnimationTreePlayer", "blend3_node_set_amount");
		ptrcall!(void)(_GODOT_blend3_node_set_amount, _godot_object, id, blend);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_blend3_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend3_node_get_amount") = _GODOT_blend3_node_get_amount;
	float blend3_node_get_amount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_blend3_node_get_amount.bind("AnimationTreePlayer", "blend3_node_get_amount");
		return ptrcall!(float)(_GODOT_blend3_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, Vector2) _GODOT_blend4_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend4_node_set_amount") = _GODOT_blend4_node_set_amount;
	void blend4_node_set_amount(StringArg0)(in StringArg0 id, in Vector2 blend)
	{
		_GODOT_blend4_node_set_amount.bind("AnimationTreePlayer", "blend4_node_set_amount");
		ptrcall!(void)(_GODOT_blend4_node_set_amount, _godot_object, id, blend);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_blend4_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend4_node_get_amount") = _GODOT_blend4_node_get_amount;
	Vector2 blend4_node_get_amount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_blend4_node_get_amount.bind("AnimationTreePlayer", "blend4_node_get_amount");
		return ptrcall!(Vector2)(_GODOT_blend4_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_timescale_node_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "timescale_node_set_scale") = _GODOT_timescale_node_set_scale;
	void timescale_node_set_scale(StringArg0)(in StringArg0 id, in float scale)
	{
		_GODOT_timescale_node_set_scale.bind("AnimationTreePlayer", "timescale_node_set_scale");
		ptrcall!(void)(_GODOT_timescale_node_set_scale, _godot_object, id, scale);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_timescale_node_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "timescale_node_get_scale") = _GODOT_timescale_node_get_scale;
	float timescale_node_get_scale(StringArg0)(in StringArg0 id) const
	{
		_GODOT_timescale_node_get_scale.bind("AnimationTreePlayer", "timescale_node_get_scale");
		return ptrcall!(float)(_GODOT_timescale_node_get_scale, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_timeseek_node_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "timeseek_node_seek") = _GODOT_timeseek_node_seek;
	void timeseek_node_seek(StringArg0)(in StringArg0 id, in float seconds)
	{
		_GODOT_timeseek_node_seek.bind("AnimationTreePlayer", "timeseek_node_seek");
		ptrcall!(void)(_GODOT_timeseek_node_seek, _godot_object, id, seconds);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_transition_node_set_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_input_count") = _GODOT_transition_node_set_input_count;
	void transition_node_set_input_count(StringArg0)(in StringArg0 id, in int count)
	{
		_GODOT_transition_node_set_input_count.bind("AnimationTreePlayer", "transition_node_set_input_count");
		ptrcall!(void)(_GODOT_transition_node_set_input_count, _godot_object, id, count);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_transition_node_get_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_get_input_count") = _GODOT_transition_node_get_input_count;
	int transition_node_get_input_count(StringArg0)(in StringArg0 id) const
	{
		_GODOT_transition_node_get_input_count.bind("AnimationTreePlayer", "transition_node_get_input_count");
		return ptrcall!(int)(_GODOT_transition_node_get_input_count, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_transition_node_delete_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_delete_input") = _GODOT_transition_node_delete_input;
	void transition_node_delete_input(StringArg0)(in StringArg0 id, in int input_idx)
	{
		_GODOT_transition_node_delete_input.bind("AnimationTreePlayer", "transition_node_delete_input");
		ptrcall!(void)(_GODOT_transition_node_delete_input, _godot_object, id, input_idx);
	}
	package(godot) static GodotMethod!(void, String, int, bool) _GODOT_transition_node_set_input_auto_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_input_auto_advance") = _GODOT_transition_node_set_input_auto_advance;
	void transition_node_set_input_auto_advance(StringArg0)(in StringArg0 id, in int input_idx, in bool enable)
	{
		_GODOT_transition_node_set_input_auto_advance.bind("AnimationTreePlayer", "transition_node_set_input_auto_advance");
		ptrcall!(void)(_GODOT_transition_node_set_input_auto_advance, _godot_object, id, input_idx, enable);
	}
	package(godot) static GodotMethod!(bool, String, int) _GODOT_transition_node_has_input_auto_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_has_input_auto_advance") = _GODOT_transition_node_has_input_auto_advance;
	bool transition_node_has_input_auto_advance(StringArg0)(in StringArg0 id, in int input_idx) const
	{
		_GODOT_transition_node_has_input_auto_advance.bind("AnimationTreePlayer", "transition_node_has_input_auto_advance");
		return ptrcall!(bool)(_GODOT_transition_node_has_input_auto_advance, _godot_object, id, input_idx);
	}
	package(godot) static GodotMethod!(void, String, float) _GODOT_transition_node_set_xfade_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_xfade_time") = _GODOT_transition_node_set_xfade_time;
	void transition_node_set_xfade_time(StringArg0)(in StringArg0 id, in float time_sec)
	{
		_GODOT_transition_node_set_xfade_time.bind("AnimationTreePlayer", "transition_node_set_xfade_time");
		ptrcall!(void)(_GODOT_transition_node_set_xfade_time, _godot_object, id, time_sec);
	}
	package(godot) static GodotMethod!(float, String) _GODOT_transition_node_get_xfade_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_get_xfade_time") = _GODOT_transition_node_get_xfade_time;
	float transition_node_get_xfade_time(StringArg0)(in StringArg0 id) const
	{
		_GODOT_transition_node_get_xfade_time.bind("AnimationTreePlayer", "transition_node_get_xfade_time");
		return ptrcall!(float)(_GODOT_transition_node_get_xfade_time, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_transition_node_set_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_current") = _GODOT_transition_node_set_current;
	void transition_node_set_current(StringArg0)(in StringArg0 id, in int input_idx)
	{
		_GODOT_transition_node_set_current.bind("AnimationTreePlayer", "transition_node_set_current");
		ptrcall!(void)(_GODOT_transition_node_set_current, _godot_object, id, input_idx);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_transition_node_get_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_get_current") = _GODOT_transition_node_get_current;
	int transition_node_get_current(StringArg0)(in StringArg0 id) const
	{
		_GODOT_transition_node_get_current.bind("AnimationTreePlayer", "transition_node_get_current");
		return ptrcall!(int)(_GODOT_transition_node_get_current, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, Vector2) _GODOT_node_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_set_position") = _GODOT_node_set_position;
	void node_set_position(StringArg0)(in StringArg0 id, in Vector2 screen_position)
	{
		_GODOT_node_set_position.bind("AnimationTreePlayer", "node_set_position");
		ptrcall!(void)(_GODOT_node_set_position, _godot_object, id, screen_position);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_node_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_position") = _GODOT_node_get_position;
	Vector2 node_get_position(StringArg0)(in StringArg0 id) const
	{
		_GODOT_node_get_position.bind("AnimationTreePlayer", "node_get_position");
		return ptrcall!(Vector2)(_GODOT_node_get_position, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_node") = _GODOT_remove_node;
	void remove_node(StringArg0)(in StringArg0 id)
	{
		_GODOT_remove_node.bind("AnimationTreePlayer", "remove_node");
		ptrcall!(void)(_GODOT_remove_node, _godot_object, id);
	}
	package(godot) static GodotMethod!(GodotError, String, String, int) _GODOT_connect_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_nodes") = _GODOT_connect_nodes;
	GodotError connect_nodes(StringArg0, StringArg1)(in StringArg0 id, in StringArg1 dst_id, in int dst_input_idx)
	{
		_GODOT_connect_nodes.bind("AnimationTreePlayer", "connect_nodes");
		return ptrcall!(GodotError)(_GODOT_connect_nodes, _godot_object, id, dst_id, dst_input_idx);
	}
	package(godot) static GodotMethod!(bool, String, String, int) _GODOT_are_nodes_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_nodes_connected") = _GODOT_are_nodes_connected;
	bool are_nodes_connected(StringArg0, StringArg1)(in StringArg0 id, in StringArg1 dst_id, in int dst_input_idx) const
	{
		_GODOT_are_nodes_connected.bind("AnimationTreePlayer", "are_nodes_connected");
		return ptrcall!(bool)(_GODOT_are_nodes_connected, _godot_object, id, dst_id, dst_input_idx);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_disconnect_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_nodes") = _GODOT_disconnect_nodes;
	void disconnect_nodes(StringArg0)(in StringArg0 id, in int dst_input_idx)
	{
		_GODOT_disconnect_nodes.bind("AnimationTreePlayer", "disconnect_nodes");
		ptrcall!(void)(_GODOT_disconnect_nodes, _godot_object, id, dst_input_idx);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	void set_active(in bool enabled)
	{
		_GODOT_set_active.bind("AnimationTreePlayer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	bool is_active() const
	{
		_GODOT_is_active.bind("AnimationTreePlayer", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	void set_base_path(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_base_path.bind("AnimationTreePlayer", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	NodePath get_base_path() const
	{
		_GODOT_get_base_path.bind("AnimationTreePlayer", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_master_player;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_master_player") = _GODOT_set_master_player;
	void set_master_player(NodePathArg0)(in NodePathArg0 nodepath)
	{
		_GODOT_set_master_player.bind("AnimationTreePlayer", "set_master_player");
		ptrcall!(void)(_GODOT_set_master_player, _godot_object, nodepath);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_master_player;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_master_player") = _GODOT_get_master_player;
	NodePath get_master_player() const
	{
		_GODOT_get_master_player.bind("AnimationTreePlayer", "get_master_player");
		return ptrcall!(NodePath)(_GODOT_get_master_player, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_node_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_list") = _GODOT_get_node_list;
	PoolStringArray get_node_list()
	{
		_GODOT_get_node_list.bind("AnimationTreePlayer", "get_node_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_node_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation_process_mode") = _GODOT_set_animation_process_mode;
	void set_animation_process_mode(in int mode)
	{
		_GODOT_set_animation_process_mode.bind("AnimationTreePlayer", "set_animation_process_mode");
		ptrcall!(void)(_GODOT_set_animation_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AnimationTreePlayer.AnimationProcessMode) _GODOT_get_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_process_mode") = _GODOT_get_animation_process_mode;
	AnimationTreePlayer.AnimationProcessMode get_animation_process_mode() const
	{
		_GODOT_get_animation_process_mode.bind("AnimationTreePlayer", "get_animation_process_mode");
		return ptrcall!(AnimationTreePlayer.AnimationProcessMode)(_GODOT_get_animation_process_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "advance") = _GODOT_advance;
	void advance(in float delta)
	{
		_GODOT_advance.bind("AnimationTreePlayer", "advance");
		ptrcall!(void)(_GODOT_advance, _godot_object, delta);
	}
	package(godot) static GodotMethod!(void) _GODOT_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset") = _GODOT_reset;
	void reset()
	{
		_GODOT_reset.bind("AnimationTreePlayer", "reset");
		ptrcall!(void)(_GODOT_reset, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_recompute_caches;
	package(godot) alias _GODOT_methodBindInfo(string name : "recompute_caches") = _GODOT_recompute_caches;
	void recompute_caches()
	{
		_GODOT_recompute_caches.bind("AnimationTreePlayer", "recompute_caches");
		ptrcall!(void)(_GODOT_recompute_caches, _godot_object);
	}
}
