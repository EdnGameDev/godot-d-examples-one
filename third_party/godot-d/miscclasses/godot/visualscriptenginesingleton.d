module godot.visualscriptenginesingleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptEngineSingleton
{
	static immutable string _GODOT_internal_name = "VisualScriptEngineSingleton";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptEngineSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptEngineSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptEngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptEngineSingleton");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEngineSingleton)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_singleton") = _GODOT_set_singleton;
	void set_singleton(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_singleton.bind("VisualScriptEngineSingleton", "set_singleton");
		ptrcall!(void)(_GODOT_set_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_singleton") = _GODOT_get_singleton;
	String get_singleton()
	{
		_GODOT_get_singleton.bind("VisualScriptEngineSingleton", "get_singleton");
		return ptrcall!(String)(_GODOT_get_singleton, _godot_object);
	}
}
