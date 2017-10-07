module godot.animatedsprite3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spritebase3d;
import godot.spriteframes;
@GodotBaseClass struct AnimatedSprite3D
{
	static immutable string _GODOT_internal_name = "AnimatedSprite3D";
public:
	union { godot_object _godot_object; SpriteBase3D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AnimatedSprite3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimatedSprite3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimatedSprite3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AnimatedSprite3D");
		if(constructor is null) return typeof(this).init;
		return cast(AnimatedSprite3D)(constructor());
	}
	package(godot) static GodotMethod!(void, SpriteFrames) _GODOT_set_sprite_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sprite_frames") = _GODOT_set_sprite_frames;
	void set_sprite_frames(in SpriteFrames sprite_frames)
	{
		_GODOT_set_sprite_frames.bind("AnimatedSprite3D", "set_sprite_frames");
		ptrcall!(void)(_GODOT_set_sprite_frames, _godot_object, sprite_frames);
	}
	package(godot) static GodotMethod!(SpriteFrames) _GODOT_get_sprite_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sprite_frames") = _GODOT_get_sprite_frames;
	SpriteFrames get_sprite_frames() const
	{
		_GODOT_get_sprite_frames.bind("AnimatedSprite3D", "get_sprite_frames");
		return ptrcall!(SpriteFrames)(_GODOT_get_sprite_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation") = _GODOT_set_animation;
	void set_animation(StringArg0)(in StringArg0 animation)
	{
		_GODOT_set_animation.bind("AnimatedSprite3D", "set_animation");
		ptrcall!(void)(_GODOT_set_animation, _godot_object, animation);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation") = _GODOT_get_animation;
	String get_animation() const
	{
		_GODOT_get_animation.bind("AnimatedSprite3D", "get_animation");
		return ptrcall!(String)(_GODOT_get_animation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_playing") = _GODOT__set_playing;
	void _set_playing(in bool playing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(playing);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_playing") = _GODOT__is_playing;
	bool _is_playing() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_playing");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	void play(StringArg0)(in StringArg0 anim = "")
	{
		_GODOT_play.bind("AnimatedSprite3D", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	void stop()
	{
		_GODOT_stop.bind("AnimatedSprite3D", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	bool is_playing() const
	{
		_GODOT_is_playing.bind("AnimatedSprite3D", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	void set_frame(in int frame)
	{
		_GODOT_set_frame.bind("AnimatedSprite3D", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	int get_frame() const
	{
		_GODOT_get_frame.bind("AnimatedSprite3D", "get_frame");
		return ptrcall!(int)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__res_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_res_changed") = _GODOT__res_changed;
	void _res_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_res_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
