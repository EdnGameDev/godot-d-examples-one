module godot.texturerect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
@GodotBaseClass struct TextureRect
{
	static immutable string _GODOT_internal_name = "TextureRect";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TextureRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextureRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TextureRect");
		if(constructor is null) return typeof(this).init;
		return cast(TextureRect)(constructor());
	}
	enum StretchMode : int
	{
		STRETCH_SCALE_ON_EXPAND = 0,
		STRETCH_TILE = 2,
		STRETCH_KEEP = 3,
		STRETCH_KEEP_ASPECT_COVERED = 7,
		STRETCH_KEEP_ASPECT = 5,
		STRETCH_KEEP_CENTERED = 4,
		STRETCH_SCALE = 1,
		STRETCH_KEEP_ASPECT_CENTERED = 6,
	}
	enum int STRETCH_SCALE_ON_EXPAND = 0;
	enum int STRETCH_TILE = 2;
	enum int STRETCH_KEEP = 3;
	enum int STRETCH_KEEP_ASPECT_COVERED = 7;
	enum int STRETCH_KEEP_ASPECT = 5;
	enum int STRETCH_KEEP_CENTERED = 4;
	enum int STRETCH_SCALE = 1;
	enum int STRETCH_KEEP_ASPECT_CENTERED = 6;
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("TextureRect", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("TextureRect", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand") = _GODOT_set_expand;
	void set_expand(in bool enable)
	{
		_GODOT_set_expand.bind("TextureRect", "set_expand");
		ptrcall!(void)(_GODOT_set_expand, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_expand") = _GODOT_has_expand;
	bool has_expand() const
	{
		_GODOT_has_expand.bind("TextureRect", "has_expand");
		return ptrcall!(bool)(_GODOT_has_expand, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_mode") = _GODOT_set_stretch_mode;
	void set_stretch_mode(in int stretch_mode)
	{
		_GODOT_set_stretch_mode.bind("TextureRect", "set_stretch_mode");
		ptrcall!(void)(_GODOT_set_stretch_mode, _godot_object, stretch_mode);
	}
	package(godot) static GodotMethod!(TextureRect.StretchMode) _GODOT_get_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_mode") = _GODOT_get_stretch_mode;
	TextureRect.StretchMode get_stretch_mode() const
	{
		_GODOT_get_stretch_mode.bind("TextureRect", "get_stretch_mode");
		return ptrcall!(TextureRect.StretchMode)(_GODOT_get_stretch_mode, _godot_object);
	}
}
