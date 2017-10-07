module godot.immediategeometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.texture;
@GodotBaseClass struct ImmediateGeometry
{
	static immutable string _GODOT_internal_name = "ImmediateGeometry";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ImmediateGeometry other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ImmediateGeometry opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ImmediateGeometry _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ImmediateGeometry");
		if(constructor is null) return typeof(this).init;
		return cast(ImmediateGeometry)(constructor());
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "begin") = _GODOT_begin;
	void begin(in int primitive, in Texture texture = Texture.init)
	{
		_GODOT_begin.bind("ImmediateGeometry", "begin");
		ptrcall!(void)(_GODOT_begin, _godot_object, primitive, texture);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal") = _GODOT_set_normal;
	void set_normal(in Vector3 normal)
	{
		_GODOT_set_normal.bind("ImmediateGeometry", "set_normal");
		ptrcall!(void)(_GODOT_set_normal, _godot_object, normal);
	}
	package(godot) static GodotMethod!(void, Plane) _GODOT_set_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tangent") = _GODOT_set_tangent;
	void set_tangent(in Plane tangent)
	{
		_GODOT_set_tangent.bind("ImmediateGeometry", "set_tangent");
		ptrcall!(void)(_GODOT_set_tangent, _godot_object, tangent);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(in Color color)
	{
		_GODOT_set_color.bind("ImmediateGeometry", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv") = _GODOT_set_uv;
	void set_uv(in Vector2 uv)
	{
		_GODOT_set_uv.bind("ImmediateGeometry", "set_uv");
		ptrcall!(void)(_GODOT_set_uv, _godot_object, uv);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2") = _GODOT_set_uv2;
	void set_uv2(in Vector2 uv)
	{
		_GODOT_set_uv2.bind("ImmediateGeometry", "set_uv2");
		ptrcall!(void)(_GODOT_set_uv2, _godot_object, uv);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_vertex") = _GODOT_add_vertex;
	void add_vertex(in Vector3 position)
	{
		_GODOT_add_vertex.bind("ImmediateGeometry", "add_vertex");
		ptrcall!(void)(_GODOT_add_vertex, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, int, int, float, bool) _GODOT_add_sphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_sphere") = _GODOT_add_sphere;
	void add_sphere(in int lats, in int lons, in float radius, in bool add_uv = true)
	{
		_GODOT_add_sphere.bind("ImmediateGeometry", "add_sphere");
		ptrcall!(void)(_GODOT_add_sphere, _godot_object, lats, lons, radius, add_uv);
	}
	package(godot) static GodotMethod!(void) _GODOT_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "end") = _GODOT_end;
	void end()
	{
		_GODOT_end.bind("ImmediateGeometry", "end");
		ptrcall!(void)(_GODOT_end, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("ImmediateGeometry", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
