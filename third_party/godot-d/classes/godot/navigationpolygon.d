module godot.navigationpolygon;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct NavigationPolygon
{
	static immutable string _GODOT_internal_name = "NavigationPolygon";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NavigationPolygon other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationPolygon opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NavigationPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygon)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_vertices;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertices") = _GODOT_set_vertices;
	void set_vertices(in PoolVector2Array vertices)
	{
		_GODOT_set_vertices.bind("NavigationPolygon", "set_vertices");
		ptrcall!(void)(_GODOT_set_vertices, _godot_object, vertices);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_vertices;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertices") = _GODOT_get_vertices;
	PoolVector2Array get_vertices() const
	{
		_GODOT_get_vertices.bind("NavigationPolygon", "get_vertices");
		return ptrcall!(PoolVector2Array)(_GODOT_get_vertices, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_add_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_polygon") = _GODOT_add_polygon;
	void add_polygon(in PoolIntArray polygon)
	{
		_GODOT_add_polygon.bind("NavigationPolygon", "add_polygon");
		ptrcall!(void)(_GODOT_add_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_polygon_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon_count") = _GODOT_get_polygon_count;
	int get_polygon_count() const
	{
		_GODOT_get_polygon_count.bind("NavigationPolygon", "get_polygon_count");
		return ptrcall!(int)(_GODOT_get_polygon_count, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray, int) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	PoolIntArray get_polygon(in int idx)
	{
		_GODOT_get_polygon.bind("NavigationPolygon", "get_polygon");
		return ptrcall!(PoolIntArray)(_GODOT_get_polygon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_polygons") = _GODOT_clear_polygons;
	void clear_polygons()
	{
		_GODOT_clear_polygons.bind("NavigationPolygon", "clear_polygons");
		ptrcall!(void)(_GODOT_clear_polygons, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_add_outline;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_outline") = _GODOT_add_outline;
	void add_outline(in PoolVector2Array outline)
	{
		_GODOT_add_outline.bind("NavigationPolygon", "add_outline");
		ptrcall!(void)(_GODOT_add_outline, _godot_object, outline);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, int) _GODOT_add_outline_at_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_outline_at_index") = _GODOT_add_outline_at_index;
	void add_outline_at_index(in PoolVector2Array outline, in int index)
	{
		_GODOT_add_outline_at_index.bind("NavigationPolygon", "add_outline_at_index");
		ptrcall!(void)(_GODOT_add_outline_at_index, _godot_object, outline, index);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_outline_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_outline_count") = _GODOT_get_outline_count;
	int get_outline_count() const
	{
		_GODOT_get_outline_count.bind("NavigationPolygon", "get_outline_count");
		return ptrcall!(int)(_GODOT_get_outline_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, PoolVector2Array) _GODOT_set_outline;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_outline") = _GODOT_set_outline;
	void set_outline(in int idx, in PoolVector2Array outline)
	{
		_GODOT_set_outline.bind("NavigationPolygon", "set_outline");
		ptrcall!(void)(_GODOT_set_outline, _godot_object, idx, outline);
	}
	package(godot) static GodotMethod!(PoolVector2Array, int) _GODOT_get_outline;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_outline") = _GODOT_get_outline;
	PoolVector2Array get_outline(in int idx) const
	{
		_GODOT_get_outline.bind("NavigationPolygon", "get_outline");
		return ptrcall!(PoolVector2Array)(_GODOT_get_outline, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_outline;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_outline") = _GODOT_remove_outline;
	void remove_outline(in int idx)
	{
		_GODOT_remove_outline.bind("NavigationPolygon", "remove_outline");
		ptrcall!(void)(_GODOT_remove_outline, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_outlines;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_outlines") = _GODOT_clear_outlines;
	void clear_outlines()
	{
		_GODOT_clear_outlines.bind("NavigationPolygon", "clear_outlines");
		ptrcall!(void)(_GODOT_clear_outlines, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_polygons_from_outlines;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_polygons_from_outlines") = _GODOT_make_polygons_from_outlines;
	void make_polygons_from_outlines()
	{
		_GODOT_make_polygons_from_outlines.bind("NavigationPolygon", "make_polygons_from_outlines");
		ptrcall!(void)(_GODOT_make_polygons_from_outlines, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_polygons") = _GODOT__set_polygons;
	void _set_polygons(in Array polygons)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_polygons") = _GODOT__get_polygons;
	Array _get_polygons() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_polygons");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_outlines;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_outlines") = _GODOT__set_outlines;
	void _set_outlines(in Array outlines)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(outlines);
		String _GODOT_method_name = String("_set_outlines");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_outlines;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_outlines") = _GODOT__get_outlines;
	Array _get_outlines() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_outlines");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
