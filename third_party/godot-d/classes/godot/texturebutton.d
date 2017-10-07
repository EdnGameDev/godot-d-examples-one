module godot.texturebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.basebutton;
import godot.texture;
import godot.bitmap;
@GodotBaseClass struct TextureButton
{
	static immutable string _GODOT_internal_name = "TextureButton";
public:
	union { godot_object _godot_object; BaseButton base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TextureButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextureButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TextureButton");
		if(constructor is null) return typeof(this).init;
		return cast(TextureButton)(constructor());
	}
	enum StretchMode : int
	{
		STRETCH_TILE = 1,
		STRETCH_KEEP = 2,
		STRETCH_KEEP_ASPECT_COVERED = 6,
		STRETCH_KEEP_ASPECT = 4,
		STRETCH_KEEP_CENTERED = 3,
		STRETCH_SCALE = 0,
		STRETCH_KEEP_ASPECT_CENTERED = 5,
	}
	enum int STRETCH_TILE = 1;
	enum int STRETCH_KEEP = 2;
	enum int STRETCH_KEEP_ASPECT_COVERED = 6;
	enum int STRETCH_KEEP_ASPECT = 4;
	enum int STRETCH_KEEP_CENTERED = 3;
	enum int STRETCH_SCALE = 0;
	enum int STRETCH_KEEP_ASPECT_CENTERED = 5;
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_texture") = _GODOT_set_normal_texture;
	void set_normal_texture(in Texture texture)
	{
		_GODOT_set_normal_texture.bind("TextureButton", "set_normal_texture");
		ptrcall!(void)(_GODOT_set_normal_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_pressed_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed_texture") = _GODOT_set_pressed_texture;
	void set_pressed_texture(in Texture texture)
	{
		_GODOT_set_pressed_texture.bind("TextureButton", "set_pressed_texture");
		ptrcall!(void)(_GODOT_set_pressed_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_hover_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hover_texture") = _GODOT_set_hover_texture;
	void set_hover_texture(in Texture texture)
	{
		_GODOT_set_hover_texture.bind("TextureButton", "set_hover_texture");
		ptrcall!(void)(_GODOT_set_hover_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_disabled_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled_texture") = _GODOT_set_disabled_texture;
	void set_disabled_texture(in Texture texture)
	{
		_GODOT_set_disabled_texture.bind("TextureButton", "set_disabled_texture");
		ptrcall!(void)(_GODOT_set_disabled_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_focused_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focused_texture") = _GODOT_set_focused_texture;
	void set_focused_texture(in Texture texture)
	{
		_GODOT_set_focused_texture.bind("TextureButton", "set_focused_texture");
		ptrcall!(void)(_GODOT_set_focused_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, BitMap) _GODOT_set_click_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_click_mask") = _GODOT_set_click_mask;
	void set_click_mask(in BitMap mask)
	{
		_GODOT_set_click_mask.bind("TextureButton", "set_click_mask");
		ptrcall!(void)(_GODOT_set_click_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand") = _GODOT_set_expand;
	void set_expand(in bool p_expand)
	{
		_GODOT_set_expand.bind("TextureButton", "set_expand");
		ptrcall!(void)(_GODOT_set_expand, _godot_object, p_expand);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_mode") = _GODOT_set_stretch_mode;
	void set_stretch_mode(in int p_mode)
	{
		_GODOT_set_stretch_mode.bind("TextureButton", "set_stretch_mode");
		ptrcall!(void)(_GODOT_set_stretch_mode, _godot_object, p_mode);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_texture") = _GODOT_get_normal_texture;
	Texture get_normal_texture() const
	{
		_GODOT_get_normal_texture.bind("TextureButton", "get_normal_texture");
		return ptrcall!(Texture)(_GODOT_get_normal_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_pressed_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressed_texture") = _GODOT_get_pressed_texture;
	Texture get_pressed_texture() const
	{
		_GODOT_get_pressed_texture.bind("TextureButton", "get_pressed_texture");
		return ptrcall!(Texture)(_GODOT_get_pressed_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_hover_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hover_texture") = _GODOT_get_hover_texture;
	Texture get_hover_texture() const
	{
		_GODOT_get_hover_texture.bind("TextureButton", "get_hover_texture");
		return ptrcall!(Texture)(_GODOT_get_hover_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_disabled_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_disabled_texture") = _GODOT_get_disabled_texture;
	Texture get_disabled_texture() const
	{
		_GODOT_get_disabled_texture.bind("TextureButton", "get_disabled_texture");
		return ptrcall!(Texture)(_GODOT_get_disabled_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_focused_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focused_texture") = _GODOT_get_focused_texture;
	Texture get_focused_texture() const
	{
		_GODOT_get_focused_texture.bind("TextureButton", "get_focused_texture");
		return ptrcall!(Texture)(_GODOT_get_focused_texture, _godot_object);
	}
	package(godot) static GodotMethod!(BitMap) _GODOT_get_click_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_click_mask") = _GODOT_get_click_mask;
	BitMap get_click_mask() const
	{
		_GODOT_get_click_mask.bind("TextureButton", "get_click_mask");
		return ptrcall!(BitMap)(_GODOT_get_click_mask, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand") = _GODOT_get_expand;
	bool get_expand() const
	{
		_GODOT_get_expand.bind("TextureButton", "get_expand");
		return ptrcall!(bool)(_GODOT_get_expand, _godot_object);
	}
	package(godot) static GodotMethod!(TextureButton.StretchMode) _GODOT_get_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_mode") = _GODOT_get_stretch_mode;
	TextureButton.StretchMode get_stretch_mode() const
	{
		_GODOT_get_stretch_mode.bind("TextureButton", "get_stretch_mode");
		return ptrcall!(TextureButton.StretchMode)(_GODOT_get_stretch_mode, _godot_object);
	}
}
