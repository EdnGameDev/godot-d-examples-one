module godot.pathfollow2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct PathFollow2D
{
	static immutable string _GODOT_internal_name = "PathFollow2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PathFollow2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PathFollow2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PathFollow2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PathFollow2D");
		if(constructor is null) return typeof(this).init;
		return cast(PathFollow2D)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in float offset)
	{
		_GODOT_set_offset.bind("PathFollow2D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	float get_offset() const
	{
		_GODOT_get_offset.bind("PathFollow2D", "get_offset");
		return ptrcall!(float)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	void set_h_offset(in float h_offset)
	{
		_GODOT_set_h_offset.bind("PathFollow2D", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, h_offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	float get_h_offset() const
	{
		_GODOT_get_h_offset.bind("PathFollow2D", "get_h_offset");
		return ptrcall!(float)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	void set_v_offset(in float v_offset)
	{
		_GODOT_set_v_offset.bind("PathFollow2D", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, v_offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	float get_v_offset() const
	{
		_GODOT_get_v_offset.bind("PathFollow2D", "get_v_offset");
		return ptrcall!(float)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_offset") = _GODOT_set_unit_offset;
	void set_unit_offset(in float unit_offset)
	{
		_GODOT_set_unit_offset.bind("PathFollow2D", "set_unit_offset");
		ptrcall!(void)(_GODOT_set_unit_offset, _godot_object, unit_offset);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_offset") = _GODOT_get_unit_offset;
	float get_unit_offset() const
	{
		_GODOT_get_unit_offset.bind("PathFollow2D", "get_unit_offset");
		return ptrcall!(float)(_GODOT_get_unit_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotate") = _GODOT_set_rotate;
	void set_rotate(in bool enable)
	{
		_GODOT_set_rotate.bind("PathFollow2D", "set_rotate");
		ptrcall!(void)(_GODOT_set_rotate, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_rotating;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_rotating") = _GODOT_is_rotating;
	bool is_rotating() const
	{
		_GODOT_is_rotating.bind("PathFollow2D", "is_rotating");
		return ptrcall!(bool)(_GODOT_is_rotating, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cubic_interpolation") = _GODOT_set_cubic_interpolation;
	void set_cubic_interpolation(in bool enable)
	{
		_GODOT_set_cubic_interpolation.bind("PathFollow2D", "set_cubic_interpolation");
		ptrcall!(void)(_GODOT_set_cubic_interpolation, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cubic_interpolation") = _GODOT_get_cubic_interpolation;
	bool get_cubic_interpolation() const
	{
		_GODOT_get_cubic_interpolation.bind("PathFollow2D", "get_cubic_interpolation");
		return ptrcall!(bool)(_GODOT_get_cubic_interpolation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	void set_loop(in bool loop)
	{
		_GODOT_set_loop.bind("PathFollow2D", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, loop);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	bool has_loop() const
	{
		_GODOT_has_loop.bind("PathFollow2D", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
}
