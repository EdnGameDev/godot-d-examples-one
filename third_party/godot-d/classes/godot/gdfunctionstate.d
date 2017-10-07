module godot.gdfunctionstate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct GDFunctionState
{
	static immutable string _GODOT_internal_name = "GDFunctionState";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GDFunctionState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDFunctionState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GDFunctionState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDFunctionState");
		if(constructor is null) return typeof(this).init;
		return cast(GDFunctionState)(constructor());
	}
	package(godot) static GodotMethod!(Variant, Variant) _GODOT_resume;
	package(godot) alias _GODOT_methodBindInfo(string name : "resume") = _GODOT_resume;
	Variant resume(VariantArg0)(in VariantArg0 arg = Variant.nil)
	{
		_GODOT_resume.bind("GDFunctionState", "resume");
		return ptrcall!(Variant)(_GODOT_resume, _godot_object, arg);
	}
	package(godot) static GodotMethod!(bool, bool) _GODOT_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_valid") = _GODOT_is_valid;
	bool is_valid(in bool extended_check = false) const
	{
		_GODOT_is_valid.bind("GDFunctionState", "is_valid");
		return ptrcall!(bool)(_GODOT_is_valid, _godot_object, extended_check);
	}
	package(godot) static GodotMethod!(Variant, GodotVarArgs) _GODOT__signal_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_signal_callback") = _GODOT__signal_callback;
	Variant _signal_callback(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("_signal_callback");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
}
