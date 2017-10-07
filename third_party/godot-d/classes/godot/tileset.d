module godot.tileset;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.texture;
import godot.shadermaterial;
import godot.shape2d;
import godot.navigationpolygon;
import godot.occluderpolygon2d;
@GodotBaseClass struct TileSet
{
	static immutable string _GODOT_internal_name = "TileSet";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TileSet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TileSet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TileSet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TileSet");
		if(constructor is null) return typeof(this).init;
		return cast(TileSet)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_create_tile;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_tile") = _GODOT_create_tile;
	void create_tile(in int id)
	{
		_GODOT_create_tile.bind("TileSet", "create_tile");
		ptrcall!(void)(_GODOT_create_tile, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_tile_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_name") = _GODOT_tile_set_name;
	void tile_set_name(StringArg1)(in int id, in StringArg1 name)
	{
		_GODOT_tile_set_name.bind("TileSet", "tile_set_name");
		ptrcall!(void)(_GODOT_tile_set_name, _godot_object, id, name);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_tile_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_name") = _GODOT_tile_get_name;
	String tile_get_name(in int id) const
	{
		_GODOT_tile_get_name.bind("TileSet", "tile_get_name");
		return ptrcall!(String)(_GODOT_tile_get_name, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_tile_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_texture") = _GODOT_tile_set_texture;
	void tile_set_texture(in int id, in Texture texture)
	{
		_GODOT_tile_set_texture.bind("TileSet", "tile_set_texture");
		ptrcall!(void)(_GODOT_tile_set_texture, _godot_object, id, texture);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_tile_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_texture") = _GODOT_tile_get_texture;
	Texture tile_get_texture(in int id) const
	{
		_GODOT_tile_get_texture.bind("TileSet", "tile_get_texture");
		return ptrcall!(Texture)(_GODOT_tile_get_texture, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_tile_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_normal_map") = _GODOT_tile_set_normal_map;
	void tile_set_normal_map(in int id, in Texture normal_map)
	{
		_GODOT_tile_set_normal_map.bind("TileSet", "tile_set_normal_map");
		ptrcall!(void)(_GODOT_tile_set_normal_map, _godot_object, id, normal_map);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_tile_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_normal_map") = _GODOT_tile_get_normal_map;
	Texture tile_get_normal_map(in int id) const
	{
		_GODOT_tile_get_normal_map.bind("TileSet", "tile_get_normal_map");
		return ptrcall!(Texture)(_GODOT_tile_get_normal_map, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, ShaderMaterial) _GODOT_tile_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_material") = _GODOT_tile_set_material;
	void tile_set_material(in int id, in ShaderMaterial material)
	{
		_GODOT_tile_set_material.bind("TileSet", "tile_set_material");
		ptrcall!(void)(_GODOT_tile_set_material, _godot_object, id, material);
	}
	package(godot) static GodotMethod!(ShaderMaterial, int) _GODOT_tile_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_material") = _GODOT_tile_get_material;
	ShaderMaterial tile_get_material(in int id) const
	{
		_GODOT_tile_get_material.bind("TileSet", "tile_get_material");
		return ptrcall!(ShaderMaterial)(_GODOT_tile_get_material, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_tile_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_texture_offset") = _GODOT_tile_set_texture_offset;
	void tile_set_texture_offset(in int id, in Vector2 texture_offset)
	{
		_GODOT_tile_set_texture_offset.bind("TileSet", "tile_set_texture_offset");
		ptrcall!(void)(_GODOT_tile_set_texture_offset, _godot_object, id, texture_offset);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_tile_get_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_texture_offset") = _GODOT_tile_get_texture_offset;
	Vector2 tile_get_texture_offset(in int id) const
	{
		_GODOT_tile_get_texture_offset.bind("TileSet", "tile_get_texture_offset");
		return ptrcall!(Vector2)(_GODOT_tile_get_texture_offset, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Rect2) _GODOT_tile_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_region") = _GODOT_tile_set_region;
	void tile_set_region(in int id, in Rect2 region)
	{
		_GODOT_tile_set_region.bind("TileSet", "tile_set_region");
		ptrcall!(void)(_GODOT_tile_set_region, _godot_object, id, region);
	}
	package(godot) static GodotMethod!(Rect2, int) _GODOT_tile_get_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_region") = _GODOT_tile_get_region;
	Rect2 tile_get_region(in int id) const
	{
		_GODOT_tile_get_region.bind("TileSet", "tile_get_region");
		return ptrcall!(Rect2)(_GODOT_tile_get_region, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, int, Shape2D) _GODOT_tile_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shape") = _GODOT_tile_set_shape;
	void tile_set_shape(in int id, in int shape_id, in Shape2D shape)
	{
		_GODOT_tile_set_shape.bind("TileSet", "tile_set_shape");
		ptrcall!(void)(_GODOT_tile_set_shape, _godot_object, id, shape_id, shape);
	}
	package(godot) static GodotMethod!(Shape2D, int, int) _GODOT_tile_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape") = _GODOT_tile_get_shape;
	Shape2D tile_get_shape(in int id, in int shape_id) const
	{
		_GODOT_tile_get_shape.bind("TileSet", "tile_get_shape");
		return ptrcall!(Shape2D)(_GODOT_tile_get_shape, _godot_object, id, shape_id);
	}
	package(godot) static GodotMethod!(void, int, int, Transform2D) _GODOT_tile_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shape_transform") = _GODOT_tile_set_shape_transform;
	void tile_set_shape_transform(in int id, in int shape_id, in Transform2D shape_transform)
	{
		_GODOT_tile_set_shape_transform.bind("TileSet", "tile_set_shape_transform");
		ptrcall!(void)(_GODOT_tile_set_shape_transform, _godot_object, id, shape_id, shape_transform);
	}
	package(godot) static GodotMethod!(Transform2D, int, int) _GODOT_tile_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape_transform") = _GODOT_tile_get_shape_transform;
	Transform2D tile_get_shape_transform(in int id, in int shape_id) const
	{
		_GODOT_tile_get_shape_transform.bind("TileSet", "tile_get_shape_transform");
		return ptrcall!(Transform2D)(_GODOT_tile_get_shape_transform, _godot_object, id, shape_id);
	}
	package(godot) static GodotMethod!(void, int, int, bool) _GODOT_tile_set_shape_one_way;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shape_one_way") = _GODOT_tile_set_shape_one_way;
	void tile_set_shape_one_way(in int id, in int shape_id, in bool one_way)
	{
		_GODOT_tile_set_shape_one_way.bind("TileSet", "tile_set_shape_one_way");
		ptrcall!(void)(_GODOT_tile_set_shape_one_way, _godot_object, id, shape_id, one_way);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_tile_get_shape_one_way;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape_one_way") = _GODOT_tile_get_shape_one_way;
	bool tile_get_shape_one_way(in int id, in int shape_id) const
	{
		_GODOT_tile_get_shape_one_way.bind("TileSet", "tile_get_shape_one_way");
		return ptrcall!(bool)(_GODOT_tile_get_shape_one_way, _godot_object, id, shape_id);
	}
	package(godot) static GodotMethod!(void, int, Shape2D, Transform2D, bool) _GODOT_tile_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_add_shape") = _GODOT_tile_add_shape;
	void tile_add_shape(in int id, in Shape2D shape, in Transform2D shape_transform, in bool one_way = false)
	{
		_GODOT_tile_add_shape.bind("TileSet", "tile_add_shape");
		ptrcall!(void)(_GODOT_tile_add_shape, _godot_object, id, shape, shape_transform, one_way);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_tile_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape_count") = _GODOT_tile_get_shape_count;
	int tile_get_shape_count(in int id) const
	{
		_GODOT_tile_get_shape_count.bind("TileSet", "tile_get_shape_count");
		return ptrcall!(int)(_GODOT_tile_get_shape_count, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Array) _GODOT_tile_set_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shapes") = _GODOT_tile_set_shapes;
	void tile_set_shapes(in int id, in Array shapes)
	{
		_GODOT_tile_set_shapes.bind("TileSet", "tile_set_shapes");
		ptrcall!(void)(_GODOT_tile_set_shapes, _godot_object, id, shapes);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_tile_get_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shapes") = _GODOT_tile_get_shapes;
	Array tile_get_shapes(in int id) const
	{
		_GODOT_tile_get_shapes.bind("TileSet", "tile_get_shapes");
		return ptrcall!(Array)(_GODOT_tile_get_shapes, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, NavigationPolygon) _GODOT_tile_set_navigation_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_navigation_polygon") = _GODOT_tile_set_navigation_polygon;
	void tile_set_navigation_polygon(in int id, in NavigationPolygon navigation_polygon)
	{
		_GODOT_tile_set_navigation_polygon.bind("TileSet", "tile_set_navigation_polygon");
		ptrcall!(void)(_GODOT_tile_set_navigation_polygon, _godot_object, id, navigation_polygon);
	}
	package(godot) static GodotMethod!(NavigationPolygon, int) _GODOT_tile_get_navigation_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_navigation_polygon") = _GODOT_tile_get_navigation_polygon;
	NavigationPolygon tile_get_navigation_polygon(in int id) const
	{
		_GODOT_tile_get_navigation_polygon.bind("TileSet", "tile_get_navigation_polygon");
		return ptrcall!(NavigationPolygon)(_GODOT_tile_get_navigation_polygon, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_tile_set_navigation_polygon_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_navigation_polygon_offset") = _GODOT_tile_set_navigation_polygon_offset;
	void tile_set_navigation_polygon_offset(in int id, in Vector2 navigation_polygon_offset)
	{
		_GODOT_tile_set_navigation_polygon_offset.bind("TileSet", "tile_set_navigation_polygon_offset");
		ptrcall!(void)(_GODOT_tile_set_navigation_polygon_offset, _godot_object, id, navigation_polygon_offset);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_tile_get_navigation_polygon_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_navigation_polygon_offset") = _GODOT_tile_get_navigation_polygon_offset;
	Vector2 tile_get_navigation_polygon_offset(in int id) const
	{
		_GODOT_tile_get_navigation_polygon_offset.bind("TileSet", "tile_get_navigation_polygon_offset");
		return ptrcall!(Vector2)(_GODOT_tile_get_navigation_polygon_offset, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, OccluderPolygon2D) _GODOT_tile_set_light_occluder;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_light_occluder") = _GODOT_tile_set_light_occluder;
	void tile_set_light_occluder(in int id, in OccluderPolygon2D light_occluder)
	{
		_GODOT_tile_set_light_occluder.bind("TileSet", "tile_set_light_occluder");
		ptrcall!(void)(_GODOT_tile_set_light_occluder, _godot_object, id, light_occluder);
	}
	package(godot) static GodotMethod!(OccluderPolygon2D, int) _GODOT_tile_get_light_occluder;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_light_occluder") = _GODOT_tile_get_light_occluder;
	OccluderPolygon2D tile_get_light_occluder(in int id) const
	{
		_GODOT_tile_get_light_occluder.bind("TileSet", "tile_get_light_occluder");
		return ptrcall!(OccluderPolygon2D)(_GODOT_tile_get_light_occluder, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_tile_set_occluder_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_occluder_offset") = _GODOT_tile_set_occluder_offset;
	void tile_set_occluder_offset(in int id, in Vector2 occluder_offset)
	{
		_GODOT_tile_set_occluder_offset.bind("TileSet", "tile_set_occluder_offset");
		ptrcall!(void)(_GODOT_tile_set_occluder_offset, _godot_object, id, occluder_offset);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_tile_get_occluder_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_occluder_offset") = _GODOT_tile_get_occluder_offset;
	Vector2 tile_get_occluder_offset(in int id) const
	{
		_GODOT_tile_get_occluder_offset.bind("TileSet", "tile_get_occluder_offset");
		return ptrcall!(Vector2)(_GODOT_tile_get_occluder_offset, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_tile;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_tile") = _GODOT_remove_tile;
	void remove_tile(in int id)
	{
		_GODOT_remove_tile.bind("TileSet", "remove_tile");
		ptrcall!(void)(_GODOT_remove_tile, _godot_object, id);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("TileSet", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_last_unused_tile_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_last_unused_tile_id") = _GODOT_get_last_unused_tile_id;
	int get_last_unused_tile_id() const
	{
		_GODOT_get_last_unused_tile_id.bind("TileSet", "get_last_unused_tile_id");
		return ptrcall!(int)(_GODOT_get_last_unused_tile_id, _godot_object);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_find_tile_by_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_tile_by_name") = _GODOT_find_tile_by_name;
	int find_tile_by_name(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_tile_by_name.bind("TileSet", "find_tile_by_name");
		return ptrcall!(int)(_GODOT_find_tile_by_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_tiles_ids;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tiles_ids") = _GODOT_get_tiles_ids;
	Array get_tiles_ids() const
	{
		_GODOT_get_tiles_ids.bind("TileSet", "get_tiles_ids");
		return ptrcall!(Array)(_GODOT_get_tiles_ids, _godot_object);
	}
}
