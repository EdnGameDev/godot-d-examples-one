module godot.visualscriptconstructor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptConstructor
{
	static immutable string _GODOT_internal_name = "VisualScriptConstructor";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptConstructor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptConstructor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptConstructor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptConstructor");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptConstructor)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_constructor_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constructor_type") = _GODOT_set_constructor_type;
	void set_constructor_type(in int type)
	{
		_GODOT_set_constructor_type.bind("VisualScriptConstructor", "set_constructor_type");
		ptrcall!(void)(_GODOT_set_constructor_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_constructor_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constructor_type") = _GODOT_get_constructor_type;
	Variant.Type get_constructor_type() const
	{
		_GODOT_get_constructor_type.bind("VisualScriptConstructor", "get_constructor_type");
		return ptrcall!(Variant.Type)(_GODOT_get_constructor_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_set_constructor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constructor") = _GODOT_set_constructor;
	void set_constructor(in Dictionary constructor)
	{
		_GODOT_set_constructor.bind("VisualScriptConstructor", "set_constructor");
		ptrcall!(void)(_GODOT_set_constructor, _godot_object, constructor);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_constructor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constructor") = _GODOT_get_constructor;
	Dictionary get_constructor() const
	{
		_GODOT_get_constructor.bind("VisualScriptConstructor", "get_constructor");
		return ptrcall!(Dictionary)(_GODOT_get_constructor, _godot_object);
	}
}
