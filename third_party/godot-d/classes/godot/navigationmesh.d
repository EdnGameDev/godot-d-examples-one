module godot.navigationmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
@GodotBaseClass struct NavigationMesh
{
	static immutable string _GODOT_internal_name = "NavigationMesh";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in NavigationMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NavigationMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationMesh");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationMesh)(constructor());
	}
	enum int SAMPLE_PARTITION_MONOTONE = 1;
	enum int SAMPLE_PARTITION_LAYERS = 2;
	enum int SAMPLE_PARTITION_WATERSHED = 0;
	package(godot) static GodotMethod!(void, int) _GODOT_set_sample_partition_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sample_partition_type") = _GODOT_set_sample_partition_type;
	void set_sample_partition_type(in int sample_partition_type)
	{
		_GODOT_set_sample_partition_type.bind("NavigationMesh", "set_sample_partition_type");
		ptrcall!(void)(_GODOT_set_sample_partition_type, _godot_object, sample_partition_type);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_sample_partition_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sample_partition_type") = _GODOT_get_sample_partition_type;
	int get_sample_partition_type() const
	{
		_GODOT_get_sample_partition_type.bind("NavigationMesh", "get_sample_partition_type");
		return ptrcall!(int)(_GODOT_get_sample_partition_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	void set_cell_size(in float cell_size)
	{
		_GODOT_set_cell_size.bind("NavigationMesh", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, cell_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	float get_cell_size() const
	{
		_GODOT_get_cell_size.bind("NavigationMesh", "get_cell_size");
		return ptrcall!(float)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_cell_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_height") = _GODOT_set_cell_height;
	void set_cell_height(in float cell_height)
	{
		_GODOT_set_cell_height.bind("NavigationMesh", "set_cell_height");
		ptrcall!(void)(_GODOT_set_cell_height, _godot_object, cell_height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_cell_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_height") = _GODOT_get_cell_height;
	float get_cell_height() const
	{
		_GODOT_get_cell_height.bind("NavigationMesh", "get_cell_height");
		return ptrcall!(float)(_GODOT_get_cell_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_agent_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_height") = _GODOT_set_agent_height;
	void set_agent_height(in float agent_height)
	{
		_GODOT_set_agent_height.bind("NavigationMesh", "set_agent_height");
		ptrcall!(void)(_GODOT_set_agent_height, _godot_object, agent_height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_agent_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_height") = _GODOT_get_agent_height;
	float get_agent_height() const
	{
		_GODOT_get_agent_height.bind("NavigationMesh", "get_agent_height");
		return ptrcall!(float)(_GODOT_get_agent_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_agent_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_radius") = _GODOT_set_agent_radius;
	void set_agent_radius(in float agent_radius)
	{
		_GODOT_set_agent_radius.bind("NavigationMesh", "set_agent_radius");
		ptrcall!(void)(_GODOT_set_agent_radius, _godot_object, agent_radius);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_agent_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_radius") = _GODOT_get_agent_radius;
	float get_agent_radius()
	{
		_GODOT_get_agent_radius.bind("NavigationMesh", "get_agent_radius");
		return ptrcall!(float)(_GODOT_get_agent_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_agent_max_climb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_max_climb") = _GODOT_set_agent_max_climb;
	void set_agent_max_climb(in float agent_max_climb)
	{
		_GODOT_set_agent_max_climb.bind("NavigationMesh", "set_agent_max_climb");
		ptrcall!(void)(_GODOT_set_agent_max_climb, _godot_object, agent_max_climb);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_agent_max_climb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_max_climb") = _GODOT_get_agent_max_climb;
	float get_agent_max_climb() const
	{
		_GODOT_get_agent_max_climb.bind("NavigationMesh", "get_agent_max_climb");
		return ptrcall!(float)(_GODOT_get_agent_max_climb, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_agent_max_slope;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_max_slope") = _GODOT_set_agent_max_slope;
	void set_agent_max_slope(in float agent_max_slope)
	{
		_GODOT_set_agent_max_slope.bind("NavigationMesh", "set_agent_max_slope");
		ptrcall!(void)(_GODOT_set_agent_max_slope, _godot_object, agent_max_slope);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_agent_max_slope;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_max_slope") = _GODOT_get_agent_max_slope;
	float get_agent_max_slope() const
	{
		_GODOT_get_agent_max_slope.bind("NavigationMesh", "get_agent_max_slope");
		return ptrcall!(float)(_GODOT_get_agent_max_slope, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_region_min_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_min_size") = _GODOT_set_region_min_size;
	void set_region_min_size(in float region_min_size)
	{
		_GODOT_set_region_min_size.bind("NavigationMesh", "set_region_min_size");
		ptrcall!(void)(_GODOT_set_region_min_size, _godot_object, region_min_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_region_min_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_min_size") = _GODOT_get_region_min_size;
	float get_region_min_size() const
	{
		_GODOT_get_region_min_size.bind("NavigationMesh", "get_region_min_size");
		return ptrcall!(float)(_GODOT_get_region_min_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_region_merge_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_merge_size") = _GODOT_set_region_merge_size;
	void set_region_merge_size(in float region_merge_size)
	{
		_GODOT_set_region_merge_size.bind("NavigationMesh", "set_region_merge_size");
		ptrcall!(void)(_GODOT_set_region_merge_size, _godot_object, region_merge_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_region_merge_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_merge_size") = _GODOT_get_region_merge_size;
	float get_region_merge_size() const
	{
		_GODOT_get_region_merge_size.bind("NavigationMesh", "get_region_merge_size");
		return ptrcall!(float)(_GODOT_get_region_merge_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_edge_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edge_max_length") = _GODOT_set_edge_max_length;
	void set_edge_max_length(in float edge_max_length)
	{
		_GODOT_set_edge_max_length.bind("NavigationMesh", "set_edge_max_length");
		ptrcall!(void)(_GODOT_set_edge_max_length, _godot_object, edge_max_length);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_edge_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_max_length") = _GODOT_get_edge_max_length;
	float get_edge_max_length() const
	{
		_GODOT_get_edge_max_length.bind("NavigationMesh", "get_edge_max_length");
		return ptrcall!(float)(_GODOT_get_edge_max_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_edge_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edge_max_error") = _GODOT_set_edge_max_error;
	void set_edge_max_error(in float edge_max_error)
	{
		_GODOT_set_edge_max_error.bind("NavigationMesh", "set_edge_max_error");
		ptrcall!(void)(_GODOT_set_edge_max_error, _godot_object, edge_max_error);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_edge_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_max_error") = _GODOT_get_edge_max_error;
	float get_edge_max_error() const
	{
		_GODOT_get_edge_max_error.bind("NavigationMesh", "get_edge_max_error");
		return ptrcall!(float)(_GODOT_get_edge_max_error, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_verts_per_poly;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_verts_per_poly") = _GODOT_set_verts_per_poly;
	void set_verts_per_poly(in float verts_per_poly)
	{
		_GODOT_set_verts_per_poly.bind("NavigationMesh", "set_verts_per_poly");
		ptrcall!(void)(_GODOT_set_verts_per_poly, _godot_object, verts_per_poly);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_verts_per_poly;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_verts_per_poly") = _GODOT_get_verts_per_poly;
	float get_verts_per_poly() const
	{
		_GODOT_get_verts_per_poly.bind("NavigationMesh", "get_verts_per_poly");
		return ptrcall!(float)(_GODOT_get_verts_per_poly, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_detail_sample_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_sample_distance") = _GODOT_set_detail_sample_distance;
	void set_detail_sample_distance(in float detail_sample_dist)
	{
		_GODOT_set_detail_sample_distance.bind("NavigationMesh", "set_detail_sample_distance");
		ptrcall!(void)(_GODOT_set_detail_sample_distance, _godot_object, detail_sample_dist);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_detail_sample_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_sample_distance") = _GODOT_get_detail_sample_distance;
	float get_detail_sample_distance() const
	{
		_GODOT_get_detail_sample_distance.bind("NavigationMesh", "get_detail_sample_distance");
		return ptrcall!(float)(_GODOT_get_detail_sample_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_detail_sample_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_sample_max_error") = _GODOT_set_detail_sample_max_error;
	void set_detail_sample_max_error(in float detail_sample_max_error)
	{
		_GODOT_set_detail_sample_max_error.bind("NavigationMesh", "set_detail_sample_max_error");
		ptrcall!(void)(_GODOT_set_detail_sample_max_error, _godot_object, detail_sample_max_error);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_detail_sample_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_sample_max_error") = _GODOT_get_detail_sample_max_error;
	float get_detail_sample_max_error() const
	{
		_GODOT_get_detail_sample_max_error.bind("NavigationMesh", "get_detail_sample_max_error");
		return ptrcall!(float)(_GODOT_get_detail_sample_max_error, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_low_hanging_obstacles;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_low_hanging_obstacles") = _GODOT_set_filter_low_hanging_obstacles;
	void set_filter_low_hanging_obstacles(in bool filter_low_hanging_obstacles)
	{
		_GODOT_set_filter_low_hanging_obstacles.bind("NavigationMesh", "set_filter_low_hanging_obstacles");
		ptrcall!(void)(_GODOT_set_filter_low_hanging_obstacles, _godot_object, filter_low_hanging_obstacles);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_filter_low_hanging_obstacles;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filter_low_hanging_obstacles") = _GODOT_get_filter_low_hanging_obstacles;
	bool get_filter_low_hanging_obstacles() const
	{
		_GODOT_get_filter_low_hanging_obstacles.bind("NavigationMesh", "get_filter_low_hanging_obstacles");
		return ptrcall!(bool)(_GODOT_get_filter_low_hanging_obstacles, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_ledge_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_ledge_spans") = _GODOT_set_filter_ledge_spans;
	void set_filter_ledge_spans(in bool filter_ledge_spans)
	{
		_GODOT_set_filter_ledge_spans.bind("NavigationMesh", "set_filter_ledge_spans");
		ptrcall!(void)(_GODOT_set_filter_ledge_spans, _godot_object, filter_ledge_spans);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_filter_ledge_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filter_ledge_spans") = _GODOT_get_filter_ledge_spans;
	bool get_filter_ledge_spans() const
	{
		_GODOT_get_filter_ledge_spans.bind("NavigationMesh", "get_filter_ledge_spans");
		return ptrcall!(bool)(_GODOT_get_filter_ledge_spans, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_walkable_low_height_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_walkable_low_height_spans") = _GODOT_set_filter_walkable_low_height_spans;
	void set_filter_walkable_low_height_spans(in bool filter_walkable_low_height_spans)
	{
		_GODOT_set_filter_walkable_low_height_spans.bind("NavigationMesh", "set_filter_walkable_low_height_spans");
		ptrcall!(void)(_GODOT_set_filter_walkable_low_height_spans, _godot_object, filter_walkable_low_height_spans);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_filter_walkable_low_height_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filter_walkable_low_height_spans") = _GODOT_get_filter_walkable_low_height_spans;
	bool get_filter_walkable_low_height_spans() const
	{
		_GODOT_get_filter_walkable_low_height_spans.bind("NavigationMesh", "get_filter_walkable_low_height_spans");
		return ptrcall!(bool)(_GODOT_get_filter_walkable_low_height_spans, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_set_vertices;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertices") = _GODOT_set_vertices;
	void set_vertices(in PoolVector3Array vertices)
	{
		_GODOT_set_vertices.bind("NavigationMesh", "set_vertices");
		ptrcall!(void)(_GODOT_set_vertices, _godot_object, vertices);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_vertices;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertices") = _GODOT_get_vertices;
	PoolVector3Array get_vertices() const
	{
		_GODOT_get_vertices.bind("NavigationMesh", "get_vertices");
		return ptrcall!(PoolVector3Array)(_GODOT_get_vertices, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_add_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_polygon") = _GODOT_add_polygon;
	void add_polygon(in PoolIntArray polygon)
	{
		_GODOT_add_polygon.bind("NavigationMesh", "add_polygon");
		ptrcall!(void)(_GODOT_add_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_polygon_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon_count") = _GODOT_get_polygon_count;
	int get_polygon_count() const
	{
		_GODOT_get_polygon_count.bind("NavigationMesh", "get_polygon_count");
		return ptrcall!(int)(_GODOT_get_polygon_count, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray, int) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	PoolIntArray get_polygon(in int idx)
	{
		_GODOT_get_polygon.bind("NavigationMesh", "get_polygon");
		return ptrcall!(PoolIntArray)(_GODOT_get_polygon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_polygons") = _GODOT_clear_polygons;
	void clear_polygons()
	{
		_GODOT_clear_polygons.bind("NavigationMesh", "clear_polygons");
		ptrcall!(void)(_GODOT_clear_polygons, _godot_object);
	}
	package(godot) static GodotMethod!(void, Mesh) _GODOT_create_from_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_mesh") = _GODOT_create_from_mesh;
	void create_from_mesh(in Mesh mesh)
	{
		_GODOT_create_from_mesh.bind("NavigationMesh", "create_from_mesh");
		ptrcall!(void)(_GODOT_create_from_mesh, _godot_object, mesh);
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
}
