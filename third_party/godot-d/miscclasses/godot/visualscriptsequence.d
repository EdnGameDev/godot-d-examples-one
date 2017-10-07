module godot.visualscriptsequence;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptSequence
{
	static immutable string _GODOT_internal_name = "VisualScriptSequence";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptSequence other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSequence opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSequence _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptSequence");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSequence)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_steps") = _GODOT_set_steps;
	void set_steps(in int steps)
	{
		_GODOT_set_steps.bind("VisualScriptSequence", "set_steps");
		ptrcall!(void)(_GODOT_set_steps, _godot_object, steps);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_steps") = _GODOT_get_steps;
	int get_steps() const
	{
		_GODOT_get_steps.bind("VisualScriptSequence", "get_steps");
		return ptrcall!(int)(_GODOT_get_steps, _godot_object);
	}
}
