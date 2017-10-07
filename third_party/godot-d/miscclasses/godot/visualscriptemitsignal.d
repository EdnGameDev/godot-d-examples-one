module godot.visualscriptemitsignal;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptEmitSignal
{
	static immutable string _GODOT_internal_name = "VisualScriptEmitSignal";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptEmitSignal other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptEmitSignal opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptEmitSignal _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptEmitSignal");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEmitSignal)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_signal") = _GODOT_set_signal;
	void set_signal(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_signal.bind("VisualScriptEmitSignal", "set_signal");
		ptrcall!(void)(_GODOT_set_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal") = _GODOT_get_signal;
	String get_signal() const
	{
		_GODOT_get_signal.bind("VisualScriptEmitSignal", "get_signal");
		return ptrcall!(String)(_GODOT_get_signal, _godot_object);
	}
}
