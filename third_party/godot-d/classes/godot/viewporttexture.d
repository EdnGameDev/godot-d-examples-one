module godot.viewporttexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.texture;
@GodotBaseClass struct ViewportTexture
{
	static immutable string _GODOT_internal_name = "ViewportTexture";
public:
	union { godot_object _godot_object; Texture base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ViewportTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ViewportTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ViewportTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ViewportTexture");
		if(constructor is null) return typeof(this).init;
		return cast(ViewportTexture)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_viewport_path_in_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_viewport_path_in_scene") = _GODOT_set_viewport_path_in_scene;
	void set_viewport_path_in_scene(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_viewport_path_in_scene.bind("ViewportTexture", "set_viewport_path_in_scene");
		ptrcall!(void)(_GODOT_set_viewport_path_in_scene, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_viewport_path_in_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_path_in_scene") = _GODOT_get_viewport_path_in_scene;
	NodePath get_viewport_path_in_scene() const
	{
		_GODOT_get_viewport_path_in_scene.bind("ViewportTexture", "get_viewport_path_in_scene");
		return ptrcall!(NodePath)(_GODOT_get_viewport_path_in_scene, _godot_object);
	}
}
