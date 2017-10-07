module godot.shader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.texture;
@GodotBaseClass struct Shader
{
	static immutable string _GODOT_internal_name = "Shader";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Shader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Shader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Shader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Shader");
		if(constructor is null) return typeof(this).init;
		return cast(Shader)(constructor());
	}
	enum Mode : int
	{
		MODE_SPATIAL = 0,
		MODE_PARTICLES = 2,
		MODE_CANVAS_ITEM = 1,
	}
	enum int MODE_SPATIAL = 0;
	enum int MODE_PARTICLES = 2;
	enum int MODE_CANVAS_ITEM = 1;
	package(godot) static GodotMethod!(Shader.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	Shader.Mode get_mode() const
	{
		_GODOT_get_mode.bind("Shader", "get_mode");
		return ptrcall!(Shader.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_code") = _GODOT_set_code;
	void set_code(StringArg0)(in StringArg0 code)
	{
		_GODOT_set_code.bind("Shader", "set_code");
		ptrcall!(void)(_GODOT_set_code, _godot_object, code);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_code") = _GODOT_get_code;
	String get_code() const
	{
		_GODOT_get_code.bind("Shader", "get_code");
		return ptrcall!(String)(_GODOT_get_code, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Texture) _GODOT_set_default_texture_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_texture_param") = _GODOT_set_default_texture_param;
	void set_default_texture_param(StringArg0)(in StringArg0 param, in Texture texture)
	{
		_GODOT_set_default_texture_param.bind("Shader", "set_default_texture_param");
		ptrcall!(void)(_GODOT_set_default_texture_param, _godot_object, param, texture);
	}
	package(godot) static GodotMethod!(Texture, String) _GODOT_get_default_texture_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_texture_param") = _GODOT_get_default_texture_param;
	Texture get_default_texture_param(StringArg0)(in StringArg0 param) const
	{
		_GODOT_get_default_texture_param.bind("Shader", "get_default_texture_param");
		return ptrcall!(Texture)(_GODOT_get_default_texture_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_param") = _GODOT_has_param;
	bool has_param(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_param.bind("Shader", "has_param");
		return ptrcall!(bool)(_GODOT_has_param, _godot_object, name);
	}
}
