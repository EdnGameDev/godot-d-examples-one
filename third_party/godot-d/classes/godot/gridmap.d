module godot.gridmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.meshlibrary;
import godot.resource;
@GodotBaseClass struct GridMap
{
	static immutable string _GODOT_internal_name = "GridMap";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GridMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GridMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GridMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GridMap");
		if(constructor is null) return typeof(this).init;
		return cast(GridMap)(constructor());
	}
	enum int INVALID_CELL_ITEM = -1;
	package(godot) static GodotMethod!(void, MeshLibrary) _GODOT_set_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_theme") = _GODOT_set_theme;
	void set_theme(in MeshLibrary theme)
	{
		_GODOT_set_theme.bind("GridMap", "set_theme");
		ptrcall!(void)(_GODOT_set_theme, _godot_object, theme);
	}
	package(godot) static GodotMethod!(MeshLibrary) _GODOT_get_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_theme") = _GODOT_get_theme;
	MeshLibrary get_theme() const
	{
		_GODOT_get_theme.bind("GridMap", "get_theme");
		return ptrcall!(MeshLibrary)(_GODOT_get_theme, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	void set_cell_size(in Vector3 size)
	{
		_GODOT_set_cell_size.bind("GridMap", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	Vector3 get_cell_size() const
	{
		_GODOT_get_cell_size.bind("GridMap", "get_cell_size");
		return ptrcall!(Vector3)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_octant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_octant_size") = _GODOT_set_octant_size;
	void set_octant_size(in int size)
	{
		_GODOT_set_octant_size.bind("GridMap", "set_octant_size");
		ptrcall!(void)(_GODOT_set_octant_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_octant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_octant_size") = _GODOT_get_octant_size;
	int get_octant_size() const
	{
		_GODOT_get_octant_size.bind("GridMap", "get_octant_size");
		return ptrcall!(int)(_GODOT_get_octant_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, int, int, int) _GODOT_set_cell_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_item") = _GODOT_set_cell_item;
	void set_cell_item(in int x, in int y, in int z, in int item, in int orientation = 0)
	{
		_GODOT_set_cell_item.bind("GridMap", "set_cell_item");
		ptrcall!(void)(_GODOT_set_cell_item, _godot_object, x, y, z, item, orientation);
	}
	package(godot) static GodotMethod!(int, int, int, int) _GODOT_get_cell_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_item") = _GODOT_get_cell_item;
	int get_cell_item(in int x, in int y, in int z) const
	{
		_GODOT_get_cell_item.bind("GridMap", "get_cell_item");
		return ptrcall!(int)(_GODOT_get_cell_item, _godot_object, x, y, z);
	}
	package(godot) static GodotMethod!(int, int, int, int) _GODOT_get_cell_item_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_item_orientation") = _GODOT_get_cell_item_orientation;
	int get_cell_item_orientation(in int x, in int y, in int z) const
	{
		_GODOT_get_cell_item_orientation.bind("GridMap", "get_cell_item_orientation");
		return ptrcall!(int)(_GODOT_get_cell_item_orientation, _godot_object, x, y, z);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_octants_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_octants_callback") = _GODOT__update_octants_callback;
	void _update_octants_callback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_octants_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_resource_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "resource_changed") = _GODOT_resource_changed;
	void resource_changed(in Resource resource)
	{
		_GODOT_resource_changed.bind("GridMap", "resource_changed");
		ptrcall!(void)(_GODOT_resource_changed, _godot_object, resource);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_x") = _GODOT_set_center_x;
	void set_center_x(in bool enable)
	{
		_GODOT_set_center_x.bind("GridMap", "set_center_x");
		ptrcall!(void)(_GODOT_set_center_x, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_x") = _GODOT_get_center_x;
	bool get_center_x() const
	{
		_GODOT_get_center_x.bind("GridMap", "get_center_x");
		return ptrcall!(bool)(_GODOT_get_center_x, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_y") = _GODOT_set_center_y;
	void set_center_y(in bool enable)
	{
		_GODOT_set_center_y.bind("GridMap", "set_center_y");
		ptrcall!(void)(_GODOT_set_center_y, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_y") = _GODOT_get_center_y;
	bool get_center_y() const
	{
		_GODOT_get_center_y.bind("GridMap", "get_center_y");
		return ptrcall!(bool)(_GODOT_get_center_y, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_z") = _GODOT_set_center_z;
	void set_center_z(in bool enable)
	{
		_GODOT_set_center_z.bind("GridMap", "set_center_z");
		ptrcall!(void)(_GODOT_set_center_z, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_z") = _GODOT_get_center_z;
	bool get_center_z() const
	{
		_GODOT_get_center_z.bind("GridMap", "get_center_z");
		return ptrcall!(bool)(_GODOT_get_center_z, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool, bool, int, int) _GODOT_set_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip") = _GODOT_set_clip;
	void set_clip(in bool enabled, in bool clipabove = true, in int floor = 0, in int axis = 0)
	{
		_GODOT_set_clip.bind("GridMap", "set_clip");
		ptrcall!(void)(_GODOT_set_clip, _godot_object, enabled, clipabove, floor, axis);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("GridMap", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_meshes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_meshes") = _GODOT_get_meshes;
	Array get_meshes()
	{
		_GODOT_get_meshes.bind("GridMap", "get_meshes");
		return ptrcall!(Array)(_GODOT_get_meshes, _godot_object);
	}
}
