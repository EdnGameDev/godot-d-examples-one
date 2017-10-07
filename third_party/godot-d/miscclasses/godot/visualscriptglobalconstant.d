module godot.visualscriptglobalconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptGlobalConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptGlobalConstant";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptGlobalConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptGlobalConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptGlobalConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptGlobalConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptGlobalConstant)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_global_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_constant") = _GODOT_set_global_constant;
	void set_global_constant(in int index)
	{
		_GODOT_set_global_constant.bind("VisualScriptGlobalConstant", "set_global_constant");
		ptrcall!(void)(_GODOT_set_global_constant, _godot_object, index);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_global_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_constant") = _GODOT_get_global_constant;
	int get_global_constant()
	{
		_GODOT_get_global_constant.bind("VisualScriptGlobalConstant", "get_global_constant");
		return ptrcall!(int)(_GODOT_get_global_constant, _godot_object);
	}
}
