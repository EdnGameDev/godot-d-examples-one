module godot.spatialmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
@GodotBaseClass struct SpatialMaterial
{
	static immutable string _GODOT_internal_name = "SpatialMaterial";
public:
	union { godot_object _godot_object; Material base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SpatialMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpatialMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpatialMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SpatialMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(SpatialMaterial)(constructor());
	}
	enum DiffuseMode : int
	{
		DIFFUSE_BURLEY = 3,
		DIFFUSE_TOON = 4,
		DIFFUSE_OREN_NAYAR = 2,
		DIFFUSE_LAMBERT_WRAP = 1,
		DIFFUSE_LAMBERT = 0,
	}
	enum SpecularMode : int
	{
		SPECULAR_PHONG = 2,
		SPECULAR_SCHLICK_GGX = 0,
		SPECULAR_BLINN = 1,
		SPECULAR_TOON = 3,
		SPECULAR_DISABLED = 4,
	}
	enum Feature : int
	{
		FEATURE_DETAIL = 11,
		FEATURE_AMBIENT_OCCLUSION = 6,
		FEATURE_MAX = 12,
		FEATURE_NORMAL_MAPPING = 2,
		FEATURE_SUBSURACE_SCATTERING = 8,
		FEATURE_REFRACTION = 10,
		FEATURE_TRANSMISSION = 9,
		FEATURE_RIM = 3,
		FEATURE_TRANSPARENT = 0,
		FEATURE_CLEARCOAT = 4,
		FEATURE_EMISSION = 1,
		FEATURE_DEPTH_MAPPING = 7,
		FEATURE_ANISOTROPY = 5,
	}
	enum Flags : int
	{
		FLAG_SRGB_VERTEX_COLOR = 4,
		FLAG_TRIPLANAR_USE_WORLD = 9,
		FLAG_UV2_USE_TRIPLANAR = 8,
		FLAG_AO_ON_UV2 = 10,
		FLAG_USE_ALPHA_SCISSOR = 11,
		FLAG_MAX = 12,
		FLAG_USE_POINT_SIZE = 5,
		FLAG_FIXED_SIZE = 6,
		FLAG_UV1_USE_TRIPLANAR = 7,
		FLAG_USE_VERTEX_LIGHTING = 1,
		FLAG_UNSHADED = 0,
		FLAG_ALBEDO_FROM_VERTEX_COLOR = 3,
		FLAG_DISABLE_DEPTH_TEST = 2,
	}
	enum CullMode : int
	{
		CULL_FRONT = 1,
		CULL_BACK = 0,
		CULL_DISABLED = 2,
	}
	enum DetailUV : int
	{
		DETAIL_UV_1 = 0,
		DETAIL_UV_2 = 1,
	}
	enum BillboardMode : int
	{
		BILLBOARD_FIXED_Y = 2,
		BILLBOARD_PARTICLES = 3,
		BILLBOARD_DISABLED = 0,
		BILLBOARD_ENABLED = 1,
	}
	enum DepthDrawMode : int
	{
		DEPTH_DRAW_ALWAYS = 1,
		DEPTH_DRAW_ALPHA_OPAQUE_PREPASS = 3,
		DEPTH_DRAW_DISABLED = 2,
		DEPTH_DRAW_OPAQUE_ONLY = 0,
	}
	enum TextureChannel : int
	{
		TEXTURE_CHANNEL_ALPHA = 3,
		TEXTURE_CHANNEL_GRAYSCALE = 4,
		TEXTURE_CHANNEL_RED = 0,
		TEXTURE_CHANNEL_BLUE = 2,
		TEXTURE_CHANNEL_GREEN = 1,
	}
	enum BlendMode : int
	{
		BLEND_MODE_SUB = 2,
		BLEND_MODE_MIX = 0,
		BLEND_MODE_MUL = 3,
		BLEND_MODE_ADD = 1,
	}
	enum TextureParam : int
	{
		TEXTURE_REFRACTION = 12,
		TEXTURE_FLOWMAP = 7,
		TEXTURE_SUBSURFACE_SCATTERING = 10,
		TEXTURE_MAX = 16,
		TEXTURE_NORMAL = 4,
		TEXTURE_ALBEDO = 0,
		TEXTURE_METALLIC = 1,
		TEXTURE_AMBIENT_OCCLUSION = 8,
		TEXTURE_RIM = 5,
		TEXTURE_DETAIL_NORMAL = 15,
		TEXTURE_DEPTH = 9,
		TEXTURE_DETAIL_MASK = 13,
		TEXTURE_ROUGHNESS = 2,
		TEXTURE_DETAIL_ALBEDO = 14,
		TEXTURE_CLEARCOAT = 6,
		TEXTURE_TRANSMISSION = 11,
		TEXTURE_EMISSION = 3,
	}
	enum int FEATURE_DETAIL = 11;
	enum int FEATURE_AMBIENT_OCCLUSION = 6;
	enum int TEXTURE_REFRACTION = 12;
	enum int FLAG_UV2_USE_TRIPLANAR = 8;
	enum int FEATURE_NORMAL_MAPPING = 2;
	enum int BLEND_MODE_SUB = 2;
	enum int FEATURE_REFRACTION = 10;
	enum int FEATURE_TRANSMISSION = 9;
	enum int FEATURE_RIM = 3;
	enum int FEATURE_TRANSPARENT = 0;
	enum int TEXTURE_CHANNEL_ALPHA = 3;
	enum int TEXTURE_CLEARCOAT = 6;
	enum int SPECULAR_SCHLICK_GGX = 0;
	enum int FLAG_ALBEDO_FROM_VERTEX_COLOR = 3;
	enum int TEXTURE_EMISSION = 3;
	enum int FEATURE_ANISOTROPY = 5;
	enum int FLAG_TRIPLANAR_USE_WORLD = 9;
	enum int BLEND_MODE_MUL = 3;
	enum int TEXTURE_SUBSURFACE_SCATTERING = 10;
	enum int DIFFUSE_LAMBERT = 0;
	enum int DEPTH_DRAW_OPAQUE_ONLY = 0;
	enum int DIFFUSE_BURLEY = 3;
	enum int FEATURE_SUBSURACE_SCATTERING = 8;
	enum int TEXTURE_NORMAL = 4;
	enum int TEXTURE_DEPTH = 9;
	enum int BILLBOARD_ENABLED = 1;
	enum int SPECULAR_BLINN = 1;
	enum int TEXTURE_CHANNEL_RED = 0;
	enum int DIFFUSE_LAMBERT_WRAP = 1;
	enum int FLAG_USE_VERTEX_LIGHTING = 1;
	enum int FLAG_UNSHADED = 0;
	enum int BILLBOARD_FIXED_Y = 2;
	enum int SPECULAR_DISABLED = 4;
	enum int DETAIL_UV_2 = 1;
	enum int TEXTURE_FLOWMAP = 7;
	enum int TEXTURE_MAX = 16;
	enum int FLAG_AO_ON_UV2 = 10;
	enum int FLAG_USE_ALPHA_SCISSOR = 11;
	enum int DEPTH_DRAW_ALWAYS = 1;
	enum int TEXTURE_METALLIC = 1;
	enum int FLAG_MAX = 12;
	enum int DEPTH_DRAW_ALPHA_OPAQUE_PREPASS = 3;
	enum int TEXTURE_RIM = 5;
	enum int TEXTURE_DETAIL_NORMAL = 15;
	enum int DETAIL_UV_1 = 0;
	enum int FEATURE_EMISSION = 1;
	enum int BLEND_MODE_MIX = 0;
	enum int FLAG_UV1_USE_TRIPLANAR = 7;
	enum int FLAG_FIXED_SIZE = 6;
	enum int SPECULAR_PHONG = 2;
	enum int TEXTURE_TRANSMISSION = 11;
	enum int DIFFUSE_TOON = 4;
	enum int FLAG_DISABLE_DEPTH_TEST = 2;
	enum int FLAG_SRGB_VERTEX_COLOR = 4;
	enum int CULL_BACK = 0;
	enum int FEATURE_MAX = 12;
	enum int BLEND_MODE_ADD = 1;
	enum int DEPTH_DRAW_DISABLED = 2;
	enum int SPECULAR_TOON = 3;
	enum int DIFFUSE_OREN_NAYAR = 2;
	enum int BILLBOARD_DISABLED = 0;
	enum int TEXTURE_CHANNEL_BLUE = 2;
	enum int BILLBOARD_PARTICLES = 3;
	enum int TEXTURE_ALBEDO = 0;
	enum int TEXTURE_AMBIENT_OCCLUSION = 8;
	enum int FLAG_USE_POINT_SIZE = 5;
	enum int FEATURE_CLEARCOAT = 4;
	enum int TEXTURE_DETAIL_MASK = 13;
	enum int TEXTURE_CHANNEL_GRAYSCALE = 4;
	enum int TEXTURE_ROUGHNESS = 2;
	enum int TEXTURE_DETAIL_ALBEDO = 14;
	enum int FEATURE_DEPTH_MAPPING = 7;
	enum int CULL_FRONT = 1;
	enum int CULL_DISABLED = 2;
	enum int TEXTURE_CHANNEL_GREEN = 1;
	package(godot) static GodotMethod!(void, Color) _GODOT_set_albedo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_albedo") = _GODOT_set_albedo;
	void set_albedo(in Color albedo)
	{
		_GODOT_set_albedo.bind("SpatialMaterial", "set_albedo");
		ptrcall!(void)(_GODOT_set_albedo, _godot_object, albedo);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_albedo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_albedo") = _GODOT_get_albedo;
	Color get_albedo() const
	{
		_GODOT_get_albedo.bind("SpatialMaterial", "get_albedo");
		return ptrcall!(Color)(_GODOT_get_albedo, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_specular;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_specular") = _GODOT_set_specular;
	void set_specular(in float specular)
	{
		_GODOT_set_specular.bind("SpatialMaterial", "set_specular");
		ptrcall!(void)(_GODOT_set_specular, _godot_object, specular);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_specular;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_specular") = _GODOT_get_specular;
	float get_specular() const
	{
		_GODOT_get_specular.bind("SpatialMaterial", "get_specular");
		return ptrcall!(float)(_GODOT_get_specular, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_metallic;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metallic") = _GODOT_set_metallic;
	void set_metallic(in float metallic)
	{
		_GODOT_set_metallic.bind("SpatialMaterial", "set_metallic");
		ptrcall!(void)(_GODOT_set_metallic, _godot_object, metallic);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_metallic;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metallic") = _GODOT_get_metallic;
	float get_metallic() const
	{
		_GODOT_get_metallic.bind("SpatialMaterial", "get_metallic");
		return ptrcall!(float)(_GODOT_get_metallic, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_roughness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_roughness") = _GODOT_set_roughness;
	void set_roughness(in float roughness)
	{
		_GODOT_set_roughness.bind("SpatialMaterial", "set_roughness");
		ptrcall!(void)(_GODOT_set_roughness, _godot_object, roughness);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_roughness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_roughness") = _GODOT_get_roughness;
	float get_roughness() const
	{
		_GODOT_get_roughness.bind("SpatialMaterial", "get_roughness");
		return ptrcall!(float)(_GODOT_get_roughness, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_emission;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission") = _GODOT_set_emission;
	void set_emission(in Color emission)
	{
		_GODOT_set_emission.bind("SpatialMaterial", "set_emission");
		ptrcall!(void)(_GODOT_set_emission, _godot_object, emission);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_emission;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission") = _GODOT_get_emission;
	Color get_emission() const
	{
		_GODOT_get_emission.bind("SpatialMaterial", "get_emission");
		return ptrcall!(Color)(_GODOT_get_emission, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_emission_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_energy") = _GODOT_set_emission_energy;
	void set_emission_energy(in float emission_energy)
	{
		_GODOT_set_emission_energy.bind("SpatialMaterial", "set_emission_energy");
		ptrcall!(void)(_GODOT_set_emission_energy, _godot_object, emission_energy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_emission_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_energy") = _GODOT_get_emission_energy;
	float get_emission_energy() const
	{
		_GODOT_get_emission_energy.bind("SpatialMaterial", "get_emission_energy");
		return ptrcall!(float)(_GODOT_get_emission_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_normal_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_scale") = _GODOT_set_normal_scale;
	void set_normal_scale(in float normal_scale)
	{
		_GODOT_set_normal_scale.bind("SpatialMaterial", "set_normal_scale");
		ptrcall!(void)(_GODOT_set_normal_scale, _godot_object, normal_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_normal_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_scale") = _GODOT_get_normal_scale;
	float get_normal_scale() const
	{
		_GODOT_get_normal_scale.bind("SpatialMaterial", "get_normal_scale");
		return ptrcall!(float)(_GODOT_get_normal_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rim;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rim") = _GODOT_set_rim;
	void set_rim(in float rim)
	{
		_GODOT_set_rim.bind("SpatialMaterial", "set_rim");
		ptrcall!(void)(_GODOT_set_rim, _godot_object, rim);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rim;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rim") = _GODOT_get_rim;
	float get_rim() const
	{
		_GODOT_get_rim.bind("SpatialMaterial", "get_rim");
		return ptrcall!(float)(_GODOT_get_rim, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rim_tint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rim_tint") = _GODOT_set_rim_tint;
	void set_rim_tint(in float rim_tint)
	{
		_GODOT_set_rim_tint.bind("SpatialMaterial", "set_rim_tint");
		ptrcall!(void)(_GODOT_set_rim_tint, _godot_object, rim_tint);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rim_tint;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rim_tint") = _GODOT_get_rim_tint;
	float get_rim_tint() const
	{
		_GODOT_get_rim_tint.bind("SpatialMaterial", "get_rim_tint");
		return ptrcall!(float)(_GODOT_get_rim_tint, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_clearcoat;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clearcoat") = _GODOT_set_clearcoat;
	void set_clearcoat(in float clearcoat)
	{
		_GODOT_set_clearcoat.bind("SpatialMaterial", "set_clearcoat");
		ptrcall!(void)(_GODOT_set_clearcoat, _godot_object, clearcoat);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_clearcoat;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clearcoat") = _GODOT_get_clearcoat;
	float get_clearcoat() const
	{
		_GODOT_get_clearcoat.bind("SpatialMaterial", "get_clearcoat");
		return ptrcall!(float)(_GODOT_get_clearcoat, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_clearcoat_gloss;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clearcoat_gloss") = _GODOT_set_clearcoat_gloss;
	void set_clearcoat_gloss(in float clearcoat_gloss)
	{
		_GODOT_set_clearcoat_gloss.bind("SpatialMaterial", "set_clearcoat_gloss");
		ptrcall!(void)(_GODOT_set_clearcoat_gloss, _godot_object, clearcoat_gloss);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_clearcoat_gloss;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clearcoat_gloss") = _GODOT_get_clearcoat_gloss;
	float get_clearcoat_gloss() const
	{
		_GODOT_get_clearcoat_gloss.bind("SpatialMaterial", "get_clearcoat_gloss");
		return ptrcall!(float)(_GODOT_get_clearcoat_gloss, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_anisotropy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anisotropy") = _GODOT_set_anisotropy;
	void set_anisotropy(in float anisotropy)
	{
		_GODOT_set_anisotropy.bind("SpatialMaterial", "set_anisotropy");
		ptrcall!(void)(_GODOT_set_anisotropy, _godot_object, anisotropy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_anisotropy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anisotropy") = _GODOT_get_anisotropy;
	float get_anisotropy() const
	{
		_GODOT_get_anisotropy.bind("SpatialMaterial", "get_anisotropy");
		return ptrcall!(float)(_GODOT_get_anisotropy, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_depth_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_scale") = _GODOT_set_depth_scale;
	void set_depth_scale(in float depth_scale)
	{
		_GODOT_set_depth_scale.bind("SpatialMaterial", "set_depth_scale");
		ptrcall!(void)(_GODOT_set_depth_scale, _godot_object, depth_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_depth_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_scale") = _GODOT_get_depth_scale;
	float get_depth_scale() const
	{
		_GODOT_get_depth_scale.bind("SpatialMaterial", "get_depth_scale");
		return ptrcall!(float)(_GODOT_get_depth_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_subsurface_scattering_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subsurface_scattering_strength") = _GODOT_set_subsurface_scattering_strength;
	void set_subsurface_scattering_strength(in float strength)
	{
		_GODOT_set_subsurface_scattering_strength.bind("SpatialMaterial", "set_subsurface_scattering_strength");
		ptrcall!(void)(_GODOT_set_subsurface_scattering_strength, _godot_object, strength);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_subsurface_scattering_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subsurface_scattering_strength") = _GODOT_get_subsurface_scattering_strength;
	float get_subsurface_scattering_strength() const
	{
		_GODOT_get_subsurface_scattering_strength.bind("SpatialMaterial", "get_subsurface_scattering_strength");
		return ptrcall!(float)(_GODOT_get_subsurface_scattering_strength, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_transmission;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transmission") = _GODOT_set_transmission;
	void set_transmission(in Color transmission)
	{
		_GODOT_set_transmission.bind("SpatialMaterial", "set_transmission");
		ptrcall!(void)(_GODOT_set_transmission, _godot_object, transmission);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_transmission;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transmission") = _GODOT_get_transmission;
	Color get_transmission() const
	{
		_GODOT_get_transmission.bind("SpatialMaterial", "get_transmission");
		return ptrcall!(Color)(_GODOT_get_transmission, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_refraction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refraction") = _GODOT_set_refraction;
	void set_refraction(in float refraction)
	{
		_GODOT_set_refraction.bind("SpatialMaterial", "set_refraction");
		ptrcall!(void)(_GODOT_set_refraction, _godot_object, refraction);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_refraction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_refraction") = _GODOT_get_refraction;
	float get_refraction() const
	{
		_GODOT_get_refraction.bind("SpatialMaterial", "get_refraction");
		return ptrcall!(float)(_GODOT_get_refraction, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_line_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_line_width") = _GODOT_set_line_width;
	void set_line_width(in float line_width)
	{
		_GODOT_set_line_width.bind("SpatialMaterial", "set_line_width");
		ptrcall!(void)(_GODOT_set_line_width, _godot_object, line_width);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_line_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_width") = _GODOT_get_line_width;
	float get_line_width() const
	{
		_GODOT_get_line_width.bind("SpatialMaterial", "get_line_width");
		return ptrcall!(float)(_GODOT_get_line_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_point_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_size") = _GODOT_set_point_size;
	void set_point_size(in float point_size)
	{
		_GODOT_set_point_size.bind("SpatialMaterial", "set_point_size");
		ptrcall!(void)(_GODOT_set_point_size, _godot_object, point_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_point_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_size") = _GODOT_get_point_size;
	float get_point_size() const
	{
		_GODOT_get_point_size.bind("SpatialMaterial", "get_point_size");
		return ptrcall!(float)(_GODOT_get_point_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_detail_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_uv") = _GODOT_set_detail_uv;
	void set_detail_uv(in int detail_uv)
	{
		_GODOT_set_detail_uv.bind("SpatialMaterial", "set_detail_uv");
		ptrcall!(void)(_GODOT_set_detail_uv, _godot_object, detail_uv);
	}
	package(godot) static GodotMethod!(SpatialMaterial.DetailUV) _GODOT_get_detail_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_uv") = _GODOT_get_detail_uv;
	SpatialMaterial.DetailUV get_detail_uv() const
	{
		_GODOT_get_detail_uv.bind("SpatialMaterial", "get_detail_uv");
		return ptrcall!(SpatialMaterial.DetailUV)(_GODOT_get_detail_uv, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_mode") = _GODOT_set_blend_mode;
	void set_blend_mode(in int blend_mode)
	{
		_GODOT_set_blend_mode.bind("SpatialMaterial", "set_blend_mode");
		ptrcall!(void)(_GODOT_set_blend_mode, _godot_object, blend_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.BlendMode) _GODOT_get_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_mode") = _GODOT_get_blend_mode;
	SpatialMaterial.BlendMode get_blend_mode() const
	{
		_GODOT_get_blend_mode.bind("SpatialMaterial", "get_blend_mode");
		return ptrcall!(SpatialMaterial.BlendMode)(_GODOT_get_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_depth_draw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_draw_mode") = _GODOT_set_depth_draw_mode;
	void set_depth_draw_mode(in int depth_draw_mode)
	{
		_GODOT_set_depth_draw_mode.bind("SpatialMaterial", "set_depth_draw_mode");
		ptrcall!(void)(_GODOT_set_depth_draw_mode, _godot_object, depth_draw_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.DepthDrawMode) _GODOT_get_depth_draw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_draw_mode") = _GODOT_get_depth_draw_mode;
	SpatialMaterial.DepthDrawMode get_depth_draw_mode() const
	{
		_GODOT_get_depth_draw_mode.bind("SpatialMaterial", "get_depth_draw_mode");
		return ptrcall!(SpatialMaterial.DepthDrawMode)(_GODOT_get_depth_draw_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mode") = _GODOT_set_cull_mode;
	void set_cull_mode(in int cull_mode)
	{
		_GODOT_set_cull_mode.bind("SpatialMaterial", "set_cull_mode");
		ptrcall!(void)(_GODOT_set_cull_mode, _godot_object, cull_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.CullMode) _GODOT_get_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mode") = _GODOT_get_cull_mode;
	SpatialMaterial.CullMode get_cull_mode() const
	{
		_GODOT_get_cull_mode.bind("SpatialMaterial", "get_cull_mode");
		return ptrcall!(SpatialMaterial.CullMode)(_GODOT_get_cull_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_diffuse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_diffuse_mode") = _GODOT_set_diffuse_mode;
	void set_diffuse_mode(in int diffuse_mode)
	{
		_GODOT_set_diffuse_mode.bind("SpatialMaterial", "set_diffuse_mode");
		ptrcall!(void)(_GODOT_set_diffuse_mode, _godot_object, diffuse_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.DiffuseMode) _GODOT_get_diffuse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_diffuse_mode") = _GODOT_get_diffuse_mode;
	SpatialMaterial.DiffuseMode get_diffuse_mode() const
	{
		_GODOT_get_diffuse_mode.bind("SpatialMaterial", "get_diffuse_mode");
		return ptrcall!(SpatialMaterial.DiffuseMode)(_GODOT_get_diffuse_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_specular_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_specular_mode") = _GODOT_set_specular_mode;
	void set_specular_mode(in int specular_mode)
	{
		_GODOT_set_specular_mode.bind("SpatialMaterial", "set_specular_mode");
		ptrcall!(void)(_GODOT_set_specular_mode, _godot_object, specular_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.SpecularMode) _GODOT_get_specular_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_specular_mode") = _GODOT_get_specular_mode;
	SpatialMaterial.SpecularMode get_specular_mode() const
	{
		_GODOT_get_specular_mode.bind("SpatialMaterial", "get_specular_mode");
		return ptrcall!(SpatialMaterial.SpecularMode)(_GODOT_get_specular_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	void set_flag(in int flag, in bool enable)
	{
		_GODOT_set_flag.bind("SpatialMaterial", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	bool get_flag(in int flag) const
	{
		_GODOT_get_flag.bind("SpatialMaterial", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feature") = _GODOT_set_feature;
	void set_feature(in int feature, in bool enable)
	{
		_GODOT_set_feature.bind("SpatialMaterial", "set_feature");
		ptrcall!(void)(_GODOT_set_feature, _godot_object, feature, enable);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feature") = _GODOT_get_feature;
	bool get_feature(in int feature) const
	{
		_GODOT_get_feature.bind("SpatialMaterial", "get_feature");
		return ptrcall!(bool)(_GODOT_get_feature, _godot_object, feature);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in int param, in Texture texture)
	{
		_GODOT_set_texture.bind("SpatialMaterial", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, param, texture);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture(in int param) const
	{
		_GODOT_get_texture.bind("SpatialMaterial", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_detail_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_blend_mode") = _GODOT_set_detail_blend_mode;
	void set_detail_blend_mode(in int detail_blend_mode)
	{
		_GODOT_set_detail_blend_mode.bind("SpatialMaterial", "set_detail_blend_mode");
		ptrcall!(void)(_GODOT_set_detail_blend_mode, _godot_object, detail_blend_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.BlendMode) _GODOT_get_detail_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_blend_mode") = _GODOT_get_detail_blend_mode;
	SpatialMaterial.BlendMode get_detail_blend_mode() const
	{
		_GODOT_get_detail_blend_mode.bind("SpatialMaterial", "get_detail_blend_mode");
		return ptrcall!(SpatialMaterial.BlendMode)(_GODOT_get_detail_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv1_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv1_scale") = _GODOT_set_uv1_scale;
	void set_uv1_scale(in Vector3 scale)
	{
		_GODOT_set_uv1_scale.bind("SpatialMaterial", "set_uv1_scale");
		ptrcall!(void)(_GODOT_set_uv1_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv1_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv1_scale") = _GODOT_get_uv1_scale;
	Vector3 get_uv1_scale() const
	{
		_GODOT_get_uv1_scale.bind("SpatialMaterial", "get_uv1_scale");
		return ptrcall!(Vector3)(_GODOT_get_uv1_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv1_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv1_offset") = _GODOT_set_uv1_offset;
	void set_uv1_offset(in Vector3 offset)
	{
		_GODOT_set_uv1_offset.bind("SpatialMaterial", "set_uv1_offset");
		ptrcall!(void)(_GODOT_set_uv1_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv1_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv1_offset") = _GODOT_get_uv1_offset;
	Vector3 get_uv1_offset() const
	{
		_GODOT_get_uv1_offset.bind("SpatialMaterial", "get_uv1_offset");
		return ptrcall!(Vector3)(_GODOT_get_uv1_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_uv1_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv1_triplanar_blend_sharpness") = _GODOT_set_uv1_triplanar_blend_sharpness;
	void set_uv1_triplanar_blend_sharpness(in float sharpness)
	{
		_GODOT_set_uv1_triplanar_blend_sharpness.bind("SpatialMaterial", "set_uv1_triplanar_blend_sharpness");
		ptrcall!(void)(_GODOT_set_uv1_triplanar_blend_sharpness, _godot_object, sharpness);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_uv1_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv1_triplanar_blend_sharpness") = _GODOT_get_uv1_triplanar_blend_sharpness;
	float get_uv1_triplanar_blend_sharpness() const
	{
		_GODOT_get_uv1_triplanar_blend_sharpness.bind("SpatialMaterial", "get_uv1_triplanar_blend_sharpness");
		return ptrcall!(float)(_GODOT_get_uv1_triplanar_blend_sharpness, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv2_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2_scale") = _GODOT_set_uv2_scale;
	void set_uv2_scale(in Vector3 scale)
	{
		_GODOT_set_uv2_scale.bind("SpatialMaterial", "set_uv2_scale");
		ptrcall!(void)(_GODOT_set_uv2_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv2_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv2_scale") = _GODOT_get_uv2_scale;
	Vector3 get_uv2_scale() const
	{
		_GODOT_get_uv2_scale.bind("SpatialMaterial", "get_uv2_scale");
		return ptrcall!(Vector3)(_GODOT_get_uv2_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv2_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2_offset") = _GODOT_set_uv2_offset;
	void set_uv2_offset(in Vector3 offset)
	{
		_GODOT_set_uv2_offset.bind("SpatialMaterial", "set_uv2_offset");
		ptrcall!(void)(_GODOT_set_uv2_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv2_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv2_offset") = _GODOT_get_uv2_offset;
	Vector3 get_uv2_offset() const
	{
		_GODOT_get_uv2_offset.bind("SpatialMaterial", "get_uv2_offset");
		return ptrcall!(Vector3)(_GODOT_get_uv2_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_uv2_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2_triplanar_blend_sharpness") = _GODOT_set_uv2_triplanar_blend_sharpness;
	void set_uv2_triplanar_blend_sharpness(in float sharpness)
	{
		_GODOT_set_uv2_triplanar_blend_sharpness.bind("SpatialMaterial", "set_uv2_triplanar_blend_sharpness");
		ptrcall!(void)(_GODOT_set_uv2_triplanar_blend_sharpness, _godot_object, sharpness);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_uv2_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv2_triplanar_blend_sharpness") = _GODOT_get_uv2_triplanar_blend_sharpness;
	float get_uv2_triplanar_blend_sharpness() const
	{
		_GODOT_get_uv2_triplanar_blend_sharpness.bind("SpatialMaterial", "get_uv2_triplanar_blend_sharpness");
		return ptrcall!(float)(_GODOT_get_uv2_triplanar_blend_sharpness, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_billboard_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_billboard_mode") = _GODOT_set_billboard_mode;
	void set_billboard_mode(in int mode)
	{
		_GODOT_set_billboard_mode.bind("SpatialMaterial", "set_billboard_mode");
		ptrcall!(void)(_GODOT_set_billboard_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.BillboardMode) _GODOT_get_billboard_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_billboard_mode") = _GODOT_get_billboard_mode;
	SpatialMaterial.BillboardMode get_billboard_mode() const
	{
		_GODOT_get_billboard_mode.bind("SpatialMaterial", "get_billboard_mode");
		return ptrcall!(SpatialMaterial.BillboardMode)(_GODOT_get_billboard_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_particles_anim_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_particles_anim_h_frames") = _GODOT_set_particles_anim_h_frames;
	void set_particles_anim_h_frames(in int frames)
	{
		_GODOT_set_particles_anim_h_frames.bind("SpatialMaterial", "set_particles_anim_h_frames");
		ptrcall!(void)(_GODOT_set_particles_anim_h_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_particles_anim_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_particles_anim_h_frames") = _GODOT_get_particles_anim_h_frames;
	int get_particles_anim_h_frames() const
	{
		_GODOT_get_particles_anim_h_frames.bind("SpatialMaterial", "get_particles_anim_h_frames");
		return ptrcall!(int)(_GODOT_get_particles_anim_h_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_particles_anim_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_particles_anim_v_frames") = _GODOT_set_particles_anim_v_frames;
	void set_particles_anim_v_frames(in int frames)
	{
		_GODOT_set_particles_anim_v_frames.bind("SpatialMaterial", "set_particles_anim_v_frames");
		ptrcall!(void)(_GODOT_set_particles_anim_v_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_particles_anim_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_particles_anim_v_frames") = _GODOT_get_particles_anim_v_frames;
	int get_particles_anim_v_frames() const
	{
		_GODOT_get_particles_anim_v_frames.bind("SpatialMaterial", "get_particles_anim_v_frames");
		return ptrcall!(int)(_GODOT_get_particles_anim_v_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_particles_anim_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_particles_anim_loop") = _GODOT_set_particles_anim_loop;
	void set_particles_anim_loop(in int frames)
	{
		_GODOT_set_particles_anim_loop.bind("SpatialMaterial", "set_particles_anim_loop");
		ptrcall!(void)(_GODOT_set_particles_anim_loop, _godot_object, frames);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_particles_anim_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_particles_anim_loop") = _GODOT_get_particles_anim_loop;
	int get_particles_anim_loop() const
	{
		_GODOT_get_particles_anim_loop.bind("SpatialMaterial", "get_particles_anim_loop");
		return ptrcall!(int)(_GODOT_get_particles_anim_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_depth_deep_parallax;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_deep_parallax") = _GODOT_set_depth_deep_parallax;
	void set_depth_deep_parallax(in bool enable)
	{
		_GODOT_set_depth_deep_parallax.bind("SpatialMaterial", "set_depth_deep_parallax");
		ptrcall!(void)(_GODOT_set_depth_deep_parallax, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_depth_deep_parallax_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_depth_deep_parallax_enabled") = _GODOT_is_depth_deep_parallax_enabled;
	bool is_depth_deep_parallax_enabled() const
	{
		_GODOT_is_depth_deep_parallax_enabled.bind("SpatialMaterial", "is_depth_deep_parallax_enabled");
		return ptrcall!(bool)(_GODOT_is_depth_deep_parallax_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_depth_deep_parallax_min_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_deep_parallax_min_layers") = _GODOT_set_depth_deep_parallax_min_layers;
	void set_depth_deep_parallax_min_layers(in int layer)
	{
		_GODOT_set_depth_deep_parallax_min_layers.bind("SpatialMaterial", "set_depth_deep_parallax_min_layers");
		ptrcall!(void)(_GODOT_set_depth_deep_parallax_min_layers, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_depth_deep_parallax_min_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_deep_parallax_min_layers") = _GODOT_get_depth_deep_parallax_min_layers;
	int get_depth_deep_parallax_min_layers() const
	{
		_GODOT_get_depth_deep_parallax_min_layers.bind("SpatialMaterial", "get_depth_deep_parallax_min_layers");
		return ptrcall!(int)(_GODOT_get_depth_deep_parallax_min_layers, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_depth_deep_parallax_max_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_deep_parallax_max_layers") = _GODOT_set_depth_deep_parallax_max_layers;
	void set_depth_deep_parallax_max_layers(in int layer)
	{
		_GODOT_set_depth_deep_parallax_max_layers.bind("SpatialMaterial", "set_depth_deep_parallax_max_layers");
		ptrcall!(void)(_GODOT_set_depth_deep_parallax_max_layers, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_depth_deep_parallax_max_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_deep_parallax_max_layers") = _GODOT_get_depth_deep_parallax_max_layers;
	int get_depth_deep_parallax_max_layers() const
	{
		_GODOT_get_depth_deep_parallax_max_layers.bind("SpatialMaterial", "get_depth_deep_parallax_max_layers");
		return ptrcall!(int)(_GODOT_get_depth_deep_parallax_max_layers, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_grow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_grow") = _GODOT_set_grow;
	void set_grow(in float amount)
	{
		_GODOT_set_grow.bind("SpatialMaterial", "set_grow");
		ptrcall!(void)(_GODOT_set_grow, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_grow;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_grow") = _GODOT_get_grow;
	float get_grow() const
	{
		_GODOT_get_grow.bind("SpatialMaterial", "get_grow");
		return ptrcall!(float)(_GODOT_get_grow, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ao_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ao_light_affect") = _GODOT_set_ao_light_affect;
	void set_ao_light_affect(in float amount)
	{
		_GODOT_set_ao_light_affect.bind("SpatialMaterial", "set_ao_light_affect");
		ptrcall!(void)(_GODOT_set_ao_light_affect, _godot_object, amount);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ao_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ao_light_affect") = _GODOT_get_ao_light_affect;
	float get_ao_light_affect() const
	{
		_GODOT_get_ao_light_affect.bind("SpatialMaterial", "get_ao_light_affect");
		return ptrcall!(float)(_GODOT_get_ao_light_affect, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_alpha_scissor_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alpha_scissor_threshold") = _GODOT_set_alpha_scissor_threshold;
	void set_alpha_scissor_threshold(in float threshold)
	{
		_GODOT_set_alpha_scissor_threshold.bind("SpatialMaterial", "set_alpha_scissor_threshold");
		ptrcall!(void)(_GODOT_set_alpha_scissor_threshold, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_alpha_scissor_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alpha_scissor_threshold") = _GODOT_get_alpha_scissor_threshold;
	float get_alpha_scissor_threshold() const
	{
		_GODOT_get_alpha_scissor_threshold.bind("SpatialMaterial", "get_alpha_scissor_threshold");
		return ptrcall!(float)(_GODOT_get_alpha_scissor_threshold, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_grow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_grow_enabled") = _GODOT_set_grow_enabled;
	void set_grow_enabled(in bool enable)
	{
		_GODOT_set_grow_enabled.bind("SpatialMaterial", "set_grow_enabled");
		ptrcall!(void)(_GODOT_set_grow_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_grow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_grow_enabled") = _GODOT_is_grow_enabled;
	bool is_grow_enabled() const
	{
		_GODOT_is_grow_enabled.bind("SpatialMaterial", "is_grow_enabled");
		return ptrcall!(bool)(_GODOT_is_grow_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_metallic_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metallic_texture_channel") = _GODOT_set_metallic_texture_channel;
	void set_metallic_texture_channel(in int channel)
	{
		_GODOT_set_metallic_texture_channel.bind("SpatialMaterial", "set_metallic_texture_channel");
		ptrcall!(void)(_GODOT_set_metallic_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_metallic_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metallic_texture_channel") = _GODOT_get_metallic_texture_channel;
	SpatialMaterial.TextureChannel get_metallic_texture_channel() const
	{
		_GODOT_get_metallic_texture_channel.bind("SpatialMaterial", "get_metallic_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_metallic_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_roughness_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_roughness_texture_channel") = _GODOT_set_roughness_texture_channel;
	void set_roughness_texture_channel(in int channel)
	{
		_GODOT_set_roughness_texture_channel.bind("SpatialMaterial", "set_roughness_texture_channel");
		ptrcall!(void)(_GODOT_set_roughness_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_roughness_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_roughness_texture_channel") = _GODOT_get_roughness_texture_channel;
	SpatialMaterial.TextureChannel get_roughness_texture_channel() const
	{
		_GODOT_get_roughness_texture_channel.bind("SpatialMaterial", "get_roughness_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_roughness_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_ao_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ao_texture_channel") = _GODOT_set_ao_texture_channel;
	void set_ao_texture_channel(in int channel)
	{
		_GODOT_set_ao_texture_channel.bind("SpatialMaterial", "set_ao_texture_channel");
		ptrcall!(void)(_GODOT_set_ao_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_ao_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ao_texture_channel") = _GODOT_get_ao_texture_channel;
	SpatialMaterial.TextureChannel get_ao_texture_channel() const
	{
		_GODOT_get_ao_texture_channel.bind("SpatialMaterial", "get_ao_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_ao_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_refraction_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refraction_texture_channel") = _GODOT_set_refraction_texture_channel;
	void set_refraction_texture_channel(in int channel)
	{
		_GODOT_set_refraction_texture_channel.bind("SpatialMaterial", "set_refraction_texture_channel");
		ptrcall!(void)(_GODOT_set_refraction_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_refraction_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_refraction_texture_channel") = _GODOT_get_refraction_texture_channel;
	SpatialMaterial.TextureChannel get_refraction_texture_channel() const
	{
		_GODOT_get_refraction_texture_channel.bind("SpatialMaterial", "get_refraction_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_refraction_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_proximity_fade;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_proximity_fade") = _GODOT_set_proximity_fade;
	void set_proximity_fade(in bool enabled)
	{
		_GODOT_set_proximity_fade.bind("SpatialMaterial", "set_proximity_fade");
		ptrcall!(void)(_GODOT_set_proximity_fade, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_proximity_fade_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_proximity_fade_enabled") = _GODOT_is_proximity_fade_enabled;
	bool is_proximity_fade_enabled() const
	{
		_GODOT_is_proximity_fade_enabled.bind("SpatialMaterial", "is_proximity_fade_enabled");
		return ptrcall!(bool)(_GODOT_is_proximity_fade_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_proximity_fade_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_proximity_fade_distance") = _GODOT_set_proximity_fade_distance;
	void set_proximity_fade_distance(in float distance)
	{
		_GODOT_set_proximity_fade_distance.bind("SpatialMaterial", "set_proximity_fade_distance");
		ptrcall!(void)(_GODOT_set_proximity_fade_distance, _godot_object, distance);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_proximity_fade_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_proximity_fade_distance") = _GODOT_get_proximity_fade_distance;
	float get_proximity_fade_distance() const
	{
		_GODOT_get_proximity_fade_distance.bind("SpatialMaterial", "get_proximity_fade_distance");
		return ptrcall!(float)(_GODOT_get_proximity_fade_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_distance_fade;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_fade") = _GODOT_set_distance_fade;
	void set_distance_fade(in bool enabled)
	{
		_GODOT_set_distance_fade.bind("SpatialMaterial", "set_distance_fade");
		ptrcall!(void)(_GODOT_set_distance_fade, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_distance_fade_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_distance_fade_enabled") = _GODOT_is_distance_fade_enabled;
	bool is_distance_fade_enabled() const
	{
		_GODOT_is_distance_fade_enabled.bind("SpatialMaterial", "is_distance_fade_enabled");
		return ptrcall!(bool)(_GODOT_is_distance_fade_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_distance_fade_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_fade_max_distance") = _GODOT_set_distance_fade_max_distance;
	void set_distance_fade_max_distance(in float distance)
	{
		_GODOT_set_distance_fade_max_distance.bind("SpatialMaterial", "set_distance_fade_max_distance");
		ptrcall!(void)(_GODOT_set_distance_fade_max_distance, _godot_object, distance);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_distance_fade_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_distance_fade_max_distance") = _GODOT_get_distance_fade_max_distance;
	float get_distance_fade_max_distance() const
	{
		_GODOT_get_distance_fade_max_distance.bind("SpatialMaterial", "get_distance_fade_max_distance");
		return ptrcall!(float)(_GODOT_get_distance_fade_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_distance_fade_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_fade_min_distance") = _GODOT_set_distance_fade_min_distance;
	void set_distance_fade_min_distance(in float distance)
	{
		_GODOT_set_distance_fade_min_distance.bind("SpatialMaterial", "set_distance_fade_min_distance");
		ptrcall!(void)(_GODOT_set_distance_fade_min_distance, _godot_object, distance);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_distance_fade_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_distance_fade_min_distance") = _GODOT_get_distance_fade_min_distance;
	float get_distance_fade_min_distance() const
	{
		_GODOT_get_distance_fade_min_distance.bind("SpatialMaterial", "get_distance_fade_min_distance");
		return ptrcall!(float)(_GODOT_get_distance_fade_min_distance, _godot_object);
	}
}
