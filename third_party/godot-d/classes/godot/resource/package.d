module godot.resource;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.node;
@GodotBaseClass struct Resource
{
	static immutable string _GODOT_internal_name = "Resource";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Resource other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Resource opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Resource _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Resource");
		if(constructor is null) return typeof(this).init;
		return cast(Resource)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT__setup_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_setup_local_to_scene") = _GODOT__setup_local_to_scene;
	void _setup_local_to_scene()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_setup_local_to_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_path") = _GODOT_set_path;
	void set_path(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_path.bind("Resource", "set_path");
		ptrcall!(void)(_GODOT_set_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_take_over_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "take_over_path") = _GODOT_take_over_path;
	void take_over_path(StringArg0)(in StringArg0 path)
	{
		_GODOT_take_over_path.bind("Resource", "take_over_path");
		ptrcall!(void)(_GODOT_take_over_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	String get_path() const
	{
		_GODOT_get_path.bind("Resource", "get_path");
		return ptrcall!(String)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_name") = _GODOT_set_name;
	void set_name(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_name.bind("Resource", "set_name");
		ptrcall!(void)(_GODOT_set_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	String get_name() const
	{
		_GODOT_get_name.bind("Resource", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rid") = _GODOT_get_rid;
	RID get_rid() const
	{
		_GODOT_get_rid.bind("Resource", "get_rid");
		return ptrcall!(RID)(_GODOT_get_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_local_to_scene") = _GODOT_set_local_to_scene;
	void set_local_to_scene(in bool enable)
	{
		_GODOT_set_local_to_scene.bind("Resource", "set_local_to_scene");
		ptrcall!(void)(_GODOT_set_local_to_scene, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_local_to_scene") = _GODOT_is_local_to_scene;
	bool is_local_to_scene() const
	{
		_GODOT_is_local_to_scene.bind("Resource", "is_local_to_scene");
		return ptrcall!(bool)(_GODOT_is_local_to_scene, _godot_object);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_local_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_scene") = _GODOT_get_local_scene;
	Node get_local_scene() const
	{
		_GODOT_get_local_scene.bind("Resource", "get_local_scene");
		return ptrcall!(Node)(_GODOT_get_local_scene, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_setup_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "setup_local_to_scene") = _GODOT_setup_local_to_scene;
	void setup_local_to_scene()
	{
		_GODOT_setup_local_to_scene.bind("Resource", "setup_local_to_scene");
		ptrcall!(void)(_GODOT_setup_local_to_scene, _godot_object);
	}
	package(godot) static GodotMethod!(Resource, bool) _GODOT_duplicate;
	package(godot) alias _GODOT_methodBindInfo(string name : "duplicate") = _GODOT_duplicate;
	Resource duplicate(in bool subresources = false) const
	{
		_GODOT_duplicate.bind("Resource", "duplicate");
		return ptrcall!(Resource)(_GODOT_duplicate, _godot_object, subresources);
	}
}
