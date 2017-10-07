module godot.funcref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct FuncRef
{
	static immutable string _GODOT_internal_name = "FuncRef";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in FuncRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	FuncRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static FuncRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("FuncRef");
		if(constructor is null) return typeof(this).init;
		return cast(FuncRef)(constructor());
	}
	package(godot) static GodotMethod!(Variant, GodotVarArgs) _GODOT_call_func;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_func") = _GODOT_call_func;
	Variant call_func(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_func");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance") = _GODOT_set_instance;
	void set_instance(in GodotObject instance)
	{
		_GODOT_set_instance.bind("FuncRef", "set_instance");
		ptrcall!(void)(_GODOT_set_instance, _godot_object, instance);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_function") = _GODOT_set_function;
	void set_function(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_function.bind("FuncRef", "set_function");
		ptrcall!(void)(_GODOT_set_function, _godot_object, name);
	}
}
