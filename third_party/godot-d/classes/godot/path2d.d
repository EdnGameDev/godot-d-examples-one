module godot.path2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.curve2d;
@GodotBaseClass struct Path2D
{
	static immutable string _GODOT_internal_name = "Path2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Path2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Path2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Path2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Path2D");
		if(constructor is null) return typeof(this).init;
		return cast(Path2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Curve2D) _GODOT_set_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_curve") = _GODOT_set_curve;
	void set_curve(in Curve2D curve)
	{
		_GODOT_set_curve.bind("Path2D", "set_curve");
		ptrcall!(void)(_GODOT_set_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(Curve2D) _GODOT_get_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_curve") = _GODOT_get_curve;
	Curve2D get_curve() const
	{
		_GODOT_get_curve.bind("Path2D", "get_curve");
		return ptrcall!(Curve2D)(_GODOT_get_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__curve_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_curve_changed") = _GODOT__curve_changed;
	void _curve_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_curve_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
