module godot.parallaxlayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct ParallaxLayer
{
	static immutable string _GODOT_internal_name = "ParallaxLayer";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ParallaxLayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParallaxLayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ParallaxLayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ParallaxLayer");
		if(constructor is null) return typeof(this).init;
		return cast(ParallaxLayer)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_motion_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_motion_scale") = _GODOT_set_motion_scale;
	void set_motion_scale(in Vector2 scale)
	{
		_GODOT_set_motion_scale.bind("ParallaxLayer", "set_motion_scale");
		ptrcall!(void)(_GODOT_set_motion_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_motion_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_motion_scale") = _GODOT_get_motion_scale;
	Vector2 get_motion_scale() const
	{
		_GODOT_get_motion_scale.bind("ParallaxLayer", "get_motion_scale");
		return ptrcall!(Vector2)(_GODOT_get_motion_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_motion_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_motion_offset") = _GODOT_set_motion_offset;
	void set_motion_offset(in Vector2 offset)
	{
		_GODOT_set_motion_offset.bind("ParallaxLayer", "set_motion_offset");
		ptrcall!(void)(_GODOT_set_motion_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_motion_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_motion_offset") = _GODOT_get_motion_offset;
	Vector2 get_motion_offset() const
	{
		_GODOT_get_motion_offset.bind("ParallaxLayer", "get_motion_offset");
		return ptrcall!(Vector2)(_GODOT_get_motion_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_mirroring;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mirroring") = _GODOT_set_mirroring;
	void set_mirroring(in Vector2 mirror)
	{
		_GODOT_set_mirroring.bind("ParallaxLayer", "set_mirroring");
		ptrcall!(void)(_GODOT_set_mirroring, _godot_object, mirror);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_mirroring;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mirroring") = _GODOT_get_mirroring;
	Vector2 get_mirroring() const
	{
		_GODOT_get_mirroring.bind("ParallaxLayer", "get_mirroring");
		return ptrcall!(Vector2)(_GODOT_get_mirroring, _godot_object);
	}
}
