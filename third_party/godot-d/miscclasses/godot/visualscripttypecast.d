module godot.visualscripttypecast;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptTypeCast
{
	static immutable string _GODOT_internal_name = "VisualScriptTypeCast";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptTypeCast other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptTypeCast opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptTypeCast _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptTypeCast");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptTypeCast)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	void set_base_type(StringArg0)(in StringArg0 type)
	{
		_GODOT_set_base_type.bind("VisualScriptTypeCast", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	String get_base_type() const
	{
		_GODOT_get_base_type.bind("VisualScriptTypeCast", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_script") = _GODOT_set_base_script;
	void set_base_script(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_base_script.bind("VisualScriptTypeCast", "set_base_script");
		ptrcall!(void)(_GODOT_set_base_script, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_script") = _GODOT_get_base_script;
	String get_base_script() const
	{
		_GODOT_get_base_script.bind("VisualScriptTypeCast", "get_base_script");
		return ptrcall!(String)(_GODOT_get_base_script, _godot_object);
	}
}
