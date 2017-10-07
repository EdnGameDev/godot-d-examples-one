module godot.scenestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
import godot.packedscene;
@GodotBaseClass struct SceneState
{
	static immutable string _GODOT_internal_name = "SceneState";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SceneState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SceneState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SceneState");
		if(constructor is null) return typeof(this).init;
		return cast(SceneState)(constructor());
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
	package(godot) static GodotMethod!(int) _GODOT_get_node_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_count") = _GODOT_get_node_count;
	int get_node_count() const
	{
		_GODOT_get_node_count.bind("SceneState", "get_node_count");
		return ptrcall!(int)(_GODOT_get_node_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_node_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_type") = _GODOT_get_node_type;
	String get_node_type(in int idx) const
	{
		_GODOT_get_node_type.bind("SceneState", "get_node_type");
		return ptrcall!(String)(_GODOT_get_node_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_node_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_name") = _GODOT_get_node_name;
	String get_node_name(in int idx) const
	{
		_GODOT_get_node_name.bind("SceneState", "get_node_name");
		return ptrcall!(String)(_GODOT_get_node_name, _godot_object, idx);
	}
	package(godot) static GodotMethod!(NodePath, int, bool) _GODOT_get_node_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_path") = _GODOT_get_node_path;
	NodePath get_node_path(in int idx, in bool for_parent = false) const
	{
		_GODOT_get_node_path.bind("SceneState", "get_node_path");
		return ptrcall!(NodePath)(_GODOT_get_node_path, _godot_object, idx, for_parent);
	}
	package(godot) static GodotMethod!(NodePath, int) _GODOT_get_node_owner_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_owner_path") = _GODOT_get_node_owner_path;
	NodePath get_node_owner_path(in int idx) const
	{
		_GODOT_get_node_owner_path.bind("SceneState", "get_node_owner_path");
		return ptrcall!(NodePath)(_GODOT_get_node_owner_path, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_node_instance_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_node_instance_placeholder") = _GODOT_is_node_instance_placeholder;
	bool is_node_instance_placeholder(in int idx) const
	{
		_GODOT_is_node_instance_placeholder.bind("SceneState", "is_node_instance_placeholder");
		return ptrcall!(bool)(_GODOT_is_node_instance_placeholder, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_node_instance_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_instance_placeholder") = _GODOT_get_node_instance_placeholder;
	String get_node_instance_placeholder(in int idx) const
	{
		_GODOT_get_node_instance_placeholder.bind("SceneState", "get_node_instance_placeholder");
		return ptrcall!(String)(_GODOT_get_node_instance_placeholder, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PackedScene, int) _GODOT_get_node_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_instance") = _GODOT_get_node_instance;
	PackedScene get_node_instance(in int idx) const
	{
		_GODOT_get_node_instance.bind("SceneState", "get_node_instance");
		return ptrcall!(PackedScene)(_GODOT_get_node_instance, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolStringArray, int) _GODOT_get_node_groups;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_groups") = _GODOT_get_node_groups;
	PoolStringArray get_node_groups(in int idx) const
	{
		_GODOT_get_node_groups.bind("SceneState", "get_node_groups");
		return ptrcall!(PoolStringArray)(_GODOT_get_node_groups, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_node_property_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_property_count") = _GODOT_get_node_property_count;
	int get_node_property_count(in int idx) const
	{
		_GODOT_get_node_property_count.bind("SceneState", "get_node_property_count");
		return ptrcall!(int)(_GODOT_get_node_property_count, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int, int) _GODOT_get_node_property_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_property_name") = _GODOT_get_node_property_name;
	String get_node_property_name(in int idx, in int prop_idx) const
	{
		_GODOT_get_node_property_name.bind("SceneState", "get_node_property_name");
		return ptrcall!(String)(_GODOT_get_node_property_name, _godot_object, idx, prop_idx);
	}
	package(godot) static GodotMethod!(Variant, int, int) _GODOT_get_node_property_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_property_value") = _GODOT_get_node_property_value;
	Variant get_node_property_value(in int idx, in int prop_idx) const
	{
		_GODOT_get_node_property_value.bind("SceneState", "get_node_property_value");
		return ptrcall!(Variant)(_GODOT_get_node_property_value, _godot_object, idx, prop_idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_connection_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_count") = _GODOT_get_connection_count;
	int get_connection_count() const
	{
		_GODOT_get_connection_count.bind("SceneState", "get_connection_count");
		return ptrcall!(int)(_GODOT_get_connection_count, _godot_object);
	}
	package(godot) static GodotMethod!(NodePath, int) _GODOT_get_connection_source;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_source") = _GODOT_get_connection_source;
	NodePath get_connection_source(in int idx) const
	{
		_GODOT_get_connection_source.bind("SceneState", "get_connection_source");
		return ptrcall!(NodePath)(_GODOT_get_connection_source, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_connection_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_signal") = _GODOT_get_connection_signal;
	String get_connection_signal(in int idx) const
	{
		_GODOT_get_connection_signal.bind("SceneState", "get_connection_signal");
		return ptrcall!(String)(_GODOT_get_connection_signal, _godot_object, idx);
	}
	package(godot) static GodotMethod!(NodePath, int) _GODOT_get_connection_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_target") = _GODOT_get_connection_target;
	NodePath get_connection_target(in int idx) const
	{
		_GODOT_get_connection_target.bind("SceneState", "get_connection_target");
		return ptrcall!(NodePath)(_GODOT_get_connection_target, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_connection_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_method") = _GODOT_get_connection_method;
	String get_connection_method(in int idx) const
	{
		_GODOT_get_connection_method.bind("SceneState", "get_connection_method");
		return ptrcall!(String)(_GODOT_get_connection_method, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_connection_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_flags") = _GODOT_get_connection_flags;
	int get_connection_flags(in int idx) const
	{
		_GODOT_get_connection_flags.bind("SceneState", "get_connection_flags");
		return ptrcall!(int)(_GODOT_get_connection_flags, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_connection_binds;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_binds") = _GODOT_get_connection_binds;
	Array get_connection_binds(in int idx) const
	{
		_GODOT_get_connection_binds.bind("SceneState", "get_connection_binds");
		return ptrcall!(Array)(_GODOT_get_connection_binds, _godot_object, idx);
	}
}
