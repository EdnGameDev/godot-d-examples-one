module godot.spatialvelocitytracker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct SpatialVelocityTracker
{
	static immutable string _GODOT_internal_name = "SpatialVelocityTracker";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SpatialVelocityTracker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpatialVelocityTracker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpatialVelocityTracker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SpatialVelocityTracker");
		if(constructor is null) return typeof(this).init;
		return cast(SpatialVelocityTracker)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_track_fixed_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_track_fixed_step") = _GODOT_set_track_fixed_step;
	void set_track_fixed_step(in bool enable)
	{
		_GODOT_set_track_fixed_step.bind("SpatialVelocityTracker", "set_track_fixed_step");
		ptrcall!(void)(_GODOT_set_track_fixed_step, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tracking_fixed_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tracking_fixed_step") = _GODOT_is_tracking_fixed_step;
	bool is_tracking_fixed_step() const
	{
		_GODOT_is_tracking_fixed_step.bind("SpatialVelocityTracker", "is_tracking_fixed_step");
		return ptrcall!(bool)(_GODOT_is_tracking_fixed_step, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_update_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_position") = _GODOT_update_position;
	void update_position(in Vector3 position)
	{
		_GODOT_update_position.bind("SpatialVelocityTracker", "update_position");
		ptrcall!(void)(_GODOT_update_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_tracked_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracked_linear_velocity") = _GODOT_get_tracked_linear_velocity;
	Vector3 get_tracked_linear_velocity() const
	{
		_GODOT_get_tracked_linear_velocity.bind("SpatialVelocityTracker", "get_tracked_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_tracked_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset") = _GODOT_reset;
	void reset(in Vector3 position)
	{
		_GODOT_reset.bind("SpatialVelocityTracker", "reset");
		ptrcall!(void)(_GODOT_reset, _godot_object, position);
	}
}
