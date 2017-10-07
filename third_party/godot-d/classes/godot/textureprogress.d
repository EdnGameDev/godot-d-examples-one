module godot.textureprogress;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.range;
import godot.texture;
@GodotBaseClass struct TextureProgress
{
	static immutable string _GODOT_internal_name = "TextureProgress";
public:
	union { godot_object _godot_object; Range base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TextureProgress other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureProgress opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextureProgress _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TextureProgress");
		if(constructor is null) return typeof(this).init;
		return cast(TextureProgress)(constructor());
	}
	enum FillMode : int
	{
		FILL_COUNTER_CLOCKWISE = 5,
		FILL_LEFT_TO_RIGHT = 0,
		FILL_CLOCKWISE = 4,
		FILL_RIGHT_TO_LEFT = 1,
		FILL_TOP_TO_BOTTOM = 2,
		FILL_BOTTOM_TO_TOP = 3,
	}
	enum int FILL_COUNTER_CLOCKWISE = 5;
	enum int FILL_LEFT_TO_RIGHT = 0;
	enum int FILL_CLOCKWISE = 4;
	enum int FILL_RIGHT_TO_LEFT = 1;
	enum int FILL_TOP_TO_BOTTOM = 2;
	enum int FILL_BOTTOM_TO_TOP = 3;
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_under_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_under_texture") = _GODOT_set_under_texture;
	void set_under_texture(in Texture tex)
	{
		_GODOT_set_under_texture.bind("TextureProgress", "set_under_texture");
		ptrcall!(void)(_GODOT_set_under_texture, _godot_object, tex);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_under_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_under_texture") = _GODOT_get_under_texture;
	Texture get_under_texture() const
	{
		_GODOT_get_under_texture.bind("TextureProgress", "get_under_texture");
		return ptrcall!(Texture)(_GODOT_get_under_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_progress_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_progress_texture") = _GODOT_set_progress_texture;
	void set_progress_texture(in Texture tex)
	{
		_GODOT_set_progress_texture.bind("TextureProgress", "set_progress_texture");
		ptrcall!(void)(_GODOT_set_progress_texture, _godot_object, tex);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_progress_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_progress_texture") = _GODOT_get_progress_texture;
	Texture get_progress_texture() const
	{
		_GODOT_get_progress_texture.bind("TextureProgress", "get_progress_texture");
		return ptrcall!(Texture)(_GODOT_get_progress_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_over_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_over_texture") = _GODOT_set_over_texture;
	void set_over_texture(in Texture tex)
	{
		_GODOT_set_over_texture.bind("TextureProgress", "set_over_texture");
		ptrcall!(void)(_GODOT_set_over_texture, _godot_object, tex);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_over_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_over_texture") = _GODOT_get_over_texture;
	Texture get_over_texture() const
	{
		_GODOT_get_over_texture.bind("TextureProgress", "get_over_texture");
		return ptrcall!(Texture)(_GODOT_get_over_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_fill_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fill_mode") = _GODOT_set_fill_mode;
	void set_fill_mode(in int mode)
	{
		_GODOT_set_fill_mode.bind("TextureProgress", "set_fill_mode");
		ptrcall!(void)(_GODOT_set_fill_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_fill_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fill_mode") = _GODOT_get_fill_mode;
	int get_fill_mode()
	{
		_GODOT_get_fill_mode.bind("TextureProgress", "get_fill_mode");
		return ptrcall!(int)(_GODOT_get_fill_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_radial_initial_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_initial_angle") = _GODOT_set_radial_initial_angle;
	void set_radial_initial_angle(in float mode)
	{
		_GODOT_set_radial_initial_angle.bind("TextureProgress", "set_radial_initial_angle");
		ptrcall!(void)(_GODOT_set_radial_initial_angle, _godot_object, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_radial_initial_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_initial_angle") = _GODOT_get_radial_initial_angle;
	float get_radial_initial_angle()
	{
		_GODOT_get_radial_initial_angle.bind("TextureProgress", "get_radial_initial_angle");
		return ptrcall!(float)(_GODOT_get_radial_initial_angle, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_radial_center_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_center_offset") = _GODOT_set_radial_center_offset;
	void set_radial_center_offset(in Vector2 mode)
	{
		_GODOT_set_radial_center_offset.bind("TextureProgress", "set_radial_center_offset");
		ptrcall!(void)(_GODOT_set_radial_center_offset, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_radial_center_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_center_offset") = _GODOT_get_radial_center_offset;
	Vector2 get_radial_center_offset()
	{
		_GODOT_get_radial_center_offset.bind("TextureProgress", "get_radial_center_offset");
		return ptrcall!(Vector2)(_GODOT_get_radial_center_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_fill_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fill_degrees") = _GODOT_set_fill_degrees;
	void set_fill_degrees(in float mode)
	{
		_GODOT_set_fill_degrees.bind("TextureProgress", "set_fill_degrees");
		ptrcall!(void)(_GODOT_set_fill_degrees, _godot_object, mode);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fill_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fill_degrees") = _GODOT_get_fill_degrees;
	float get_fill_degrees()
	{
		_GODOT_get_fill_degrees.bind("TextureProgress", "get_fill_degrees");
		return ptrcall!(float)(_GODOT_get_fill_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_stretch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_margin") = _GODOT_set_stretch_margin;
	void set_stretch_margin(in int margin, in int value)
	{
		_GODOT_set_stretch_margin.bind("TextureProgress", "set_stretch_margin");
		ptrcall!(void)(_GODOT_set_stretch_margin, _godot_object, margin, value);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_stretch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_margin") = _GODOT_get_stretch_margin;
	int get_stretch_margin(in int margin) const
	{
		_GODOT_get_stretch_margin.bind("TextureProgress", "get_stretch_margin");
		return ptrcall!(int)(_GODOT_get_stretch_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_nine_patch_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_nine_patch_stretch") = _GODOT_set_nine_patch_stretch;
	void set_nine_patch_stretch(in bool stretch)
	{
		_GODOT_set_nine_patch_stretch.bind("TextureProgress", "set_nine_patch_stretch");
		ptrcall!(void)(_GODOT_set_nine_patch_stretch, _godot_object, stretch);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_nine_patch_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_nine_patch_stretch") = _GODOT_get_nine_patch_stretch;
	bool get_nine_patch_stretch() const
	{
		_GODOT_get_nine_patch_stretch.bind("TextureProgress", "get_nine_patch_stretch");
		return ptrcall!(bool)(_GODOT_get_nine_patch_stretch, _godot_object);
	}
}
