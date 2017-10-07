module godot.parallaxbackground;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.canvaslayer;
@GodotBaseClass struct ParallaxBackground
{
	static immutable string _GODOT_internal_name = "ParallaxBackground";
public:
	union { godot_object _godot_object; CanvasLayer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ParallaxBackground other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParallaxBackground opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ParallaxBackground _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ParallaxBackground");
		if(constructor is null) return typeof(this).init;
		return cast(ParallaxBackground)(constructor());
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT__camera_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_camera_moved") = _GODOT__camera_moved;
	void _camera_moved(in Transform2D arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_camera_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_offset") = _GODOT_set_scroll_offset;
	void set_scroll_offset(in Vector2 ofs)
	{
		_GODOT_set_scroll_offset.bind("ParallaxBackground", "set_scroll_offset");
		ptrcall!(void)(_GODOT_set_scroll_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_offset") = _GODOT_get_scroll_offset;
	Vector2 get_scroll_offset() const
	{
		_GODOT_get_scroll_offset.bind("ParallaxBackground", "get_scroll_offset");
		return ptrcall!(Vector2)(_GODOT_get_scroll_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_base_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_base_offset") = _GODOT_set_scroll_base_offset;
	void set_scroll_base_offset(in Vector2 ofs)
	{
		_GODOT_set_scroll_base_offset.bind("ParallaxBackground", "set_scroll_base_offset");
		ptrcall!(void)(_GODOT_set_scroll_base_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_base_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_base_offset") = _GODOT_get_scroll_base_offset;
	Vector2 get_scroll_base_offset() const
	{
		_GODOT_get_scroll_base_offset.bind("ParallaxBackground", "get_scroll_base_offset");
		return ptrcall!(Vector2)(_GODOT_get_scroll_base_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_base_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_base_scale") = _GODOT_set_scroll_base_scale;
	void set_scroll_base_scale(in Vector2 scale)
	{
		_GODOT_set_scroll_base_scale.bind("ParallaxBackground", "set_scroll_base_scale");
		ptrcall!(void)(_GODOT_set_scroll_base_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_base_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_base_scale") = _GODOT_get_scroll_base_scale;
	Vector2 get_scroll_base_scale() const
	{
		_GODOT_get_scroll_base_scale.bind("ParallaxBackground", "get_scroll_base_scale");
		return ptrcall!(Vector2)(_GODOT_get_scroll_base_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_limit_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_begin") = _GODOT_set_limit_begin;
	void set_limit_begin(in Vector2 ofs)
	{
		_GODOT_set_limit_begin.bind("ParallaxBackground", "set_limit_begin");
		ptrcall!(void)(_GODOT_set_limit_begin, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_limit_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_limit_begin") = _GODOT_get_limit_begin;
	Vector2 get_limit_begin() const
	{
		_GODOT_get_limit_begin.bind("ParallaxBackground", "get_limit_begin");
		return ptrcall!(Vector2)(_GODOT_get_limit_begin, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_limit_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_end") = _GODOT_set_limit_end;
	void set_limit_end(in Vector2 ofs)
	{
		_GODOT_set_limit_end.bind("ParallaxBackground", "set_limit_end");
		ptrcall!(void)(_GODOT_set_limit_end, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_limit_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_limit_end") = _GODOT_get_limit_end;
	Vector2 get_limit_end() const
	{
		_GODOT_get_limit_end.bind("ParallaxBackground", "get_limit_end");
		return ptrcall!(Vector2)(_GODOT_get_limit_end, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ignore_camera_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ignore_camera_zoom") = _GODOT_set_ignore_camera_zoom;
	void set_ignore_camera_zoom(in bool ignore)
	{
		_GODOT_set_ignore_camera_zoom.bind("ParallaxBackground", "set_ignore_camera_zoom");
		ptrcall!(void)(_GODOT_set_ignore_camera_zoom, _godot_object, ignore);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ignore_camera_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ignore_camera_zoom") = _GODOT_is_ignore_camera_zoom;
	bool is_ignore_camera_zoom()
	{
		_GODOT_is_ignore_camera_zoom.bind("ParallaxBackground", "is_ignore_camera_zoom");
		return ptrcall!(bool)(_GODOT_is_ignore_camera_zoom, _godot_object);
	}
}
