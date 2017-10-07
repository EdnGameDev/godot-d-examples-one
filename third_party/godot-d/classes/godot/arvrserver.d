module godot.arvrserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.arvrinterface;
import godot.arvrpositionaltracker;
@GodotBaseClass struct ARVRServerSingleton
{
	static immutable string _GODOT_internal_name = "ARVRServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ARVRServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRServer");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRServerSingleton)(constructor());
	}
	enum TrackerType : int
	{
		TRACKER_BASESTATION = 2,
		TRACKER_ANCHOR = 4,
		TRACKER_UNKNOWN = 128,
		TRACKER_CONTROLLER = 1,
		TRACKER_ANY = 255,
		TRACKER_ANY_KNOWN = 127,
	}
	enum int TRACKER_BASESTATION = 2;
	enum int TRACKER_ANCHOR = 4;
	enum int TRACKER_UNKNOWN = 128;
	enum int TRACKER_CONTROLLER = 1;
	enum int TRACKER_ANY = 255;
	enum int TRACKER_ANY_KNOWN = 127;
	package(godot) static GodotMethod!(float) _GODOT_get_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_scale") = _GODOT_get_world_scale;
	float get_world_scale() const
	{
		_GODOT_get_world_scale.bind("ARVRServer", "get_world_scale");
		return ptrcall!(float)(_GODOT_get_world_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world_scale") = _GODOT_set_world_scale;
	void set_world_scale(in float arg0)
	{
		_GODOT_set_world_scale.bind("ARVRServer", "set_world_scale");
		ptrcall!(void)(_GODOT_set_world_scale, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_reference_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_reference_frame") = _GODOT_get_reference_frame;
	Transform get_reference_frame() const
	{
		_GODOT_get_reference_frame.bind("ARVRServer", "get_reference_frame");
		return ptrcall!(Transform)(_GODOT_get_reference_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool, bool) _GODOT_request_reference_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_reference_frame") = _GODOT_request_reference_frame;
	void request_reference_frame(in bool ignore_tilt, in bool keep_height)
	{
		_GODOT_request_reference_frame.bind("ARVRServer", "request_reference_frame");
		ptrcall!(void)(_GODOT_request_reference_frame, _godot_object, ignore_tilt, keep_height);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_interface_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interface_count") = _GODOT_get_interface_count;
	int get_interface_count() const
	{
		_GODOT_get_interface_count.bind("ARVRServer", "get_interface_count");
		return ptrcall!(int)(_GODOT_get_interface_count, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRInterface, int) _GODOT_get_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interface") = _GODOT_get_interface;
	ARVRInterface get_interface(in int idx) const
	{
		_GODOT_get_interface.bind("ARVRServer", "get_interface");
		return ptrcall!(ARVRInterface)(_GODOT_get_interface, _godot_object, idx);
	}
	package(godot) static GodotMethod!(ARVRInterface, String) _GODOT_find_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_interface") = _GODOT_find_interface;
	ARVRInterface find_interface(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_interface.bind("ARVRServer", "find_interface");
		return ptrcall!(ARVRInterface)(_GODOT_find_interface, _godot_object, name);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_tracker_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracker_count") = _GODOT_get_tracker_count;
	int get_tracker_count() const
	{
		_GODOT_get_tracker_count.bind("ARVRServer", "get_tracker_count");
		return ptrcall!(int)(_GODOT_get_tracker_count, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRPositionalTracker, int) _GODOT_get_tracker;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracker") = _GODOT_get_tracker;
	ARVRPositionalTracker get_tracker(in int idx) const
	{
		_GODOT_get_tracker.bind("ARVRServer", "get_tracker");
		return ptrcall!(ARVRPositionalTracker)(_GODOT_get_tracker, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, ARVRInterface) _GODOT_set_primary_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_primary_interface") = _GODOT_set_primary_interface;
	void set_primary_interface(in ARVRInterface arg0)
	{
		_GODOT_set_primary_interface.bind("ARVRServer", "set_primary_interface");
		ptrcall!(void)(_GODOT_set_primary_interface, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, ARVRInterface) _GODOT_add_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_interface") = _GODOT_add_interface;
	void add_interface(in ARVRInterface arg0)
	{
		_GODOT_add_interface.bind("ARVRServer", "add_interface");
		ptrcall!(void)(_GODOT_add_interface, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, ARVRInterface) _GODOT_remove_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_interface") = _GODOT_remove_interface;
	void remove_interface(in ARVRInterface arg0)
	{
		_GODOT_remove_interface.bind("ARVRServer", "remove_interface");
		ptrcall!(void)(_GODOT_remove_interface, _godot_object, arg0);
	}
}
@property pragma(inline, true)
ARVRServerSingleton ARVRServer()
{
	return ARVRServerSingleton._GODOT_singleton();
}
