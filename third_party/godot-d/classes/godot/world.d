module godot.world;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.environment;
import godot.physicsdirectspacestate;
@GodotBaseClass struct World
{
	static immutable string _GODOT_internal_name = "World";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in World other) const { return _godot_object.ptr is other._godot_object.ptr; }
	World opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static World _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("World");
		if(constructor is null) return typeof(this).init;
		return cast(World)(constructor());
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space") = _GODOT_get_space;
	RID get_space() const
	{
		_GODOT_get_space.bind("World", "get_space");
		return ptrcall!(RID)(_GODOT_get_space, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_scenario;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scenario") = _GODOT_get_scenario;
	RID get_scenario() const
	{
		_GODOT_get_scenario.bind("World", "get_scenario");
		return ptrcall!(RID)(_GODOT_get_scenario, _godot_object);
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_environment") = _GODOT_set_environment;
	void set_environment(in Environment env)
	{
		_GODOT_set_environment.bind("World", "set_environment");
		ptrcall!(void)(_GODOT_set_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	Environment get_environment() const
	{
		_GODOT_get_environment.bind("World", "get_environment");
		return ptrcall!(Environment)(_GODOT_get_environment, _godot_object);
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_fallback_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fallback_environment") = _GODOT_set_fallback_environment;
	void set_fallback_environment(in Environment env)
	{
		_GODOT_set_fallback_environment.bind("World", "set_fallback_environment");
		ptrcall!(void)(_GODOT_set_fallback_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_fallback_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback_environment") = _GODOT_get_fallback_environment;
	Environment get_fallback_environment() const
	{
		_GODOT_get_fallback_environment.bind("World", "get_fallback_environment");
		return ptrcall!(Environment)(_GODOT_get_fallback_environment, _godot_object);
	}
	package(godot) static GodotMethod!(PhysicsDirectSpaceState) _GODOT_get_direct_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_direct_space_state") = _GODOT_get_direct_space_state;
	PhysicsDirectSpaceState get_direct_space_state()
	{
		_GODOT_get_direct_space_state.bind("World", "get_direct_space_state");
		return ptrcall!(PhysicsDirectSpaceState)(_GODOT_get_direct_space_state, _godot_object);
	}
}
