module godot.line2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.gradient;
import godot.texture;
@GodotBaseClass struct Line2D
{
	static immutable string _GODOT_internal_name = "Line2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Line2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Line2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Line2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Line2D");
		if(constructor is null) return typeof(this).init;
		return cast(Line2D)(constructor());
	}
	enum LineTextureMode : int
	{
		LINE_TEXTURE_TILE = 1,
		LINE_TEXTURE_NONE = 0,
	}
	enum LineCapMode : int
	{
		LINE_CAP_NONE = 0,
		LINE_CAP_BOX = 1,
		LINE_CAP_ROUND = 2,
	}
	enum LineJointMode : int
	{
		LINE_JOINT_ROUND = 2,
		LINE_JOINT_SHARP = 0,
		LINE_JOINT_BEVEL = 1,
	}
	enum int LINE_JOINT_ROUND = 2;
	enum int LINE_CAP_NONE = 0;
	enum int LINE_CAP_BOX = 1;
	enum int LINE_JOINT_SHARP = 0;
	enum int LINE_CAP_ROUND = 2;
	enum int LINE_TEXTURE_TILE = 1;
	enum int LINE_JOINT_BEVEL = 1;
	enum int LINE_TEXTURE_NONE = 0;
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_points") = _GODOT_set_points;
	void set_points(in PoolVector2Array points)
	{
		_GODOT_set_points.bind("Line2D", "set_points");
		ptrcall!(void)(_GODOT_set_points, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	PoolVector2Array get_points() const
	{
		_GODOT_get_points.bind("Line2D", "get_points");
		return ptrcall!(PoolVector2Array)(_GODOT_get_points, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_position") = _GODOT_set_point_position;
	void set_point_position(in int i, in Vector2 position)
	{
		_GODOT_set_point_position.bind("Line2D", "set_point_position");
		ptrcall!(void)(_GODOT_set_point_position, _godot_object, i, position);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	Vector2 get_point_position(in int i) const
	{
		_GODOT_get_point_position.bind("Line2D", "get_point_position");
		return ptrcall!(Vector2)(_GODOT_get_point_position, _godot_object, i);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_count") = _GODOT_get_point_count;
	int get_point_count() const
	{
		_GODOT_get_point_count.bind("Line2D", "get_point_count");
		return ptrcall!(int)(_GODOT_get_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	void add_point(in Vector2 position)
	{
		_GODOT_add_point.bind("Line2D", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	void remove_point(in int i)
	{
		_GODOT_remove_point.bind("Line2D", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, i);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_width") = _GODOT_set_width;
	void set_width(in float width)
	{
		_GODOT_set_width.bind("Line2D", "set_width");
		ptrcall!(void)(_GODOT_set_width, _godot_object, width);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	float get_width() const
	{
		_GODOT_get_width.bind("Line2D", "get_width");
		return ptrcall!(float)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_default_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_color") = _GODOT_set_default_color;
	void set_default_color(in Color color)
	{
		_GODOT_set_default_color.bind("Line2D", "set_default_color");
		ptrcall!(void)(_GODOT_set_default_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_default_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_color") = _GODOT_get_default_color;
	Color get_default_color() const
	{
		_GODOT_get_default_color.bind("Line2D", "get_default_color");
		return ptrcall!(Color)(_GODOT_get_default_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Gradient) _GODOT_set_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gradient") = _GODOT_set_gradient;
	void set_gradient(in Gradient color)
	{
		_GODOT_set_gradient.bind("Line2D", "set_gradient");
		ptrcall!(void)(_GODOT_set_gradient, _godot_object, color);
	}
	package(godot) static GodotMethod!(Gradient) _GODOT_get_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gradient") = _GODOT_get_gradient;
	Gradient get_gradient() const
	{
		_GODOT_get_gradient.bind("Line2D", "get_gradient");
		return ptrcall!(Gradient)(_GODOT_get_gradient, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("Line2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("Line2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_texture_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_mode") = _GODOT_set_texture_mode;
	void set_texture_mode(in int mode)
	{
		_GODOT_set_texture_mode.bind("Line2D", "set_texture_mode");
		ptrcall!(void)(_GODOT_set_texture_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineTextureMode) _GODOT_get_texture_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_mode") = _GODOT_get_texture_mode;
	Line2D.LineTextureMode get_texture_mode() const
	{
		_GODOT_get_texture_mode.bind("Line2D", "get_texture_mode");
		return ptrcall!(Line2D.LineTextureMode)(_GODOT_get_texture_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_joint_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_joint_mode") = _GODOT_set_joint_mode;
	void set_joint_mode(in int mode)
	{
		_GODOT_set_joint_mode.bind("Line2D", "set_joint_mode");
		ptrcall!(void)(_GODOT_set_joint_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineJointMode) _GODOT_get_joint_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joint_mode") = _GODOT_get_joint_mode;
	Line2D.LineJointMode get_joint_mode() const
	{
		_GODOT_get_joint_mode.bind("Line2D", "get_joint_mode");
		return ptrcall!(Line2D.LineJointMode)(_GODOT_get_joint_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_begin_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_begin_cap_mode") = _GODOT_set_begin_cap_mode;
	void set_begin_cap_mode(in int mode)
	{
		_GODOT_set_begin_cap_mode.bind("Line2D", "set_begin_cap_mode");
		ptrcall!(void)(_GODOT_set_begin_cap_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineCapMode) _GODOT_get_begin_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_begin_cap_mode") = _GODOT_get_begin_cap_mode;
	Line2D.LineCapMode get_begin_cap_mode() const
	{
		_GODOT_get_begin_cap_mode.bind("Line2D", "get_begin_cap_mode");
		return ptrcall!(Line2D.LineCapMode)(_GODOT_get_begin_cap_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_end_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_end_cap_mode") = _GODOT_set_end_cap_mode;
	void set_end_cap_mode(in int mode)
	{
		_GODOT_set_end_cap_mode.bind("Line2D", "set_end_cap_mode");
		ptrcall!(void)(_GODOT_set_end_cap_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineCapMode) _GODOT_get_end_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_end_cap_mode") = _GODOT_get_end_cap_mode;
	Line2D.LineCapMode get_end_cap_mode() const
	{
		_GODOT_get_end_cap_mode.bind("Line2D", "get_end_cap_mode");
		return ptrcall!(Line2D.LineCapMode)(_GODOT_get_end_cap_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_sharp_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sharp_limit") = _GODOT_set_sharp_limit;
	void set_sharp_limit(in float limit)
	{
		_GODOT_set_sharp_limit.bind("Line2D", "set_sharp_limit");
		ptrcall!(void)(_GODOT_set_sharp_limit, _godot_object, limit);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_sharp_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sharp_limit") = _GODOT_get_sharp_limit;
	float get_sharp_limit() const
	{
		_GODOT_get_sharp_limit.bind("Line2D", "get_sharp_limit");
		return ptrcall!(float)(_GODOT_get_sharp_limit, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_round_precision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_round_precision") = _GODOT_set_round_precision;
	void set_round_precision(in int precision)
	{
		_GODOT_set_round_precision.bind("Line2D", "set_round_precision");
		ptrcall!(void)(_GODOT_set_round_precision, _godot_object, precision);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_round_precision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_round_precision") = _GODOT_get_round_precision;
	int get_round_precision() const
	{
		_GODOT_get_round_precision.bind("Line2D", "get_round_precision");
		return ptrcall!(int)(_GODOT_get_round_precision, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__gradient_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gradient_changed") = _GODOT__gradient_changed;
	void _gradient_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gradient_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
