module godot.visualscriptvariableget;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptVariableGet
{
	static immutable string _GODOT_internal_name = "VisualScriptVariableGet";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptVariableGet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptVariableGet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptVariableGet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptVariableGet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptVariableGet)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable") = _GODOT_set_variable;
	void set_variable(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_variable.bind("VisualScriptVariableGet", "set_variable");
		ptrcall!(void)(_GODOT_set_variable, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable") = _GODOT_get_variable;
	String get_variable() const
	{
		_GODOT_get_variable.bind("VisualScriptVariableGet", "get_variable");
		return ptrcall!(String)(_GODOT_get_variable, _godot_object);
	}
}
