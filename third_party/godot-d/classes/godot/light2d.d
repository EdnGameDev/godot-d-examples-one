module godot.light2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
@GodotBaseClass struct Light2D
{
	static immutable string _GODOT_internal_name = "Light2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Light2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Light2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Light2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Light2D");
		if(constructor is null) return typeof(this).init;
		return cast(Light2D)(constructor());
	}
	enum ShadowFilter : int
	{
		SHADOW_FILTER_PCF3 = 1,
		SHADOW_FILTER_PCF9 = 4,
		SHADOW_FILTER_PCF5 = 2,
		SHADOW_FILTER_PCF7 = 3,
		SHADOW_FILTER_NONE = 0,
		SHADOW_FILTER_PCF13 = 5,
	}
	enum Mode : int
	{
		MODE_ADD = 0,
		MODE_MASK = 3,
		MODE_SUB = 1,
		MODE_MIX = 2,
	}
	enum int SHADOW_FILTER_PCF9 = 4;
	enum int SHADOW_FILTER_PCF7 = 3;
	enum int SHADOW_FILTER_NONE = 0;
	enum int MODE_MIX = 2;
	enum int MODE_MASK = 3;
	enum int SHADOW_FILTER_PCF3 = 1;
	enum int SHADOW_FILTER_PCF5 = 2;
	enum int SHADOW_FILTER_PCF13 = 5;
	enum int MODE_ADD = 0;
	enum int MODE_SUB = 1;
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled") = _GODOT_set_enabled;
	void set_enabled(in bool enabled)
	{
		_GODOT_set_enabled.bind("Light2D", "set_enabled");
		ptrcall!(void)(_GODOT_set_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabled") = _GODOT_is_enabled;
	bool is_enabled() const
	{
		_GODOT_is_enabled.bind("Light2D", "is_enabled");
		return ptrcall!(bool)(_GODOT_is_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editor_only") = _GODOT_set_editor_only;
	void set_editor_only(in bool editor_only)
	{
		_GODOT_set_editor_only.bind("Light2D", "set_editor_only");
		ptrcall!(void)(_GODOT_set_editor_only, _godot_object, editor_only);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editor_only") = _GODOT_is_editor_only;
	bool is_editor_only() const
	{
		_GODOT_is_editor_only.bind("Light2D", "is_editor_only");
		return ptrcall!(bool)(_GODOT_is_editor_only, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("Light2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("Light2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_offset") = _GODOT_set_texture_offset;
	void set_texture_offset(in Vector2 texture_offset)
	{
		_GODOT_set_texture_offset.bind("Light2D", "set_texture_offset");
		ptrcall!(void)(_GODOT_set_texture_offset, _godot_object, texture_offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_offset") = _GODOT_get_texture_offset;
	Vector2 get_texture_offset() const
	{
		_GODOT_get_texture_offset.bind("Light2D", "get_texture_offset");
		return ptrcall!(Vector2)(_GODOT_get_texture_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	void set_color(in Color color)
	{
		_GODOT_set_color.bind("Light2D", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	Color get_color() const
	{
		_GODOT_get_color.bind("Light2D", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	void set_height(in float height)
	{
		_GODOT_set_height.bind("Light2D", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	float get_height() const
	{
		_GODOT_get_height.bind("Light2D", "get_height");
		return ptrcall!(float)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	void set_energy(in float energy)
	{
		_GODOT_set_energy.bind("Light2D", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	float get_energy() const
	{
		_GODOT_get_energy.bind("Light2D", "get_energy");
		return ptrcall!(float)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_scale") = _GODOT_set_texture_scale;
	void set_texture_scale(in float texture_scale)
	{
		_GODOT_set_texture_scale.bind("Light2D", "set_texture_scale");
		ptrcall!(void)(_GODOT_set_texture_scale, _godot_object, texture_scale);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_scale") = _GODOT_get_texture_scale;
	float get_texture_scale() const
	{
		_GODOT_get_texture_scale.bind("Light2D", "get_texture_scale");
		return ptrcall!(float)(_GODOT_get_texture_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_z_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_range_min") = _GODOT_set_z_range_min;
	void set_z_range_min(in int z)
	{
		_GODOT_set_z_range_min.bind("Light2D", "set_z_range_min");
		ptrcall!(void)(_GODOT_set_z_range_min, _godot_object, z);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_z_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_z_range_min") = _GODOT_get_z_range_min;
	int get_z_range_min() const
	{
		_GODOT_get_z_range_min.bind("Light2D", "get_z_range_min");
		return ptrcall!(int)(_GODOT_get_z_range_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_z_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_range_max") = _GODOT_set_z_range_max;
	void set_z_range_max(in int z)
	{
		_GODOT_set_z_range_max.bind("Light2D", "set_z_range_max");
		ptrcall!(void)(_GODOT_set_z_range_max, _godot_object, z);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_z_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_z_range_max") = _GODOT_get_z_range_max;
	int get_z_range_max() const
	{
		_GODOT_get_z_range_max.bind("Light2D", "get_z_range_max");
		return ptrcall!(int)(_GODOT_get_z_range_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_layer_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer_range_min") = _GODOT_set_layer_range_min;
	void set_layer_range_min(in int layer)
	{
		_GODOT_set_layer_range_min.bind("Light2D", "set_layer_range_min");
		ptrcall!(void)(_GODOT_set_layer_range_min, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_layer_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer_range_min") = _GODOT_get_layer_range_min;
	int get_layer_range_min() const
	{
		_GODOT_get_layer_range_min.bind("Light2D", "get_layer_range_min");
		return ptrcall!(int)(_GODOT_get_layer_range_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_layer_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer_range_max") = _GODOT_set_layer_range_max;
	void set_layer_range_max(in int layer)
	{
		_GODOT_set_layer_range_max.bind("Light2D", "set_layer_range_max");
		ptrcall!(void)(_GODOT_set_layer_range_max, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_layer_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer_range_max") = _GODOT_get_layer_range_max;
	int get_layer_range_max() const
	{
		_GODOT_get_layer_range_max.bind("Light2D", "get_layer_range_max");
		return ptrcall!(int)(_GODOT_get_layer_range_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_item_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_cull_mask") = _GODOT_set_item_cull_mask;
	void set_item_cull_mask(in int item_cull_mask)
	{
		_GODOT_set_item_cull_mask.bind("Light2D", "set_item_cull_mask");
		ptrcall!(void)(_GODOT_set_item_cull_mask, _godot_object, item_cull_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_item_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_cull_mask") = _GODOT_get_item_cull_mask;
	int get_item_cull_mask() const
	{
		_GODOT_get_item_cull_mask.bind("Light2D", "get_item_cull_mask");
		return ptrcall!(int)(_GODOT_get_item_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_item_shadow_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_shadow_cull_mask") = _GODOT_set_item_shadow_cull_mask;
	void set_item_shadow_cull_mask(in int item_shadow_cull_mask)
	{
		_GODOT_set_item_shadow_cull_mask.bind("Light2D", "set_item_shadow_cull_mask");
		ptrcall!(void)(_GODOT_set_item_shadow_cull_mask, _godot_object, item_shadow_cull_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_item_shadow_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_shadow_cull_mask") = _GODOT_get_item_shadow_cull_mask;
	int get_item_shadow_cull_mask() const
	{
		_GODOT_get_item_shadow_cull_mask.bind("Light2D", "get_item_shadow_cull_mask");
		return ptrcall!(int)(_GODOT_get_item_shadow_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	void set_mode(in int mode)
	{
		_GODOT_set_mode.bind("Light2D", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Light2D.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	Light2D.Mode get_mode() const
	{
		_GODOT_get_mode.bind("Light2D", "get_mode");
		return ptrcall!(Light2D.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shadow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_enabled") = _GODOT_set_shadow_enabled;
	void set_shadow_enabled(in bool enabled)
	{
		_GODOT_set_shadow_enabled.bind("Light2D", "set_shadow_enabled");
		ptrcall!(void)(_GODOT_set_shadow_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_shadow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shadow_enabled") = _GODOT_is_shadow_enabled;
	bool is_shadow_enabled() const
	{
		_GODOT_is_shadow_enabled.bind("Light2D", "is_shadow_enabled");
		return ptrcall!(bool)(_GODOT_is_shadow_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_buffer_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_buffer_size") = _GODOT_set_shadow_buffer_size;
	void set_shadow_buffer_size(in int size)
	{
		_GODOT_set_shadow_buffer_size.bind("Light2D", "set_shadow_buffer_size");
		ptrcall!(void)(_GODOT_set_shadow_buffer_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_shadow_buffer_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_buffer_size") = _GODOT_get_shadow_buffer_size;
	int get_shadow_buffer_size() const
	{
		_GODOT_get_shadow_buffer_size.bind("Light2D", "get_shadow_buffer_size");
		return ptrcall!(int)(_GODOT_get_shadow_buffer_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_shadow_smooth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_smooth") = _GODOT_set_shadow_smooth;
	void set_shadow_smooth(in float smooth)
	{
		_GODOT_set_shadow_smooth.bind("Light2D", "set_shadow_smooth");
		ptrcall!(void)(_GODOT_set_shadow_smooth, _godot_object, smooth);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_shadow_smooth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_smooth") = _GODOT_get_shadow_smooth;
	float get_shadow_smooth() const
	{
		_GODOT_get_shadow_smooth.bind("Light2D", "get_shadow_smooth");
		return ptrcall!(float)(_GODOT_get_shadow_smooth, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_shadow_gradient_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_gradient_length") = _GODOT_set_shadow_gradient_length;
	void set_shadow_gradient_length(in float multiplier)
	{
		_GODOT_set_shadow_gradient_length.bind("Light2D", "set_shadow_gradient_length");
		ptrcall!(void)(_GODOT_set_shadow_gradient_length, _godot_object, multiplier);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_shadow_gradient_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_gradient_length") = _GODOT_get_shadow_gradient_length;
	float get_shadow_gradient_length() const
	{
		_GODOT_get_shadow_gradient_length.bind("Light2D", "get_shadow_gradient_length");
		return ptrcall!(float)(_GODOT_get_shadow_gradient_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_filter") = _GODOT_set_shadow_filter;
	void set_shadow_filter(in int filter)
	{
		_GODOT_set_shadow_filter.bind("Light2D", "set_shadow_filter");
		ptrcall!(void)(_GODOT_set_shadow_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(Light2D.ShadowFilter) _GODOT_get_shadow_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_filter") = _GODOT_get_shadow_filter;
	Light2D.ShadowFilter get_shadow_filter() const
	{
		_GODOT_get_shadow_filter.bind("Light2D", "get_shadow_filter");
		return ptrcall!(Light2D.ShadowFilter)(_GODOT_get_shadow_filter, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_color") = _GODOT_set_shadow_color;
	void set_shadow_color(in Color shadow_color)
	{
		_GODOT_set_shadow_color.bind("Light2D", "set_shadow_color");
		ptrcall!(void)(_GODOT_set_shadow_color, _godot_object, shadow_color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_color") = _GODOT_get_shadow_color;
	Color get_shadow_color() const
	{
		_GODOT_get_shadow_color.bind("Light2D", "get_shadow_color");
		return ptrcall!(Color)(_GODOT_get_shadow_color, _godot_object);
	}
}
