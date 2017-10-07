module godot.scenetreetimer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct SceneTreeTimer
{
	static immutable string _GODOT_internal_name = "SceneTreeTimer";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SceneTreeTimer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneTreeTimer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SceneTreeTimer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SceneTreeTimer");
		if(constructor is null) return typeof(this).init;
		return cast(SceneTreeTimer)(constructor());
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_time_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_time_left") = _GODOT_set_time_left;
	void set_time_left(in float time)
	{
		_GODOT_set_time_left.bind("SceneTreeTimer", "set_time_left");
		ptrcall!(void)(_GODOT_set_time_left, _godot_object, time);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_time_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_left") = _GODOT_get_time_left;
	float get_time_left() const
	{
		_GODOT_get_time_left.bind("SceneTreeTimer", "get_time_left");
		return ptrcall!(float)(_GODOT_get_time_left, _godot_object);
	}
}
