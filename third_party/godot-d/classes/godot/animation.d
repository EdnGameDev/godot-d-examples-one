module godot.animation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Animation
{
	static immutable string _GODOT_internal_name = "Animation";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Animation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Animation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Animation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Animation");
		if(constructor is null) return typeof(this).init;
		return cast(Animation)(constructor());
	}
	enum TrackType : int
	{
		TYPE_TRANSFORM = 1,
		TYPE_METHOD = 2,
		TYPE_VALUE = 0,
	}
	enum UpdateMode : int
	{
		UPDATE_DISCRETE = 1,
		UPDATE_TRIGGER = 2,
		UPDATE_CONTINUOUS = 0,
	}
	enum InterpolationType : int
	{
		INTERPOLATION_LINEAR = 1,
		INTERPOLATION_NEAREST = 0,
		INTERPOLATION_CUBIC = 2,
	}
	enum int UPDATE_TRIGGER = 2;
	enum int TYPE_METHOD = 2;
	enum int INTERPOLATION_NEAREST = 0;
	enum int TYPE_TRANSFORM = 1;
	enum int UPDATE_CONTINUOUS = 0;
	enum int UPDATE_DISCRETE = 1;
	enum int INTERPOLATION_LINEAR = 1;
	enum int TYPE_VALUE = 0;
	enum int INTERPOLATION_CUBIC = 2;
	package(godot) static GodotMethod!(int, int, int) _GODOT_add_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_track") = _GODOT_add_track;
	int add_track(in int type, in int at_position = -1)
	{
		_GODOT_add_track.bind("Animation", "add_track");
		return ptrcall!(int)(_GODOT_add_track, _godot_object, type, at_position);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_track") = _GODOT_remove_track;
	void remove_track(in int idx)
	{
		_GODOT_remove_track.bind("Animation", "remove_track");
		ptrcall!(void)(_GODOT_remove_track, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_track_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_track_count") = _GODOT_get_track_count;
	int get_track_count() const
	{
		_GODOT_get_track_count.bind("Animation", "get_track_count");
		return ptrcall!(int)(_GODOT_get_track_count, _godot_object);
	}
	package(godot) static GodotMethod!(Animation.TrackType, int) _GODOT_track_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_type") = _GODOT_track_get_type;
	Animation.TrackType track_get_type(in int idx) const
	{
		_GODOT_track_get_type.bind("Animation", "track_get_type");
		return ptrcall!(Animation.TrackType)(_GODOT_track_get_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(NodePath, int) _GODOT_track_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_path") = _GODOT_track_get_path;
	NodePath track_get_path(in int idx) const
	{
		_GODOT_track_get_path.bind("Animation", "track_get_path");
		return ptrcall!(NodePath)(_GODOT_track_get_path, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, NodePath) _GODOT_track_set_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_path") = _GODOT_track_set_path;
	void track_set_path(NodePathArg1)(in int idx, in NodePathArg1 path)
	{
		_GODOT_track_set_path.bind("Animation", "track_set_path");
		ptrcall!(void)(_GODOT_track_set_path, _godot_object, idx, path);
	}
	package(godot) static GodotMethod!(int, NodePath) _GODOT_find_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_track") = _GODOT_find_track;
	int find_track(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_find_track.bind("Animation", "find_track");
		return ptrcall!(int)(_GODOT_find_track, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_track_move_up;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_move_up") = _GODOT_track_move_up;
	void track_move_up(in int idx)
	{
		_GODOT_track_move_up.bind("Animation", "track_move_up");
		ptrcall!(void)(_GODOT_track_move_up, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_track_move_down;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_move_down") = _GODOT_track_move_down;
	void track_move_down(in int idx)
	{
		_GODOT_track_move_down.bind("Animation", "track_move_down");
		ptrcall!(void)(_GODOT_track_move_down, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_track_set_imported;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_imported") = _GODOT_track_set_imported;
	void track_set_imported(in int idx, in bool imported)
	{
		_GODOT_track_set_imported.bind("Animation", "track_set_imported");
		ptrcall!(void)(_GODOT_track_set_imported, _godot_object, idx, imported);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_track_is_imported;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_is_imported") = _GODOT_track_is_imported;
	bool track_is_imported(in int idx) const
	{
		_GODOT_track_is_imported.bind("Animation", "track_is_imported");
		return ptrcall!(bool)(_GODOT_track_is_imported, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int, int, float, Vector3, Quat, Vector3) _GODOT_transform_track_insert_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "transform_track_insert_key") = _GODOT_transform_track_insert_key;
	int transform_track_insert_key(in int idx, in float time, in Vector3 location, in Quat rotation, in Vector3 scale)
	{
		_GODOT_transform_track_insert_key.bind("Animation", "transform_track_insert_key");
		return ptrcall!(int)(_GODOT_transform_track_insert_key, _godot_object, idx, time, location, rotation, scale);
	}
	package(godot) static GodotMethod!(void, int, float, Variant, float) _GODOT_track_insert_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_insert_key") = _GODOT_track_insert_key;
	void track_insert_key(VariantArg2)(in int idx, in float time, in VariantArg2 key, in float transition = 1)
	{
		_GODOT_track_insert_key.bind("Animation", "track_insert_key");
		ptrcall!(void)(_GODOT_track_insert_key, _godot_object, idx, time, key, transition);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_track_remove_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_remove_key") = _GODOT_track_remove_key;
	void track_remove_key(in int idx, in int key_idx)
	{
		_GODOT_track_remove_key.bind("Animation", "track_remove_key");
		ptrcall!(void)(_GODOT_track_remove_key, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_track_remove_key_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_remove_key_at_position") = _GODOT_track_remove_key_at_position;
	void track_remove_key_at_position(in int idx, in float position)
	{
		_GODOT_track_remove_key_at_position.bind("Animation", "track_remove_key_at_position");
		ptrcall!(void)(_GODOT_track_remove_key_at_position, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(void, int, int, Variant) _GODOT_track_set_key_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_key_value") = _GODOT_track_set_key_value;
	void track_set_key_value(VariantArg2)(in int idx, in int key, in VariantArg2 value)
	{
		_GODOT_track_set_key_value.bind("Animation", "track_set_key_value");
		ptrcall!(void)(_GODOT_track_set_key_value, _godot_object, idx, key, value);
	}
	package(godot) static GodotMethod!(void, int, int, float) _GODOT_track_set_key_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_key_transition") = _GODOT_track_set_key_transition;
	void track_set_key_transition(in int idx, in int key_idx, in float transition)
	{
		_GODOT_track_set_key_transition.bind("Animation", "track_set_key_transition");
		ptrcall!(void)(_GODOT_track_set_key_transition, _godot_object, idx, key_idx, transition);
	}
	package(godot) static GodotMethod!(float, int, int) _GODOT_track_get_key_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_transition") = _GODOT_track_get_key_transition;
	float track_get_key_transition(in int idx, in int key_idx) const
	{
		_GODOT_track_get_key_transition.bind("Animation", "track_get_key_transition");
		return ptrcall!(float)(_GODOT_track_get_key_transition, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_track_get_key_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_count") = _GODOT_track_get_key_count;
	int track_get_key_count(in int idx) const
	{
		_GODOT_track_get_key_count.bind("Animation", "track_get_key_count");
		return ptrcall!(int)(_GODOT_track_get_key_count, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Variant, int, int) _GODOT_track_get_key_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_value") = _GODOT_track_get_key_value;
	Variant track_get_key_value(in int idx, in int key_idx) const
	{
		_GODOT_track_get_key_value.bind("Animation", "track_get_key_value");
		return ptrcall!(Variant)(_GODOT_track_get_key_value, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(float, int, int) _GODOT_track_get_key_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_time") = _GODOT_track_get_key_time;
	float track_get_key_time(in int idx, in int key_idx) const
	{
		_GODOT_track_get_key_time.bind("Animation", "track_get_key_time");
		return ptrcall!(float)(_GODOT_track_get_key_time, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(int, int, float, bool) _GODOT_track_find_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_find_key") = _GODOT_track_find_key;
	int track_find_key(in int idx, in float time, in bool exact = false) const
	{
		_GODOT_track_find_key.bind("Animation", "track_find_key");
		return ptrcall!(int)(_GODOT_track_find_key, _godot_object, idx, time, exact);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_track_set_interpolation_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_interpolation_type") = _GODOT_track_set_interpolation_type;
	void track_set_interpolation_type(in int idx, in int interpolation)
	{
		_GODOT_track_set_interpolation_type.bind("Animation", "track_set_interpolation_type");
		ptrcall!(void)(_GODOT_track_set_interpolation_type, _godot_object, idx, interpolation);
	}
	package(godot) static GodotMethod!(Animation.InterpolationType, int) _GODOT_track_get_interpolation_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_interpolation_type") = _GODOT_track_get_interpolation_type;
	Animation.InterpolationType track_get_interpolation_type(in int idx) const
	{
		_GODOT_track_get_interpolation_type.bind("Animation", "track_get_interpolation_type");
		return ptrcall!(Animation.InterpolationType)(_GODOT_track_get_interpolation_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_track_set_interpolation_loop_wrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_interpolation_loop_wrap") = _GODOT_track_set_interpolation_loop_wrap;
	void track_set_interpolation_loop_wrap(in int idx, in bool interpolation)
	{
		_GODOT_track_set_interpolation_loop_wrap.bind("Animation", "track_set_interpolation_loop_wrap");
		ptrcall!(void)(_GODOT_track_set_interpolation_loop_wrap, _godot_object, idx, interpolation);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_track_get_interpolation_loop_wrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_interpolation_loop_wrap") = _GODOT_track_get_interpolation_loop_wrap;
	bool track_get_interpolation_loop_wrap(in int idx) const
	{
		_GODOT_track_get_interpolation_loop_wrap.bind("Animation", "track_get_interpolation_loop_wrap");
		return ptrcall!(bool)(_GODOT_track_get_interpolation_loop_wrap, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Array, int, float) _GODOT_transform_track_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "transform_track_interpolate") = _GODOT_transform_track_interpolate;
	Array transform_track_interpolate(in int idx, in float time_sec) const
	{
		_GODOT_transform_track_interpolate.bind("Animation", "transform_track_interpolate");
		return ptrcall!(Array)(_GODOT_transform_track_interpolate, _godot_object, idx, time_sec);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_value_track_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "value_track_set_update_mode") = _GODOT_value_track_set_update_mode;
	void value_track_set_update_mode(in int idx, in int mode)
	{
		_GODOT_value_track_set_update_mode.bind("Animation", "value_track_set_update_mode");
		ptrcall!(void)(_GODOT_value_track_set_update_mode, _godot_object, idx, mode);
	}
	package(godot) static GodotMethod!(Animation.UpdateMode, int) _GODOT_value_track_get_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "value_track_get_update_mode") = _GODOT_value_track_get_update_mode;
	Animation.UpdateMode value_track_get_update_mode(in int idx) const
	{
		_GODOT_value_track_get_update_mode.bind("Animation", "value_track_get_update_mode");
		return ptrcall!(Animation.UpdateMode)(_GODOT_value_track_get_update_mode, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolIntArray, int, float, float) _GODOT_value_track_get_key_indices;
	package(godot) alias _GODOT_methodBindInfo(string name : "value_track_get_key_indices") = _GODOT_value_track_get_key_indices;
	PoolIntArray value_track_get_key_indices(in int idx, in float time_sec, in float delta) const
	{
		_GODOT_value_track_get_key_indices.bind("Animation", "value_track_get_key_indices");
		return ptrcall!(PoolIntArray)(_GODOT_value_track_get_key_indices, _godot_object, idx, time_sec, delta);
	}
	package(godot) static GodotMethod!(PoolIntArray, int, float, float) _GODOT_method_track_get_key_indices;
	package(godot) alias _GODOT_methodBindInfo(string name : "method_track_get_key_indices") = _GODOT_method_track_get_key_indices;
	PoolIntArray method_track_get_key_indices(in int idx, in float time_sec, in float delta) const
	{
		_GODOT_method_track_get_key_indices.bind("Animation", "method_track_get_key_indices");
		return ptrcall!(PoolIntArray)(_GODOT_method_track_get_key_indices, _godot_object, idx, time_sec, delta);
	}
	package(godot) static GodotMethod!(String, int, int) _GODOT_method_track_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "method_track_get_name") = _GODOT_method_track_get_name;
	String method_track_get_name(in int idx, in int key_idx) const
	{
		_GODOT_method_track_get_name.bind("Animation", "method_track_get_name");
		return ptrcall!(String)(_GODOT_method_track_get_name, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(Array, int, int) _GODOT_method_track_get_params;
	package(godot) alias _GODOT_methodBindInfo(string name : "method_track_get_params") = _GODOT_method_track_get_params;
	Array method_track_get_params(in int idx, in int key_idx) const
	{
		_GODOT_method_track_get_params.bind("Animation", "method_track_get_params");
		return ptrcall!(Array)(_GODOT_method_track_get_params, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	void set_length(in float time_sec)
	{
		_GODOT_set_length.bind("Animation", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, time_sec);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	float get_length() const
	{
		_GODOT_get_length.bind("Animation", "get_length");
		return ptrcall!(float)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	void set_loop(in bool enabled)
	{
		_GODOT_set_loop.bind("Animation", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	bool has_loop() const
	{
		_GODOT_has_loop.bind("Animation", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_step") = _GODOT_set_step;
	void set_step(in float size_sec)
	{
		_GODOT_set_step.bind("Animation", "set_step");
		ptrcall!(void)(_GODOT_set_step, _godot_object, size_sec);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	float get_step() const
	{
		_GODOT_get_step.bind("Animation", "get_step");
		return ptrcall!(float)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("Animation", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
