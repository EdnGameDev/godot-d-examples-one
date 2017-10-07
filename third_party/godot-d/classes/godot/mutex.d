module godot.mutex;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Mutex
{
	static immutable string _GODOT_internal_name = "_Mutex";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Mutex other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Mutex opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Mutex _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Mutex");
		if(constructor is null) return typeof(this).init;
		return cast(Mutex)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "lock") = _GODOT_lock;
	void lock()
	{
		_GODOT_lock.bind("_Mutex", "lock");
		ptrcall!(void)(_GODOT_lock, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_try_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "try_lock") = _GODOT_try_lock;
	GodotError try_lock()
	{
		_GODOT_try_lock.bind("_Mutex", "try_lock");
		return ptrcall!(GodotError)(_GODOT_try_lock, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unlock;
	package(godot) alias _GODOT_methodBindInfo(string name : "unlock") = _GODOT_unlock;
	void unlock()
	{
		_GODOT_unlock.bind("_Mutex", "unlock");
		ptrcall!(void)(_GODOT_unlock, _godot_object);
	}
}
