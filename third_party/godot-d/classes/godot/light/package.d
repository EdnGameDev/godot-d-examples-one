module godot.light;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.visualinstance;
@GodotBaseClass struct Light
{
	static immutable string _GODOT_internal_name = "Light";
public:
	union { godot_object _godot_object; VisualInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Light other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Light opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Light _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Light");
		if(constructor is null) return typeof(this).init;
		return cast(Light)(constructor());
	}
	enum Param : int
	{
		PARAM_SPOT_ANGLE = 4,
		PARAM_SHADOW_MAX_DISTANCE = 7,
		PARAM_ENERGY = 0,
		PARAM_CONTACT_SHADOW_SIZE = 6,
		PARAM_ATTENUATION = 3,
		PARAM_SHADOW_SPLIT_1_OFFSET = 8,
		PARAM_SHADOW_SPLIT_2_OFFSET = 9,
		PARAM_SHADOW_NORMAL_BIAS = 11,
		PARAM_SHADOW_BIAS = 12,
		PARAM_RANGE = 2,
		PARAM_SHADOW_SPLIT_3_OFFSET = 10,
		PARAM_SPECULAR = 1,
		PARAM_SPOT_ATTENUATION = 5,
		PARAM_MAX = 14,
	}
	enum int PARAM_SPOT_ANGLE = 4;
	enum int PARAM_SHADOW_MAX_DISTANCE = 7;
	enum int PARAM_ENERGY = 0;
	enum int PARAM_CONTACT_SHADOW_SIZE = 6;
	enum int PARAM_ATTENUATION = 3;
	enum int PARAM_SHADOW_SPLIT_1_OFFSET = 8;
	enum int PARAM_SHADOW_SPLIT_2_OFFSET = 9;
	enum int PARAM_SHADOW_NORMAL_BIAS = 11;
	enum int PARAM_SHADOW_BIAS = 12;
	enum int PARAM_RANGE = 2;
	enum int PARAM_SHADOW_SPLIT_3_OFFSET = 10;
	enum int PARAM_SPECULAR = 1;
	enum int PARAM_SPOT_ATTENUATION = 5;
	enum int PARAM_MAX = 14;
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editor_only") = _GODOT_set_editor_only;
	void set_editor_only(in bool editor_only)
	{
		_GODOT_set_editor_only.bind("Light", "set_editor_only");
		ptrcall!(void)(_GODOT_set_editor_only, _godot_object, editor_only);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editor_only") = _GODOT_is_editor_only;
	bool is_editor_only() const
	{
		_GODOT_is_editor_only.bind("Light", "is_editor_only");
		return ptrcall!(bool)(_GODOT_is_editor_only, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	void set_param(in int param, in float value)
	{
		_GODOT_set_param.bind("Light", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	float get_param(in int param) const
	{
		_GODOT_get_param.bind("Light", "get_param");
		return ptrcall!(float)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shadow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow") = _GODOT_set_shadow;
	void set_shadow(in bool enabled)
	{
		_GODOT_set_shadow.bind("Light", "set_shadow");
		ptrcall!(void)(_GODOT_set_shadow, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_shadow;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_shadow") = _GODOT_has_shadow;
	bool has_shadow() const
	{
		_GODOT_has_shadow.bind("Light", "has_shadow");
		return ptrcall!(bool)(_GODOT_has_shadow, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_negative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_negative") = _GODOT_set_negative;
	void set_negative(in bool enabled)
	{
		_GODOT_set_negative.bind("Light", "set_negative");
		ptrcall!(void)(_GODOT_set_negative, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_negative;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_negative") = _GODOT_is_negative;
	bool is_negative() const
	{
		_GODOT_is_negative.bind("Light", "is_negative");
		return ptrcall!(bool)(_GODOT_is_negative, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mask") = _GODOT_set_cull_mask;
	void set_cull_mask(in int cull_mask)
	{
		_GODOT_set_cull_mask.bind("Light", "set_cull_mask");
		ptrcall!(void)(_GODOT_set_cull_mask, _godot_object, cull_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mask") = _GODOT_get_cull_mask;
	int get_cull_mask() const
	{
		_GODOT_get_cull_mask.bind("Light", "get_cull_mask");
		return ptrcall!(int)(_GODOT_get_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(in Color color)
	{
		_GODOT_set_color.bind("Light", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color() const
	{
		_GODOT_get_color.bind("Light", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shadow_reverse_cull_face;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_reverse_cull_face") = _GODOT_set_shadow_reverse_cull_face;
	void set_shadow_reverse_cull_face(in bool enable)
	{
		_GODOT_set_shadow_reverse_cull_face.bind("Light", "set_shadow_reverse_cull_face");
		ptrcall!(void)(_GODOT_set_shadow_reverse_cull_face, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_shadow_reverse_cull_face;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_reverse_cull_face") = _GODOT_get_shadow_reverse_cull_face;
	bool get_shadow_reverse_cull_face() const
	{
		_GODOT_get_shadow_reverse_cull_face.bind("Light", "get_shadow_reverse_cull_face");
		return ptrcall!(bool)(_GODOT_get_shadow_reverse_cull_face, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_color") = _GODOT_set_shadow_color;
	void set_shadow_color(in Color shadow_color)
	{
		_GODOT_set_shadow_color.bind("Light", "set_shadow_color");
		ptrcall!(void)(_GODOT_set_shadow_color, _godot_object, shadow_color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_color") = _GODOT_get_shadow_color;
	Color get_shadow_color() const
	{
		_GODOT_get_shadow_color.bind("Light", "get_shadow_color");
		return ptrcall!(Color)(_GODOT_get_shadow_color, _godot_object);
	}
}
