module godot.tilemap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.tileset;
@GodotBaseClass struct TileMap
{
	static immutable string _GODOT_internal_name = "TileMap";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TileMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TileMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TileMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TileMap");
		if(constructor is null) return typeof(this).init;
		return cast(TileMap)(constructor());
	}
	enum Mode : int
	{
		MODE_SQUARE = 0,
		MODE_CUSTOM = 2,
		MODE_ISOMETRIC = 1,
	}
	enum TileOrigin : int
	{
		TILE_ORIGIN_BOTTOM_LEFT = 2,
		TILE_ORIGIN_TOP_LEFT = 0,
		TILE_ORIGIN_CENTER = 1,
	}
	enum HalfOffset : int
	{
		HALF_OFFSET_Y = 1,
		HALF_OFFSET_X = 0,
		HALF_OFFSET_DISABLED = 2,
	}
	enum int MODE_SQUARE = 0;
	enum int HALF_OFFSET_X = 0;
	enum int INVALID_CELL = -1;
	enum int MODE_CUSTOM = 2;
	enum int TILE_ORIGIN_TOP_LEFT = 0;
	enum int TILE_ORIGIN_CENTER = 1;
	enum int HALF_OFFSET_DISABLED = 2;
	enum int HALF_OFFSET_Y = 1;
	enum int TILE_ORIGIN_BOTTOM_LEFT = 2;
	enum int MODE_ISOMETRIC = 1;
	package(godot) static GodotMethod!(void, TileSet) _GODOT_set_tileset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tileset") = _GODOT_set_tileset;
	void set_tileset(in TileSet tileset)
	{
		_GODOT_set_tileset.bind("TileMap", "set_tileset");
		ptrcall!(void)(_GODOT_set_tileset, _godot_object, tileset);
	}
	package(godot) static GodotMethod!(TileSet) _GODOT_get_tileset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tileset") = _GODOT_get_tileset;
	TileSet get_tileset() const
	{
		_GODOT_get_tileset.bind("TileMap", "get_tileset");
		return ptrcall!(TileSet)(_GODOT_get_tileset, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	void set_mode(in int mode)
	{
		_GODOT_set_mode.bind("TileMap", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(TileMap.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	TileMap.Mode get_mode() const
	{
		_GODOT_get_mode.bind("TileMap", "get_mode");
		return ptrcall!(TileMap.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_half_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_half_offset") = _GODOT_set_half_offset;
	void set_half_offset(in int half_offset)
	{
		_GODOT_set_half_offset.bind("TileMap", "set_half_offset");
		ptrcall!(void)(_GODOT_set_half_offset, _godot_object, half_offset);
	}
	package(godot) static GodotMethod!(TileMap.HalfOffset) _GODOT_get_half_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_half_offset") = _GODOT_get_half_offset;
	TileMap.HalfOffset get_half_offset() const
	{
		_GODOT_get_half_offset.bind("TileMap", "get_half_offset");
		return ptrcall!(TileMap.HalfOffset)(_GODOT_get_half_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_custom_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_transform") = _GODOT_set_custom_transform;
	void set_custom_transform(in Transform2D custom_transform)
	{
		_GODOT_set_custom_transform.bind("TileMap", "set_custom_transform");
		ptrcall!(void)(_GODOT_set_custom_transform, _godot_object, custom_transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_custom_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_transform") = _GODOT_get_custom_transform;
	Transform2D get_custom_transform() const
	{
		_GODOT_get_custom_transform.bind("TileMap", "get_custom_transform");
		return ptrcall!(Transform2D)(_GODOT_get_custom_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	void set_cell_size(in Vector2 size)
	{
		_GODOT_set_cell_size.bind("TileMap", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	Vector2 get_cell_size() const
	{
		_GODOT_get_cell_size.bind("TileMap", "get_cell_size");
		return ptrcall!(Vector2)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__set_old_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_old_cell_size") = _GODOT__set_old_cell_size;
	void _set_old_cell_size(in int size)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(size);
		String _GODOT_method_name = String("_set_old_cell_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(int) _GODOT__get_old_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_old_cell_size") = _GODOT__get_old_cell_size;
	int _get_old_cell_size() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_old_cell_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_quadrant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_quadrant_size") = _GODOT_set_quadrant_size;
	void set_quadrant_size(in int size)
	{
		_GODOT_set_quadrant_size.bind("TileMap", "set_quadrant_size");
		ptrcall!(void)(_GODOT_set_quadrant_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_quadrant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_quadrant_size") = _GODOT_get_quadrant_size;
	int get_quadrant_size() const
	{
		_GODOT_get_quadrant_size.bind("TileMap", "get_quadrant_size");
		return ptrcall!(int)(_GODOT_get_quadrant_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tile_origin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tile_origin") = _GODOT_set_tile_origin;
	void set_tile_origin(in int origin)
	{
		_GODOT_set_tile_origin.bind("TileMap", "set_tile_origin");
		ptrcall!(void)(_GODOT_set_tile_origin, _godot_object, origin);
	}
	package(godot) static GodotMethod!(TileMap.TileOrigin) _GODOT_get_tile_origin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tile_origin") = _GODOT_get_tile_origin;
	TileMap.TileOrigin get_tile_origin() const
	{
		_GODOT_get_tile_origin.bind("TileMap", "get_tile_origin");
		return ptrcall!(TileMap.TileOrigin)(_GODOT_get_tile_origin, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_x") = _GODOT_set_center_x;
	void set_center_x(in bool enable)
	{
		_GODOT_set_center_x.bind("TileMap", "set_center_x");
		ptrcall!(void)(_GODOT_set_center_x, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_x") = _GODOT_get_center_x;
	bool get_center_x() const
	{
		_GODOT_get_center_x.bind("TileMap", "get_center_x");
		return ptrcall!(bool)(_GODOT_get_center_x, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_y") = _GODOT_set_center_y;
	void set_center_y(in bool enable)
	{
		_GODOT_set_center_y.bind("TileMap", "set_center_y");
		ptrcall!(void)(_GODOT_set_center_y, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_y") = _GODOT_get_center_y;
	bool get_center_y() const
	{
		_GODOT_get_center_y.bind("TileMap", "get_center_y");
		return ptrcall!(bool)(_GODOT_get_center_y, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_y_sort_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_y_sort_mode") = _GODOT_set_y_sort_mode;
	void set_y_sort_mode(in bool enable)
	{
		_GODOT_set_y_sort_mode.bind("TileMap", "set_y_sort_mode");
		ptrcall!(void)(_GODOT_set_y_sort_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_y_sort_mode_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_y_sort_mode_enabled") = _GODOT_is_y_sort_mode_enabled;
	bool is_y_sort_mode_enabled() const
	{
		_GODOT_is_y_sort_mode_enabled.bind("TileMap", "is_y_sort_mode_enabled");
		return ptrcall!(bool)(_GODOT_is_y_sort_mode_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_collision_use_kinematic;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_use_kinematic") = _GODOT_set_collision_use_kinematic;
	void set_collision_use_kinematic(in bool use_kinematic)
	{
		_GODOT_set_collision_use_kinematic.bind("TileMap", "set_collision_use_kinematic");
		ptrcall!(void)(_GODOT_set_collision_use_kinematic, _godot_object, use_kinematic);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_collision_use_kinematic;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_use_kinematic") = _GODOT_get_collision_use_kinematic;
	bool get_collision_use_kinematic() const
	{
		_GODOT_get_collision_use_kinematic.bind("TileMap", "get_collision_use_kinematic");
		return ptrcall!(bool)(_GODOT_get_collision_use_kinematic, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	void set_collision_layer(in int layer)
	{
		_GODOT_set_collision_layer.bind("TileMap", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	int get_collision_layer() const
	{
		_GODOT_get_collision_layer.bind("TileMap", "get_collision_layer");
		return ptrcall!(int)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	void set_collision_mask(in int mask)
	{
		_GODOT_set_collision_mask.bind("TileMap", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	int get_collision_mask() const
	{
		_GODOT_get_collision_mask.bind("TileMap", "get_collision_mask");
		return ptrcall!(int)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	void set_collision_layer_bit(in int bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("TileMap", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	bool get_collision_layer_bit(in int bit) const
	{
		_GODOT_get_collision_layer_bit.bind("TileMap", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	void set_collision_mask_bit(in int bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("TileMap", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	bool get_collision_mask_bit(in int bit) const
	{
		_GODOT_get_collision_mask_bit.bind("TileMap", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_collision_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_friction") = _GODOT_set_collision_friction;
	void set_collision_friction(in float value)
	{
		_GODOT_set_collision_friction.bind("TileMap", "set_collision_friction");
		ptrcall!(void)(_GODOT_set_collision_friction, _godot_object, value);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_collision_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_friction") = _GODOT_get_collision_friction;
	float get_collision_friction() const
	{
		_GODOT_get_collision_friction.bind("TileMap", "get_collision_friction");
		return ptrcall!(float)(_GODOT_get_collision_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_collision_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_bounce") = _GODOT_set_collision_bounce;
	void set_collision_bounce(in float value)
	{
		_GODOT_set_collision_bounce.bind("TileMap", "set_collision_bounce");
		ptrcall!(void)(_GODOT_set_collision_bounce, _godot_object, value);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_collision_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_bounce") = _GODOT_get_collision_bounce;
	float get_collision_bounce() const
	{
		_GODOT_get_collision_bounce.bind("TileMap", "get_collision_bounce");
		return ptrcall!(float)(_GODOT_get_collision_bounce, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_occluder_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_occluder_light_mask") = _GODOT_set_occluder_light_mask;
	void set_occluder_light_mask(in int mask)
	{
		_GODOT_set_occluder_light_mask.bind("TileMap", "set_occluder_light_mask");
		ptrcall!(void)(_GODOT_set_occluder_light_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_occluder_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_occluder_light_mask") = _GODOT_get_occluder_light_mask;
	int get_occluder_light_mask() const
	{
		_GODOT_get_occluder_light_mask.bind("TileMap", "get_occluder_light_mask");
		return ptrcall!(int)(_GODOT_get_occluder_light_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, int, bool, bool, bool) _GODOT_set_cell;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell") = _GODOT_set_cell;
	void set_cell(in int x, in int y, in int tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		_GODOT_set_cell.bind("TileMap", "set_cell");
		ptrcall!(void)(_GODOT_set_cell, _godot_object, x, y, tile, flip_x, flip_y, transpose);
	}
	package(godot) static GodotMethod!(void, Vector2, int, bool, bool, bool) _GODOT_set_cellv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cellv") = _GODOT_set_cellv;
	void set_cellv(in Vector2 position, in int tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		_GODOT_set_cellv.bind("TileMap", "set_cellv");
		ptrcall!(void)(_GODOT_set_cellv, _godot_object, position, tile, flip_x, flip_y, transpose);
	}
	package(godot) static GodotMethod!(int, int, int) _GODOT_get_cell;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell") = _GODOT_get_cell;
	int get_cell(in int x, in int y) const
	{
		_GODOT_get_cell.bind("TileMap", "get_cell");
		return ptrcall!(int)(_GODOT_get_cell, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(int, Vector2) _GODOT_get_cellv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cellv") = _GODOT_get_cellv;
	int get_cellv(in Vector2 position) const
	{
		_GODOT_get_cellv.bind("TileMap", "get_cellv");
		return ptrcall!(int)(_GODOT_get_cellv, _godot_object, position);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_is_cell_x_flipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_cell_x_flipped") = _GODOT_is_cell_x_flipped;
	bool is_cell_x_flipped(in int x, in int y) const
	{
		_GODOT_is_cell_x_flipped.bind("TileMap", "is_cell_x_flipped");
		return ptrcall!(bool)(_GODOT_is_cell_x_flipped, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_is_cell_y_flipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_cell_y_flipped") = _GODOT_is_cell_y_flipped;
	bool is_cell_y_flipped(in int x, in int y) const
	{
		_GODOT_is_cell_y_flipped.bind("TileMap", "is_cell_y_flipped");
		return ptrcall!(bool)(_GODOT_is_cell_y_flipped, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(bool, int, int) _GODOT_is_cell_transposed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_cell_transposed") = _GODOT_is_cell_transposed;
	bool is_cell_transposed(in int x, in int y) const
	{
		_GODOT_is_cell_transposed.bind("TileMap", "is_cell_transposed");
		return ptrcall!(bool)(_GODOT_is_cell_transposed, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("TileMap", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_used_cells;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_cells") = _GODOT_get_used_cells;
	Array get_used_cells() const
	{
		_GODOT_get_used_cells.bind("TileMap", "get_used_cells");
		return ptrcall!(Array)(_GODOT_get_used_cells, _godot_object);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_used_cells_by_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_cells_by_id") = _GODOT_get_used_cells_by_id;
	Array get_used_cells_by_id(in int id) const
	{
		_GODOT_get_used_cells_by_id.bind("TileMap", "get_used_cells_by_id");
		return ptrcall!(Array)(_GODOT_get_used_cells_by_id, _godot_object, id);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_used_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_rect") = _GODOT_get_used_rect;
	Rect2 get_used_rect()
	{
		_GODOT_get_used_rect.bind("TileMap", "get_used_rect");
		return ptrcall!(Rect2)(_GODOT_get_used_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, bool) _GODOT_map_to_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "map_to_world") = _GODOT_map_to_world;
	Vector2 map_to_world(in Vector2 map_position, in bool ignore_half_ofs = false) const
	{
		_GODOT_map_to_world.bind("TileMap", "map_to_world");
		return ptrcall!(Vector2)(_GODOT_map_to_world, _godot_object, map_position, ignore_half_ofs);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_world_to_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "world_to_map") = _GODOT_world_to_map;
	Vector2 world_to_map(in Vector2 world_position) const
	{
		_GODOT_world_to_map.bind("TileMap", "world_to_map");
		return ptrcall!(Vector2)(_GODOT_world_to_map, _godot_object, world_position);
	}
	package(godot) static GodotMethod!(void) _GODOT__clear_quadrants;
	package(godot) alias _GODOT_methodBindInfo(string name : "_clear_quadrants") = _GODOT__clear_quadrants;
	void _clear_quadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_clear_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__recreate_quadrants;
	package(godot) alias _GODOT_methodBindInfo(string name : "_recreate_quadrants") = _GODOT__recreate_quadrants;
	void _recreate_quadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_recreate_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_dirty_quadrants;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_dirty_quadrants") = _GODOT__update_dirty_quadrants;
	void _update_dirty_quadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dirty_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT__set_tile_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_tile_data") = _GODOT__set_tile_data;
	void _set_tile_data(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_tile_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT__get_tile_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_tile_data") = _GODOT__get_tile_data;
	PoolIntArray _get_tile_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tile_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolIntArray);
	}
}
