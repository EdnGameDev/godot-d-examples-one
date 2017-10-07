module godot.gradienttexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.gradient;
@GodotBaseClass struct GradientTexture
{
	static immutable string _GODOT_internal_name = "GradientTexture";
public:
	union { godot_object _godot_object; Texture base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GradientTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GradientTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GradientTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GradientTexture");
		if(constructor is null) return typeof(this).init;
		return cast(GradientTexture)(constructor());
	}
	package(godot) static GodotMethod!(void, Gradient) _GODOT_set_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gradient") = _GODOT_set_gradient;
	void set_gradient(in Gradient gradient)
	{
		_GODOT_set_gradient.bind("GradientTexture", "set_gradient");
		ptrcall!(void)(_GODOT_set_gradient, _godot_object, gradient);
	}
	package(godot) static GodotMethod!(Gradient) _GODOT_get_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gradient") = _GODOT_get_gradient;
	Gradient get_gradient() const
	{
		_GODOT_get_gradient.bind("GradientTexture", "get_gradient");
		return ptrcall!(Gradient)(_GODOT_get_gradient, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_width") = _GODOT_set_width;
	void set_width(in int width)
	{
		_GODOT_set_width.bind("GradientTexture", "set_width");
		ptrcall!(void)(_GODOT_set_width, _godot_object, width);
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
