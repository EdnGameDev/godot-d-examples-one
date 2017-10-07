module godot.visualscriptoperator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptOperator
{
	static immutable string _GODOT_internal_name = "VisualScriptOperator";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptOperator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptOperator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptOperator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptOperator");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptOperator)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_operator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_operator") = _GODOT_set_operator;
	void set_operator(in int op)
	{
		_GODOT_set_operator.bind("VisualScriptOperator", "set_operator");
		ptrcall!(void)(_GODOT_set_operator, _godot_object, op);
	}
	package(godot) static GodotMethod!(Variant.Operator) _GODOT_get_operator;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_operator") = _GODOT_get_operator;
	Variant.Operator get_operator() const
	{
		_GODOT_get_operator.bind("VisualScriptOperator", "get_operator");
		return ptrcall!(Variant.Operator)(_GODOT_get_operator, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_typed") = _GODOT_set_typed;
	void set_typed(in int type)
	{
		_GODOT_set_typed.bind("VisualScriptOperator", "set_typed");
		ptrcall!(void)(_GODOT_set_typed, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_typed") = _GODOT_get_typed;
	Variant.Type get_typed() const
	{
		_GODOT_get_typed.bind("VisualScriptOperator", "get_typed");
		return ptrcall!(Variant.Type)(_GODOT_get_typed, _godot_object);
	}
}
