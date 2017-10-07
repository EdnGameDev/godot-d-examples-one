module godot.visualscriptbuiltinfunc;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptBuiltinFunc
{
	static immutable string _GODOT_internal_name = "VisualScriptBuiltinFunc";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptBuiltinFunc other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptBuiltinFunc opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptBuiltinFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptBuiltinFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptBuiltinFunc)(constructor());
	}
	enum BuiltinFunc : int
	{
		FUNC_MAX = 57,
		MATH_TAN = 2,
		MATH_EXP = 20,
		MATH_LERP = 26,
		MATH_SEED = 32,
		FUNC_FUNCREF = 43,
		MATH_COS = 1,
		MATH_ABS = 16,
		MATH_DB2LINEAR = 37,
		MATH_ASIN = 6,
		MATH_DECIMALS = 24,
		MATH_ISINF = 22,
		LOGIC_NEAREST_PO2 = 41,
		MATH_RAD2DEG = 35,
		MATH_RANDF = 30,
		MATH_CEIL = 14,
		MATH_SQRT = 10,
		COLORN = 56,
		MATH_LOG = 19,
		LOGIC_CLAMP = 40,
		TEXT_PRINT = 49,
		TEXT_CHAR = 47,
		LOGIC_MAX = 38,
		MATH_TANH = 5,
		MATH_ATAN2 = 9,
		MATH_RANDOMIZE = 28,
		VAR_TO_STR = 52,
		STR_TO_VAR = 53,
		MATH_FPOSMOD = 12,
		MATH_ISNAN = 21,
		TEXT_PRINTRAW = 51,
		MATH_RANDSEED = 33,
		MATH_FMOD = 11,
		MATH_ACOS = 7,
		MATH_SIGN = 17,
		BYTES_TO_VAR = 55,
		MATH_EASE = 23,
		MATH_RANDOM = 31,
		MATH_ATAN = 8,
		MATH_ROUND = 15,
		MATH_RAND = 29,
		TYPE_OF = 45,
		MATH_SINH = 3,
		TYPE_CONVERT = 44,
		MATH_POW = 18,
		MATH_STEPIFY = 25,
		MATH_DEG2RAD = 34,
		TEXT_STR = 48,
		TEXT_PRINTERR = 50,
		LOGIC_MIN = 39,
		MATH_COSH = 4,
		MATH_SIN = 0,
		MATH_DECTIME = 27,
		VAR_TO_BYTES = 54,
		MATH_LINEAR2DB = 36,
		MATH_FLOOR = 13,
		OBJ_WEAKREF = 42,
		TYPE_EXISTS = 46,
	}
	enum int FUNC_MAX = 57;
	enum int MATH_TAN = 2;
	enum int MATH_EXP = 20;
	enum int MATH_LERP = 26;
	enum int MATH_SEED = 32;
	enum int FUNC_FUNCREF = 43;
	enum int MATH_COS = 1;
	enum int MATH_ABS = 16;
	enum int MATH_DB2LINEAR = 37;
	enum int MATH_ASIN = 6;
	enum int MATH_DECIMALS = 24;
	enum int MATH_ISINF = 22;
	enum int LOGIC_NEAREST_PO2 = 41;
	enum int MATH_RAD2DEG = 35;
	enum int MATH_RANDF = 30;
	enum int MATH_CEIL = 14;
	enum int MATH_SQRT = 10;
	enum int COLORN = 56;
	enum int MATH_LOG = 19;
	enum int LOGIC_CLAMP = 40;
	enum int TEXT_PRINT = 49;
	enum int TEXT_CHAR = 47;
	enum int LOGIC_MAX = 38;
	enum int MATH_TANH = 5;
	enum int MATH_ATAN2 = 9;
	enum int MATH_RANDOMIZE = 28;
	enum int VAR_TO_STR = 52;
	enum int STR_TO_VAR = 53;
	enum int MATH_FPOSMOD = 12;
	enum int MATH_ISNAN = 21;
	enum int TEXT_PRINTRAW = 51;
	enum int MATH_RANDSEED = 33;
	enum int MATH_FMOD = 11;
	enum int MATH_ACOS = 7;
	enum int MATH_SIGN = 17;
	enum int BYTES_TO_VAR = 55;
	enum int MATH_EASE = 23;
	enum int MATH_RANDOM = 31;
	enum int MATH_ATAN = 8;
	enum int MATH_ROUND = 15;
	enum int MATH_RAND = 29;
	enum int TYPE_OF = 45;
	enum int MATH_SINH = 3;
	enum int TYPE_CONVERT = 44;
	enum int MATH_POW = 18;
	enum int MATH_STEPIFY = 25;
	enum int MATH_DEG2RAD = 34;
	enum int TEXT_STR = 48;
	enum int TEXT_PRINTERR = 50;
	enum int LOGIC_MIN = 39;
	enum int MATH_COSH = 4;
	enum int MATH_SIN = 0;
	enum int MATH_DECTIME = 27;
	enum int VAR_TO_BYTES = 54;
	enum int MATH_LINEAR2DB = 36;
	enum int MATH_FLOOR = 13;
	enum int OBJ_WEAKREF = 42;
	enum int TYPE_EXISTS = 46;
	package(godot) static GodotMethod!(void, int) _GODOT_set_func;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_func") = _GODOT_set_func;
	void set_func(in int which)
	{
		_GODOT_set_func.bind("VisualScriptBuiltinFunc", "set_func");
		ptrcall!(void)(_GODOT_set_func, _godot_object, which);
	}
	package(godot) static GodotMethod!(VisualScriptBuiltinFunc.BuiltinFunc) _GODOT_get_func;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_func") = _GODOT_get_func;
	VisualScriptBuiltinFunc.BuiltinFunc get_func()
	{
		_GODOT_get_func.bind("VisualScriptBuiltinFunc", "get_func");
		return ptrcall!(VisualScriptBuiltinFunc.BuiltinFunc)(_GODOT_get_func, _godot_object);
	}
}
