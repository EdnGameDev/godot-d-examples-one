module godot.visualscriptpreload;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
@GodotBaseClass struct VisualScriptPreload
{
	static immutable string _GODOT_internal_name = "VisualScriptPreload";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptPreload other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptPreload opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptPreload _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptPreload");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptPreload)(constructor());
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_preload;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_preload") = _GODOT_set_preload;
	void set_preload(in Resource resource)
	{
		_GODOT_set_preload.bind("VisualScriptPreload", "set_preload");
		ptrcall!(void)(_GODOT_set_preload, _godot_object, resource);
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_preload;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_preload") = _GODOT_get_preload;
	Resource get_preload() const
	{
		_GODOT_get_preload.bind("VisualScriptPreload", "get_preload");
		return ptrcall!(Resource)(_GODOT_get_preload, _godot_object);
	}
}
