module godot.performance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
@GodotBaseClass struct PerformanceSingleton
{
	static immutable string _GODOT_internal_name = "Performance";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Performance";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PerformanceSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PerformanceSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PerformanceSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Performance");
		if(constructor is null) return typeof(this).init;
		return cast(PerformanceSingleton)(constructor());
	}
	enum Monitor : int
	{
		OBJECT_COUNT = 8,
		MEMORY_DYNAMIC_MAX = 6,
		PHYSICS_2D_COLLISION_PAIRS = 22,
		OBJECT_NODE_COUNT = 10,
		TIME_FPS = 0,
		TIME_FIXED_PROCESS = 2,
		RENDER_USAGE_VIDEO_MEM_TOTAL = 20,
		RENDER_VERTEX_MEM_USED = 19,
		PHYSICS_2D_ISLAND_COUNT = 23,
		OBJECT_RESOURCE_COUNT = 9,
		MEMORY_STATIC_MAX = 5,
		RENDER_SHADER_CHANGES_IN_FRAME = 14,
		RENDER_OBJECTS_IN_FRAME = 11,
		MONITOR_MAX = 27,
		RENDER_VIDEO_MEM_USED = 17,
		TIME_PROCESS = 1,
		RENDER_MATERIAL_CHANGES_IN_FRAME = 13,
		PHYSICS_2D_ACTIVE_OBJECTS = 21,
		PHYSICS_3D_ACTIVE_OBJECTS = 24,
		PHYSICS_3D_ISLAND_COUNT = 26,
		RENDER_DRAW_CALLS_IN_FRAME = 16,
		RENDER_TEXTURE_MEM_USED = 18,
		MEMORY_STATIC = 3,
		MEMORY_MESSAGE_BUFFER_MAX = 7,
		RENDER_SURFACE_CHANGES_IN_FRAME = 15,
		PHYSICS_3D_COLLISION_PAIRS = 25,
		MEMORY_DYNAMIC = 4,
		RENDER_VERTICES_IN_FRAME = 12,
	}
	enum int OBJECT_COUNT = 8;
	enum int MEMORY_DYNAMIC_MAX = 6;
	enum int PHYSICS_2D_COLLISION_PAIRS = 22;
	enum int OBJECT_NODE_COUNT = 10;
	enum int TIME_FPS = 0;
	enum int TIME_FIXED_PROCESS = 2;
	enum int RENDER_USAGE_VIDEO_MEM_TOTAL = 20;
	enum int RENDER_VERTEX_MEM_USED = 19;
	enum int PHYSICS_2D_ISLAND_COUNT = 23;
	enum int OBJECT_RESOURCE_COUNT = 9;
	enum int MEMORY_STATIC_MAX = 5;
	enum int RENDER_SHADER_CHANGES_IN_FRAME = 14;
	enum int RENDER_OBJECTS_IN_FRAME = 11;
	enum int MONITOR_MAX = 27;
	enum int RENDER_VIDEO_MEM_USED = 17;
	enum int TIME_PROCESS = 1;
	enum int RENDER_MATERIAL_CHANGES_IN_FRAME = 13;
	enum int PHYSICS_2D_ACTIVE_OBJECTS = 21;
	enum int PHYSICS_3D_ACTIVE_OBJECTS = 24;
	enum int PHYSICS_3D_ISLAND_COUNT = 26;
	enum int RENDER_DRAW_CALLS_IN_FRAME = 16;
	enum int RENDER_TEXTURE_MEM_USED = 18;
	enum int MEMORY_STATIC = 3;
	enum int MEMORY_MESSAGE_BUFFER_MAX = 7;
	enum int RENDER_SURFACE_CHANGES_IN_FRAME = 15;
	enum int PHYSICS_3D_COLLISION_PAIRS = 25;
	enum int MEMORY_DYNAMIC = 4;
	enum int RENDER_VERTICES_IN_FRAME = 12;
	package(godot) static GodotMethod!(float, int) _GODOT_get_monitor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_monitor") = _GODOT_get_monitor;
	float get_monitor(in int monitor) const
	{
		_GODOT_get_monitor.bind("Performance", "get_monitor");
		return ptrcall!(float)(_GODOT_get_monitor, _godot_object, monitor);
	}
}
@property pragma(inline, true)
PerformanceSingleton Performance()
{
	return PerformanceSingleton._GODOT_singleton();
}
