module godot.semaphore;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Semaphore
{
	static immutable string _GODOT_internal_name = "_Semaphore";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Semaphore other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Semaphore opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Semaphore _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Semaphore");
		if(constructor is null) return typeof(this).init;
		return cast(Semaphore)(constructor());
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_wait;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait") = _GODOT_wait;
	GodotError wait()
	{
		_GODOT_wait.bind("_Semaphore", "wait");
		return ptrcall!(GodotError)(_GODOT_wait, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_post;
	package(godot) alias _GODOT_methodBindInfo(string name : "post") = _GODOT_post;
	GodotError post()
	{
		_GODOT_post.bind("_Semaphore", "post");
		return ptrcall!(GodotError)(_GODOT_post, _godot_object);
	}
}
