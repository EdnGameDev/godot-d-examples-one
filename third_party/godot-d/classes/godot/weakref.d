module godot.weakref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct WeakRef
{
	static immutable string _GODOT_internal_name = "WeakRef";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in WeakRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WeakRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WeakRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("WeakRef");
		if(constructor is null) return typeof(this).init;
		return cast(WeakRef)(constructor());
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_ref;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ref") = _GODOT_get_ref;
	Variant get_ref() const
	{
		_GODOT_get_ref.bind("WeakRef", "get_ref");
		return ptrcall!(Variant)(_GODOT_get_ref, _godot_object);
	}
}
