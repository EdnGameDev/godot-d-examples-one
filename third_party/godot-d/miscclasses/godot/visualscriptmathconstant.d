module godot.visualscriptmathconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptMathConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptMathConstant";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptMathConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptMathConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptMathConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptMathConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptMathConstant)(constructor());
	}
	enum MathConstant : int
	{
		MATH_CONSTANT_HALF_PI = 3,
		MATH_CONSTANT_NAN = 7,
		MATH_CONSTANT_2PI = 2,
		MATH_CONSTANT_E = 4,
		MATH_CONSTANT_ONE = 0,
		MATH_CONSTANT_SQRT2 = 5,
		MATH_CONSTANT_INF = 6,
		MATH_CONSTANT_PI = 1,
		MATH_CONSTANT_MAX = 8,
	}
	enum int MATH_CONSTANT_HALF_PI = 3;
	enum int MATH_CONSTANT_NAN = 7;
	enum int MATH_CONSTANT_2PI = 2;
	enum int MATH_CONSTANT_E = 4;
	enum int MATH_CONSTANT_ONE = 0;
	enum int MATH_CONSTANT_SQRT2 = 5;
	enum int MATH_CONSTANT_INF = 6;
	enum int MATH_CONSTANT_PI = 1;
	enum int MATH_CONSTANT_MAX = 8;
	package(godot) static GodotMethod!(void, int) _GODOT_set_math_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_math_constant") = _GODOT_set_math_constant;
	void set_math_constant(in int which)
	{
		_GODOT_set_math_constant.bind("VisualScriptMathConstant", "set_math_constant");
		ptrcall!(void)(_GODOT_set_math_constant, _godot_object, which);
	}
	package(godot) static GodotMethod!(VisualScriptMathConstant.MathConstant) _GODOT_get_math_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_math_constant") = _GODOT_get_math_constant;
	VisualScriptMathConstant.MathConstant get_math_constant()
	{
		_GODOT_get_math_constant.bind("VisualScriptMathConstant", "get_math_constant");
		return ptrcall!(VisualScriptMathConstant.MathConstant)(_GODOT_get_math_constant, _godot_object);
	}
}
