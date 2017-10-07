module godot.reference;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
@GodotBaseClass struct Reference
{
	static immutable string _GODOT_internal_name = "Reference";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Reference other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Reference opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Reference _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Reference");
		if(constructor is null) return typeof(this).init;
		return cast(Reference)(constructor());
	}
	package(godot) static GodotMethod!(bool) _GODOT_init_ref;
	package(godot) alias _GODOT_methodBindInfo(string name : "init_ref") = _GODOT_init_ref;
	bool init_ref()
	{
		_GODOT_init_ref.bind("Reference", "init_ref");
		return ptrcall!(bool)(_GODOT_init_ref, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_reference;
	package(godot) alias _GODOT_methodBindInfo(string name : "reference") = _GODOT_reference;
	bool reference()
	{
		_GODOT_reference.bind("Reference", "reference");
		return ptrcall!(bool)(_GODOT_reference, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_unreference;
	package(godot) alias _GODOT_methodBindInfo(string name : "unreference") = _GODOT_unreference;
	bool unreference()
	{
		_GODOT_unreference.bind("Reference", "unreference");
		return ptrcall!(bool)(_GODOT_unreference, _godot_object);
	}
}
