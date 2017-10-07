module godot.arvrpositionaltracker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.arvrserver;
@GodotBaseClass struct ARVRPositionalTracker
{
	static immutable string _GODOT_internal_name = "ARVRPositionalTracker";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRPositionalTracker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRPositionalTracker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRPositionalTracker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRPositionalTracker");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRPositionalTracker)(constructor());
	}
	enum TrackerHand : int
	{
		TRACKER_HAND_UNKNOWN = 0,
		TRACKER_LEFT_HAND = 1,
		TRACKER_RIGHT_HAND = 2,
	}
	enum int TRACKER_HAND_UNKNOWN = 0;
	enum int TRACKER_LEFT_HAND = 1;
	enum int TRACKER_RIGHT_HAND = 2;
	package(godot) static GodotMethod!(ARVRServer.TrackerType) _GODOT_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_type") = _GODOT_get_type;
	ARVRServer.TrackerType get_type() const
	{
		_GODOT_get_type.bind("ARVRPositionalTracker", "get_type");
		return ptrcall!(ARVRServer.TrackerType)(_GODOT_get_type, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	String get_name() const
	{
		_GODOT_get_name.bind("ARVRPositionalTracker", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_joy_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_id") = _GODOT_get_joy_id;
	int get_joy_id() const
	{
		_GODOT_get_joy_id.bind("ARVRPositionalTracker", "get_joy_id");
		return ptrcall!(int)(_GODOT_get_joy_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_tracks_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracks_orientation") = _GODOT_get_tracks_orientation;
	bool get_tracks_orientation() const
	{
		_GODOT_get_tracks_orientation.bind("ARVRPositionalTracker", "get_tracks_orientation");
		return ptrcall!(bool)(_GODOT_get_tracks_orientation, _godot_object);
	}
	package(godot) static GodotMethod!(Basis) _GODOT_get_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_orientation") = _GODOT_get_orientation;
	Basis get_orientation() const
	{
		_GODOT_get_orientation.bind("ARVRPositionalTracker", "get_orientation");
		return ptrcall!(Basis)(_GODOT_get_orientation, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_tracks_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracks_position") = _GODOT_get_tracks_position;
	bool get_tracks_position() const
	{
		_GODOT_get_tracks_position.bind("ARVRPositionalTracker", "get_tracks_position");
		return ptrcall!(bool)(_GODOT_get_tracks_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	Vector3 get_position() const
	{
		_GODOT_get_position.bind("ARVRPositionalTracker", "get_position");
		return ptrcall!(Vector3)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRPositionalTracker.TrackerHand) _GODOT_get_hand;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hand") = _GODOT_get_hand;
	ARVRPositionalTracker.TrackerHand get_hand() const
	{
		_GODOT_get_hand.bind("ARVRPositionalTracker", "get_hand");
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(_GODOT_get_hand, _godot_object);
	}
	package(godot) static GodotMethod!(Transform, bool) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform get_transform(in bool adjust_by_reference_frame) const
	{
		_GODOT_get_transform.bind("ARVRPositionalTracker", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object, adjust_by_reference_frame);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__set_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_type") = _GODOT__set_type;
	void _set_type(in int type)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type);
		String _GODOT_method_name = String("_set_type");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_name") = _GODOT__set_name;
	void _set_name(StringArg0)(in StringArg0 name)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(name);
		String _GODOT_method_name = String("_set_name");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__set_joy_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_joy_id") = _GODOT__set_joy_id;
	void _set_joy_id(in int joy_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(joy_id);
		String _GODOT_method_name = String("_set_joy_id");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Basis) _GODOT__set_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_orientation") = _GODOT__set_orientation;
	void _set_orientation(in Basis orientation)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(orientation);
		String _GODOT_method_name = String("_set_orientation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT__set_rw_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_rw_position") = _GODOT__set_rw_position;
	void _set_rw_position(in Vector3 rw_position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rw_position);
		String _GODOT_method_name = String("_set_rw_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
