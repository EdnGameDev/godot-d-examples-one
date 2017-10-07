module godot.packedscene;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.node;
import godot.scenestate;
@GodotBaseClass struct PackedScene
{
	static immutable string _GODOT_internal_name = "PackedScene";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PackedScene other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PackedScene opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PackedScene _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PackedScene");
		if(constructor is null) return typeof(this).init;
		return cast(PackedScene)(constructor());
	}
	enum GenEditState : int
	{
		GEN_EDIT_STATE_DISABLED = 0,
		GEN_EDIT_STATE_MAIN = 2,
		GEN_EDIT_STATE_INSTANCE = 1,
	}
	enum int GEN_EDIT_STATE_DISABLED = 0;
	enum int GEN_EDIT_STATE_MAIN = 2;
	enum int GEN_EDIT_STATE_INSTANCE = 1;
	package(godot) static GodotMethod!(GodotError, GodotObject) _GODOT_pack;
	package(godot) alias _GODOT_methodBindInfo(string name : "pack") = _GODOT_pack;
	GodotError pack(in GodotObject path)
	{
		_GODOT_pack.bind("PackedScene", "pack");
		return ptrcall!(GodotError)(_GODOT_pack, _godot_object, path);
	}
	package(godot) static GodotMethod!(Node, int) _GODOT_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance") = _GODOT_instance;
	Node instance(in int edit_state = 0) const
	{
		_GODOT_instance.bind("PackedScene", "instance");
		return ptrcall!(Node)(_GODOT_instance, _godot_object, edit_state);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_instance") = _GODOT_can_instance;
	bool can_instance() const
	{
		_GODOT_can_instance.bind("PackedScene", "can_instance");
		return ptrcall!(bool)(_GODOT_can_instance, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_bundled_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_bundled_scene") = _GODOT__set_bundled_scene;
	void _set_bundled_scene(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_bundled_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_bundled_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_bundled_scene") = _GODOT__get_bundled_scene;
	Dictionary _get_bundled_scene() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_bundled_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	package(godot) static GodotMethod!(SceneState) _GODOT_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_state") = _GODOT_get_state;
	SceneState get_state()
	{
		_GODOT_get_state.bind("PackedScene", "get_state");
		return ptrcall!(SceneState)(_GODOT_get_state, _godot_object);
	}
}
