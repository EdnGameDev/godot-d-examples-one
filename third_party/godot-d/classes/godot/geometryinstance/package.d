module godot.geometryinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.visualinstance;
import godot.material;
@GodotBaseClass struct GeometryInstance
{
	static immutable string _GODOT_internal_name = "GeometryInstance";
public:
	union { godot_object _godot_object; VisualInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GeometryInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GeometryInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GeometryInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GeometryInstance");
		if(constructor is null) return typeof(this).init;
		return cast(GeometryInstance)(constructor());
	}
	enum Flags : int
	{
		FLAG_USE_BAKED_LIGHT = 0,
		FLAG_MAX = 1,
	}
	enum ShadowCastingSetting : int
	{
		SHADOW_CASTING_SETTING_DOUBLE_SIDED = 2,
		SHADOW_CASTING_SETTING_ON = 1,
		SHADOW_CASTING_SETTING_OFF = 0,
		SHADOW_CASTING_SETTING_SHADOWS_ONLY = 3,
	}
	enum int FLAG_USE_BAKED_LIGHT = 0;
	enum int SHADOW_CASTING_SETTING_DOUBLE_SIDED = 2;
	enum int SHADOW_CASTING_SETTING_ON = 1;
	enum int FLAG_MAX = 1;
	enum int SHADOW_CASTING_SETTING_OFF = 0;
	enum int SHADOW_CASTING_SETTING_SHADOWS_ONLY = 3;
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material_override") = _GODOT_set_material_override;
	void set_material_override(in Material material)
	{
		_GODOT_set_material_override.bind("GeometryInstance", "set_material_override");
		ptrcall!(void)(_GODOT_set_material_override, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material_override") = _GODOT_get_material_override;
	Material get_material_override() const
	{
		_GODOT_get_material_override.bind("GeometryInstance", "get_material_override");
		return ptrcall!(Material)(_GODOT_get_material_override, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	void set_flag(in int flag, in bool value)
	{
		_GODOT_set_flag.bind("GeometryInstance", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	bool get_flag(in int flag) const
	{
		_GODOT_get_flag.bind("GeometryInstance", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_cast_shadows_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cast_shadows_setting") = _GODOT_set_cast_shadows_setting;
	void set_cast_shadows_setting(in int shadow_casting_setting)
	{
		_GODOT_set_cast_shadows_setting.bind("GeometryInstance", "set_cast_shadows_setting");
		ptrcall!(void)(_GODOT_set_cast_shadows_setting, _godot_object, shadow_casting_setting);
	}
	package(godot) static GodotMethod!(GeometryInstance.ShadowCastingSetting) _GODOT_get_cast_shadows_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cast_shadows_setting") = _GODOT_get_cast_shadows_setting;
	GeometryInstance.ShadowCastingSetting get_cast_shadows_setting() const
	{
		_GODOT_get_cast_shadows_setting.bind("GeometryInstance", "get_cast_shadows_setting");
		return ptrcall!(GeometryInstance.ShadowCastingSetting)(_GODOT_get_cast_shadows_setting, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lod_max_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_max_hysteresis") = _GODOT_set_lod_max_hysteresis;
	void set_lod_max_hysteresis(in float mode)
	{
		_GODOT_set_lod_max_hysteresis.bind("GeometryInstance", "set_lod_max_hysteresis");
		ptrcall!(void)(_GODOT_set_lod_max_hysteresis, _godot_object, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lod_max_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_max_hysteresis") = _GODOT_get_lod_max_hysteresis;
	float get_lod_max_hysteresis() const
	{
		_GODOT_get_lod_max_hysteresis.bind("GeometryInstance", "get_lod_max_hysteresis");
		return ptrcall!(float)(_GODOT_get_lod_max_hysteresis, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lod_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_max_distance") = _GODOT_set_lod_max_distance;
	void set_lod_max_distance(in float mode)
	{
		_GODOT_set_lod_max_distance.bind("GeometryInstance", "set_lod_max_distance");
		ptrcall!(void)(_GODOT_set_lod_max_distance, _godot_object, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lod_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_max_distance") = _GODOT_get_lod_max_distance;
	float get_lod_max_distance() const
	{
		_GODOT_get_lod_max_distance.bind("GeometryInstance", "get_lod_max_distance");
		return ptrcall!(float)(_GODOT_get_lod_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lod_min_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_min_hysteresis") = _GODOT_set_lod_min_hysteresis;
	void set_lod_min_hysteresis(in float mode)
	{
		_GODOT_set_lod_min_hysteresis.bind("GeometryInstance", "set_lod_min_hysteresis");
		ptrcall!(void)(_GODOT_set_lod_min_hysteresis, _godot_object, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lod_min_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_min_hysteresis") = _GODOT_get_lod_min_hysteresis;
	float get_lod_min_hysteresis() const
	{
		_GODOT_get_lod_min_hysteresis.bind("GeometryInstance", "get_lod_min_hysteresis");
		return ptrcall!(float)(_GODOT_get_lod_min_hysteresis, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_lod_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_min_distance") = _GODOT_set_lod_min_distance;
	void set_lod_min_distance(in float mode)
	{
		_GODOT_set_lod_min_distance.bind("GeometryInstance", "set_lod_min_distance");
		ptrcall!(void)(_GODOT_set_lod_min_distance, _godot_object, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_lod_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_min_distance") = _GODOT_get_lod_min_distance;
	float get_lod_min_distance() const
	{
		_GODOT_get_lod_min_distance.bind("GeometryInstance", "get_lod_min_distance");
		return ptrcall!(float)(_GODOT_get_lod_min_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_extra_cull_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extra_cull_margin") = _GODOT_set_extra_cull_margin;
	void set_extra_cull_margin(in float margin)
	{
		_GODOT_set_extra_cull_margin.bind("GeometryInstance", "set_extra_cull_margin");
		ptrcall!(void)(_GODOT_set_extra_cull_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_extra_cull_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extra_cull_margin") = _GODOT_get_extra_cull_margin;
	float get_extra_cull_margin() const
	{
		_GODOT_get_extra_cull_margin.bind("GeometryInstance", "get_extra_cull_margin");
		return ptrcall!(float)(_GODOT_get_extra_cull_margin, _godot_object);
	}
}
