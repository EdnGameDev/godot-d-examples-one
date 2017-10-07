module godot.lineshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.shape2d;
@GodotBaseClass struct LineShape2D
{
	static immutable string _GODOT_internal_name = "LineShape2D";
public:
	union { godot_object _godot_object; Shape2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in LineShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LineShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LineShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LineShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(LineShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal") = _GODOT_set_normal;
	void set_normal(in Vector2 normal)
	{
		_GODOT_set_normal.bind("LineShape2D", "set_normal");
		ptrcall!(void)(_GODOT_set_normal, _godot_object, normal);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal") = _GODOT_get_normal;
	Vector2 get_normal() const
	{
		_GODOT_get_normal.bind("LineShape2D", "get_normal");
		return ptrcall!(Vector2)(_GODOT_get_normal, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_d") = _GODOT_set_d;
	void set_d(in float d)
	{
		_GODOT_set_d.bind("LineShape2D", "set_d");
		ptrcall!(void)(_GODOT_set_d, _godot_object, d);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_d") = _GODOT_get_d;
	float get_d() const
	{
		_GODOT_get_d.bind("LineShape2D", "get_d");
		return ptrcall!(float)(_GODOT_get_d, _godot_object);
	}
}
