module godot.visualscriptresourcepath;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptResourcePath
{
	static immutable string _GODOT_internal_name = "VisualScriptResourcePath";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptResourcePath other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptResourcePath opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptResourcePath _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptResourcePath");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptResourcePath)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_resource_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_resource_path") = _GODOT_set_resource_path;
	void set_resource_path(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_resource_path.bind("VisualScriptResourcePath", "set_resource_path");
		ptrcall!(void)(_GODOT_set_resource_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_resource_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_path") = _GODOT_get_resource_path;
	String get_resource_path()
	{
		_GODOT_get_resource_path.bind("VisualScriptResourcePath", "get_resource_path");
		return ptrcall!(String)(_GODOT_get_resource_path, _godot_object);
	}
}
