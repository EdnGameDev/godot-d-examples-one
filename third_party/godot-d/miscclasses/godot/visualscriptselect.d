module godot.visualscriptselect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptSelect
{
	static immutable string _GODOT_internal_name = "VisualScriptSelect";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptSelect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSelect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSelect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptSelect");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSelect)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_typed") = _GODOT_set_typed;
	void set_typed(in int type)
	{
		_GODOT_set_typed.bind("VisualScriptSelect", "set_typed");
		ptrcall!(void)(_GODOT_set_typed, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_typed") = _GODOT_get_typed;
	Variant.Type get_typed() const
	{
		_GODOT_get_typed.bind("VisualScriptSelect", "get_typed");
		return ptrcall!(Variant.Type)(_GODOT_get_typed, _godot_object);
	}
}
