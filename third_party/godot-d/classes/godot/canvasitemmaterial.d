module godot.canvasitemmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.material;
@GodotBaseClass struct CanvasItemMaterial
{
	static immutable string _GODOT_internal_name = "CanvasItemMaterial";
public:
	union { godot_object _godot_object; Material base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CanvasItemMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasItemMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasItemMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CanvasItemMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItemMaterial)(constructor());
	}
	enum LightMode : int
	{
		LIGHT_MODE_LIGHT_ONLY = 2,
		LIGHT_MODE_NORMAL = 0,
		LIGHT_MODE_UNSHADED = 1,
	}
	enum BlendMode : int
	{
		BLEND_MODE_SUB = 2,
		BLEND_MODE_MIX = 0,
		BLEND_MODE_MUL = 3,
		BLEND_MODE_ADD = 1,
		BLEND_MODE_PREMULT_ALPHA = 4,
	}
	enum int BLEND_MODE_MUL = 3;
	enum int BLEND_MODE_ADD = 1;
	enum int BLEND_MODE_SUB = 2;
	enum int LIGHT_MODE_LIGHT_ONLY = 2;
	enum int BLEND_MODE_MIX = 0;
	enum int LIGHT_MODE_NORMAL = 0;
	enum int LIGHT_MODE_UNSHADED = 1;
	enum int BLEND_MODE_PREMULT_ALPHA = 4;
	package(godot) static GodotMethod!(void, int) _GODOT_set_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_mode") = _GODOT_set_blend_mode;
	void set_blend_mode(in int blend_mode)
	{
		_GODOT_set_blend_mode.bind("CanvasItemMaterial", "set_blend_mode");
		ptrcall!(void)(_GODOT_set_blend_mode, _godot_object, blend_mode);
	}
	package(godot) static GodotMethod!(CanvasItemMaterial.BlendMode) _GODOT_get_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_mode") = _GODOT_get_blend_mode;
	CanvasItemMaterial.BlendMode get_blend_mode() const
	{
		_GODOT_get_blend_mode.bind("CanvasItemMaterial", "get_blend_mode");
		return ptrcall!(CanvasItemMaterial.BlendMode)(_GODOT_get_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_light_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_light_mode") = _GODOT_set_light_mode;
	void set_light_mode(in int light_mode)
	{
		_GODOT_set_light_mode.bind("CanvasItemMaterial", "set_light_mode");
		ptrcall!(void)(_GODOT_set_light_mode, _godot_object, light_mode);
	}
	package(godot) static GodotMethod!(CanvasItemMaterial.LightMode) _GODOT_get_light_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_light_mode") = _GODOT_get_light_mode;
	CanvasItemMaterial.LightMode get_light_mode() const
	{
		_GODOT_get_light_mode.bind("CanvasItemMaterial", "get_light_mode");
		return ptrcall!(CanvasItemMaterial.LightMode)(_GODOT_get_light_mode, _godot_object);
	}
}
