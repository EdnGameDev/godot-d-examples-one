module godot.worldenvironment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.environment;
@GodotBaseClass struct WorldEnvironment
{
	static immutable string _GODOT_internal_name = "WorldEnvironment";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in WorldEnvironment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WorldEnvironment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WorldEnvironment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("WorldEnvironment");
		if(constructor is null) return typeof(this).init;
		return cast(WorldEnvironment)(constructor());
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_environment") = _GODOT_set_environment;
	void set_environment(in Environment env)
	{
		_GODOT_set_environment.bind("WorldEnvironment", "set_environment");
		ptrcall!(void)(_GODOT_set_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	Environment get_environment() const
	{
		_GODOT_get_environment.bind("WorldEnvironment", "get_environment");
		return ptrcall!(Environment)(_GODOT_get_environment, _godot_object);
	}
}
