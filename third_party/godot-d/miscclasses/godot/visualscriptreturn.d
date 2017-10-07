module godot.visualscriptreturn;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptReturn
{
	static immutable string _GODOT_internal_name = "VisualScriptReturn";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptReturn other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptReturn opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptReturn _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptReturn");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptReturn)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_return_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_return_type") = _GODOT_set_return_type;
	void set_return_type(in int type)
	{
		_GODOT_set_return_type.bind("VisualScriptReturn", "set_return_type");
		ptrcall!(void)(_GODOT_set_return_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_return_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_return_type") = _GODOT_get_return_type;
	Variant.Type get_return_type() const
	{
		_GODOT_get_return_type.bind("VisualScriptReturn", "get_return_type");
		return ptrcall!(Variant.Type)(_GODOT_get_return_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_return_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_return_value") = _GODOT_set_enable_return_value;
	void set_enable_return_value(in bool enable)
	{
		_GODOT_set_enable_return_value.bind("VisualScriptReturn", "set_enable_return_value");
		ptrcall!(void)(_GODOT_set_enable_return_value, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_return_value_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_return_value_enabled") = _GODOT_is_return_value_enabled;
	bool is_return_value_enabled() const
	{
		_GODOT_is_return_value_enabled.bind("VisualScriptReturn", "is_return_value_enabled");
		return ptrcall!(bool)(_GODOT_is_return_value_enabled, _godot_object);
	}
}
