module godot.curvetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.curve;
@GodotBaseClass struct CurveTexture
{
	static immutable string _GODOT_internal_name = "CurveTexture";
public:
	union { godot_object _godot_object; Texture base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CurveTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CurveTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CurveTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CurveTexture");
		if(constructor is null) return typeof(this).init;
		return cast(CurveTexture)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_width") = _GODOT_set_width;
	void set_width(in int width)
	{
		_GODOT_set_width.bind("CurveTexture", "set_width");
		ptrcall!(void)(_GODOT_set_width, _godot_object, width);
	}
	package(godot) static GodotMethod!(void, Curve) _GODOT_set_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_curve") = _GODOT_set_curve;
	void set_curve(in Curve curve)
	{
		_GODOT_set_curve.bind("CurveTexture", "set_curve");
		ptrcall!(void)(_GODOT_set_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(Curve) _GODOT_get_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_curve") = _GODOT_get_curve;
	Curve get_curve() const
	{
		_GODOT_get_curve.bind("CurveTexture", "get_curve");
		return ptrcall!(Curve)(_GODOT_get_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update") = _GODOT__update;
	void _update()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
