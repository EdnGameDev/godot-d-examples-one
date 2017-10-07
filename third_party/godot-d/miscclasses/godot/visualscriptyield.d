module godot.visualscriptyield;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptYield
{
	static immutable string _GODOT_internal_name = "VisualScriptYield";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptYield other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptYield opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptYield _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptYield");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptYield)(constructor());
	}
	enum YieldMode : int
	{
		YIELD_WAIT = 3,
		YIELD_FIXED_FRAME = 2,
		YIELD_FRAME = 1,
	}
	enum int YIELD_WAIT = 3;
	enum int YIELD_FIXED_FRAME = 2;
	enum int YIELD_FRAME = 1;
	package(godot) static GodotMethod!(void, int) _GODOT_set_yield_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_yield_mode") = _GODOT_set_yield_mode;
	void set_yield_mode(in int mode)
	{
		_GODOT_set_yield_mode.bind("VisualScriptYield", "set_yield_mode");
		ptrcall!(void)(_GODOT_set_yield_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptYield.YieldMode) _GODOT_get_yield_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_yield_mode") = _GODOT_get_yield_mode;
	VisualScriptYield.YieldMode get_yield_mode()
	{
		_GODOT_get_yield_mode.bind("VisualScriptYield", "get_yield_mode");
		return ptrcall!(VisualScriptYield.YieldMode)(_GODOT_get_yield_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wait_time") = _GODOT_set_wait_time;
	void set_wait_time(in float sec)
	{
		_GODOT_set_wait_time.bind("VisualScriptYield", "set_wait_time");
		ptrcall!(void)(_GODOT_set_wait_time, _godot_object, sec);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wait_time") = _GODOT_get_wait_time;
	float get_wait_time()
	{
		_GODOT_get_wait_time.bind("VisualScriptYield", "get_wait_time");
		return ptrcall!(float)(_GODOT_get_wait_time, _godot_object);
	}
}
