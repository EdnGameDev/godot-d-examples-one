module godot.resourceinteractiveloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
import godot.resource;
@GodotBaseClass struct ResourceInteractiveLoader
{
	static immutable string _GODOT_internal_name = "ResourceInteractiveLoader";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ResourceInteractiveLoader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceInteractiveLoader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceInteractiveLoader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ResourceInteractiveLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceInteractiveLoader)(constructor());
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource") = _GODOT_get_resource;
	Resource get_resource()
	{
		_GODOT_get_resource.bind("ResourceInteractiveLoader", "get_resource");
		return ptrcall!(Resource)(_GODOT_get_resource, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_poll;
	package(godot) alias _GODOT_methodBindInfo(string name : "poll") = _GODOT_poll;
	GodotError poll()
	{
		_GODOT_poll.bind("ResourceInteractiveLoader", "poll");
		return ptrcall!(GodotError)(_GODOT_poll, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_wait;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait") = _GODOT_wait;
	GodotError wait()
	{
		_GODOT_wait.bind("ResourceInteractiveLoader", "wait");
		return ptrcall!(GodotError)(_GODOT_wait, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_stage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stage") = _GODOT_get_stage;
	int get_stage() const
	{
		_GODOT_get_stage.bind("ResourceInteractiveLoader", "get_stage");
		return ptrcall!(int)(_GODOT_get_stage, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_stage_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stage_count") = _GODOT_get_stage_count;
	int get_stage_count() const
	{
		_GODOT_get_stage_count.bind("ResourceInteractiveLoader", "get_stage_count");
		return ptrcall!(int)(_GODOT_get_stage_count, _godot_object);
	}
}
