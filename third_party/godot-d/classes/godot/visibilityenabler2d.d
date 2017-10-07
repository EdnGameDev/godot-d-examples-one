module godot.visibilityenabler2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visibilitynotifier2d;
@GodotBaseClass struct VisibilityEnabler2D
{
	static immutable string _GODOT_internal_name = "VisibilityEnabler2D";
public:
	union { godot_object _godot_object; VisibilityNotifier2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisibilityEnabler2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityEnabler2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisibilityEnabler2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisibilityEnabler2D");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityEnabler2D)(constructor());
	}
	enum Enabler : int
	{
		ENABLER_PAUSE_PARTICLES = 2,
		ENABLER_PARENT_PROCESS = 3,
		ENABLER_PAUSE_ANIMATIONS = 0,
		ENABLER_MAX = 6,
		ENABLER_FREEZE_BODIES = 1,
		ENABLER_PARENT_FIXED_PROCESS = 4,
		ENABLER_PAUSE_ANIMATED_SPRITES = 5,
	}
	enum int ENABLER_PAUSE_PARTICLES = 2;
	enum int ENABLER_PARENT_PROCESS = 3;
	enum int ENABLER_PAUSE_ANIMATIONS = 0;
	enum int ENABLER_MAX = 6;
	enum int ENABLER_FREEZE_BODIES = 1;
	enum int ENABLER_PARENT_FIXED_PROCESS = 4;
	enum int ENABLER_PAUSE_ANIMATED_SPRITES = 5;
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_enabler;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabler") = _GODOT_set_enabler;
	void set_enabler(in int enabler, in bool enabled)
	{
		_GODOT_set_enabler.bind("VisibilityEnabler2D", "set_enabler");
		ptrcall!(void)(_GODOT_set_enabler, _godot_object, enabler, enabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_is_enabler_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabler_enabled") = _GODOT_is_enabler_enabled;
	bool is_enabler_enabled(in int enabler) const
	{
		_GODOT_is_enabler_enabled.bind("VisibilityEnabler2D", "is_enabler_enabled");
		return ptrcall!(bool)(_GODOT_is_enabler_enabled, _godot_object, enabler);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__node_removed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_removed") = _GODOT__node_removed;
	void _node_removed(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
