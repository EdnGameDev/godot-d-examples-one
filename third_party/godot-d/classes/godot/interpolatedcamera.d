module godot.interpolatedcamera;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.camera;
@GodotBaseClass struct InterpolatedCamera
{
	static immutable string _GODOT_internal_name = "InterpolatedCamera";
public:
	union { godot_object _godot_object; Camera base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InterpolatedCamera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InterpolatedCamera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InterpolatedCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InterpolatedCamera");
		if(constructor is null) return typeof(this).init;
		return cast(InterpolatedCamera)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_target_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target_path") = _GODOT_set_target_path;
	void set_target_path(NodePathArg0)(in NodePathArg0 target_path)
	{
		_GODOT_set_target_path.bind("InterpolatedCamera", "set_target_path");
		ptrcall!(void)(_GODOT_set_target_path, _godot_object, target_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_target_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_target_path") = _GODOT_get_target_path;
	NodePath get_target_path() const
	{
		_GODOT_get_target_path.bind("InterpolatedCamera", "get_target_path");
		return ptrcall!(NodePath)(_GODOT_get_target_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target") = _GODOT_set_target;
	void set_target(in GodotObject target)
	{
		_GODOT_set_target.bind("InterpolatedCamera", "set_target");
		ptrcall!(void)(_GODOT_set_target, _godot_object, target);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed") = _GODOT_set_speed;
	void set_speed(in float speed)
	{
		_GODOT_set_speed.bind("InterpolatedCamera", "set_speed");
		ptrcall!(void)(_GODOT_set_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed") = _GODOT_get_speed;
	float get_speed() const
	{
		_GODOT_get_speed.bind("InterpolatedCamera", "get_speed");
		return ptrcall!(float)(_GODOT_get_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_interpolation_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interpolation_enabled") = _GODOT_set_interpolation_enabled;
	void set_interpolation_enabled(in bool target_path)
	{
		_GODOT_set_interpolation_enabled.bind("InterpolatedCamera", "set_interpolation_enabled");
		ptrcall!(void)(_GODOT_set_interpolation_enabled, _godot_object, target_path);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_interpolation_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_interpolation_enabled") = _GODOT_is_interpolation_enabled;
	bool is_interpolation_enabled() const
	{
		_GODOT_is_interpolation_enabled.bind("InterpolatedCamera", "is_interpolation_enabled");
		return ptrcall!(bool)(_GODOT_is_interpolation_enabled, _godot_object);
	}
}
