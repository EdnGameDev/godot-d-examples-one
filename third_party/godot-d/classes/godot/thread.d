module godot.thread;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Thread
{
	static immutable string _GODOT_internal_name = "_Thread";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Thread other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Thread opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Thread _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Thread");
		if(constructor is null) return typeof(this).init;
		return cast(Thread)(constructor());
	}
	enum Priority : int
	{
		PRIORITY_HIGH = 2,
		PRIORITY_LOW = 0,
		PRIORITY_NORMAL = 1,
	}
	enum int PRIORITY_HIGH = 2;
	enum int PRIORITY_LOW = 0;
	enum int PRIORITY_NORMAL = 1;
	package(godot) static GodotMethod!(GodotError, GodotObject, String, Variant, int) _GODOT_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "start") = _GODOT_start;
	GodotError start(StringArg1, VariantArg2)(in GodotObject instance, in StringArg1 method, in VariantArg2 userdata = Variant.nil, in int priority = 1)
	{
		_GODOT_start.bind("_Thread", "start");
		return ptrcall!(GodotError)(_GODOT_start, _godot_object, instance, method, userdata, priority);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_id") = _GODOT_get_id;
	String get_id() const
	{
		_GODOT_get_id.bind("_Thread", "get_id");
		return ptrcall!(String)(_GODOT_get_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	bool is_active() const
	{
		_GODOT_is_active.bind("_Thread", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_wait_to_finish;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait_to_finish") = _GODOT_wait_to_finish;
	Variant wait_to_finish()
	{
		_GODOT_wait_to_finish.bind("_Thread", "wait_to_finish");
		return ptrcall!(Variant)(_GODOT_wait_to_finish, _godot_object);
	}
}
