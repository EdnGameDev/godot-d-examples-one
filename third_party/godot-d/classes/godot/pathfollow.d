module godot.pathfollow;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
@GodotBaseClass struct PathFollow
{
	static immutable string _GODOT_internal_name = "PathFollow";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PathFollow other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PathFollow opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PathFollow _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PathFollow");
		if(constructor is null) return typeof(this).init;
		return cast(PathFollow)(constructor());
	}
	enum RotationMode : int
	{
		ROTATION_NONE = 0,
		ROTATION_Y = 1,
		ROTATION_XYZ = 3,
		ROTATION_XY = 2,
	}
	enum int ROTATION_NONE = 0;
	enum int ROTATION_Y = 1;
	enum int ROTATION_XYZ = 3;
	enum int ROTATION_XY = 2;
	package(godot) static GodotMethod!(void, float) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in float offset)
	{
		_GODOT_set_offset.bind("PathFollow", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	float get_offset() const
	{
		_GODOT_get_offset.bind("PathFollow", "get_offset");
		return ptrcall!(float)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	void set_h_offset(in float h_offset)
	{
		_GODOT_set_h_offset.bind("PathFollow", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, h_offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	float get_h_offset() const
	{
		_GODOT_get_h_offset.bind("PathFollow", "get_h_offset");
		return ptrcall!(float)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	void set_v_offset(in float v_offset)
	{
		_GODOT_set_v_offset.bind("PathFollow", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, v_offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	float get_v_offset() const
	{
		_GODOT_get_v_offset.bind("PathFollow", "get_v_offset");
		return ptrcall!(float)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_offset") = _GODOT_set_unit_offset;
	void set_unit_offset(in float unit_offset)
	{
		_GODOT_set_unit_offset.bind("PathFollow", "set_unit_offset");
		ptrcall!(void)(_GODOT_set_unit_offset, _godot_object, unit_offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_offset") = _GODOT_get_unit_offset;
	float get_unit_offset() const
	{
		_GODOT_get_unit_offset.bind("PathFollow", "get_unit_offset");
		return ptrcall!(float)(_GODOT_get_unit_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_rotation_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_mode") = _GODOT_set_rotation_mode;
	void set_rotation_mode(in int rotation_mode)
	{
		_GODOT_set_rotation_mode.bind("PathFollow", "set_rotation_mode");
		ptrcall!(void)(_GODOT_set_rotation_mode, _godot_object, rotation_mode);
	}
	package(godot) static GodotMethod!(PathFollow.RotationMode) _GODOT_get_rotation_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_mode") = _GODOT_get_rotation_mode;
	PathFollow.RotationMode get_rotation_mode() const
	{
		_GODOT_get_rotation_mode.bind("PathFollow", "get_rotation_mode");
		return ptrcall!(PathFollow.RotationMode)(_GODOT_get_rotation_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cubic_interpolation") = _GODOT_set_cubic_interpolation;
	void set_cubic_interpolation(in bool enable)
	{
		_GODOT_set_cubic_interpolation.bind("PathFollow", "set_cubic_interpolation");
		ptrcall!(void)(_GODOT_set_cubic_interpolation, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cubic_interpolation") = _GODOT_get_cubic_interpolation;
	bool get_cubic_interpolation() const
	{
		_GODOT_get_cubic_interpolation.bind("PathFollow", "get_cubic_interpolation");
		return ptrcall!(bool)(_GODOT_get_cubic_interpolation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	void set_loop(in bool loop)
	{
		_GODOT_set_loop.bind("PathFollow", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, loop);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	bool has_loop() const
	{
		_GODOT_has_loop.bind("PathFollow", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
}
