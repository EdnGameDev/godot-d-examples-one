module godot.instanceplaceholder;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.node;
import godot.packedscene;
@GodotBaseClass struct InstancePlaceholder
{
	static immutable string _GODOT_internal_name = "InstancePlaceholder";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in InstancePlaceholder other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InstancePlaceholder opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InstancePlaceholder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InstancePlaceholder");
		if(constructor is null) return typeof(this).init;
		return cast(InstancePlaceholder)(constructor());
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_stored_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stored_values") = _GODOT_get_stored_values;
	Dictionary get_stored_values(in bool with_order = false)
	{
		_GODOT_get_stored_values.bind("InstancePlaceholder", "get_stored_values");
		return ptrcall!(Dictionary)(_GODOT_get_stored_values, _godot_object, with_order);
	}
	package(godot) static GodotMethod!(void, PackedScene) _GODOT_replace_by_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "replace_by_instance") = _GODOT_replace_by_instance;
	void replace_by_instance(in PackedScene custom_scene = PackedScene.init)
	{
		_GODOT_replace_by_instance.bind("InstancePlaceholder", "replace_by_instance");
		ptrcall!(void)(_GODOT_replace_by_instance, _godot_object, custom_scene);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_instance_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_path") = _GODOT_get_instance_path;
	String get_instance_path() const
	{
		_GODOT_get_instance_path.bind("InstancePlaceholder", "get_instance_path");
		return ptrcall!(String)(_GODOT_get_instance_path, _godot_object);
	}
}
