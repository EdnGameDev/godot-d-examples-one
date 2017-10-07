module godot.polygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
@GodotBaseClass struct Polygon2D
{
	static immutable string _GODOT_internal_name = "Polygon2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Polygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Polygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Polygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Polygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(Polygon2D)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	void set_polygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("Polygon2D", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	PoolVector2Array get_polygon() const
	{
		_GODOT_get_polygon.bind("Polygon2D", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv") = _GODOT_set_uv;
	void set_uv(in PoolVector2Array uv)
	{
		_GODOT_set_uv.bind("Polygon2D", "set_uv");
		ptrcall!(void)(_GODOT_set_uv, _godot_object, uv);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv") = _GODOT_get_uv;
	PoolVector2Array get_uv() const
	{
		_GODOT_get_uv.bind("Polygon2D", "get_uv");
		return ptrcall!(PoolVector2Array)(_GODOT_get_uv, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(in Color color)
	{
		_GODOT_set_color.bind("Polygon2D", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color() const
	{
		_GODOT_get_color.bind("Polygon2D", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolColorArray) _GODOT_set_vertex_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_colors") = _GODOT_set_vertex_colors;
	void set_vertex_colors(in PoolColorArray vertex_colors)
	{
		_GODOT_set_vertex_colors.bind("Polygon2D", "set_vertex_colors");
		ptrcall!(void)(_GODOT_set_vertex_colors, _godot_object, vertex_colors);
	}
	package(godot) static GodotMethod!(PoolColorArray) _GODOT_get_vertex_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_colors") = _GODOT_get_vertex_colors;
	PoolColorArray get_vertex_colors() const
	{
		_GODOT_get_vertex_colors.bind("Polygon2D", "get_vertex_colors");
		return ptrcall!(PoolColorArray)(_GODOT_get_vertex_colors, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("Polygon2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("Polygon2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_offset") = _GODOT_set_texture_offset;
	void set_texture_offset(in Vector2 texture_offset)
	{
		_GODOT_set_texture_offset.bind("Polygon2D", "set_texture_offset");
		ptrcall!(void)(_GODOT_set_texture_offset, _godot_object, texture_offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_offset") = _GODOT_get_texture_offset;
	Vector2 get_texture_offset() const
	{
		_GODOT_get_texture_offset.bind("Polygon2D", "get_texture_offset");
		return ptrcall!(Vector2)(_GODOT_get_texture_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_texture_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_rotation") = _GODOT_set_texture_rotation;
	void set_texture_rotation(in float texture_rotation)
	{
		_GODOT_set_texture_rotation.bind("Polygon2D", "set_texture_rotation");
		ptrcall!(void)(_GODOT_set_texture_rotation, _godot_object, texture_rotation);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_texture_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_rotation") = _GODOT_get_texture_rotation;
	float get_texture_rotation() const
	{
		_GODOT_get_texture_rotation.bind("Polygon2D", "get_texture_rotation");
		return ptrcall!(float)(_GODOT_get_texture_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_texture_rotationd;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_texture_rotationd") = _GODOT__set_texture_rotationd;
	void _set_texture_rotationd(in float texture_rotation)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(texture_rotation);
		String _GODOT_method_name = String("_set_texture_rotationd");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_texture_rotationd;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_texture_rotationd") = _GODOT__get_texture_rotationd;
	float _get_texture_rotationd() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_texture_rotationd");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_scale") = _GODOT_set_texture_scale;
	void set_texture_scale(in Vector2 texture_scale)
	{
		_GODOT_set_texture_scale.bind("Polygon2D", "set_texture_scale");
		ptrcall!(void)(_GODOT_set_texture_scale, _godot_object, texture_scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_scale") = _GODOT_get_texture_scale;
	Vector2 get_texture_scale() const
	{
		_GODOT_get_texture_scale.bind("Polygon2D", "get_texture_scale");
		return ptrcall!(Vector2)(_GODOT_get_texture_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_invert;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_invert") = _GODOT_set_invert;
	void set_invert(in bool invert)
	{
		_GODOT_set_invert.bind("Polygon2D", "set_invert");
		ptrcall!(void)(_GODOT_set_invert, _godot_object, invert);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_invert;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_invert") = _GODOT_get_invert;
	bool get_invert() const
	{
		_GODOT_get_invert.bind("Polygon2D", "get_invert");
		return ptrcall!(bool)(_GODOT_get_invert, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_antialiased;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_antialiased") = _GODOT_set_antialiased;
	void set_antialiased(in bool antialiased)
	{
		_GODOT_set_antialiased.bind("Polygon2D", "set_antialiased");
		ptrcall!(void)(_GODOT_set_antialiased, _godot_object, antialiased);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_antialiased;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_antialiased") = _GODOT_get_antialiased;
	bool get_antialiased() const
	{
		_GODOT_get_antialiased.bind("Polygon2D", "get_antialiased");
		return ptrcall!(bool)(_GODOT_get_antialiased, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_invert_border;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_invert_border") = _GODOT_set_invert_border;
	void set_invert_border(in float invert_border)
	{
		_GODOT_set_invert_border.bind("Polygon2D", "set_invert_border");
		ptrcall!(void)(_GODOT_set_invert_border, _godot_object, invert_border);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_invert_border;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_invert_border") = _GODOT_get_invert_border;
	float get_invert_border() const
	{
		_GODOT_get_invert_border.bind("Polygon2D", "get_invert_border");
		return ptrcall!(float)(_GODOT_get_invert_border, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("Polygon2D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("Polygon2D", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
}
