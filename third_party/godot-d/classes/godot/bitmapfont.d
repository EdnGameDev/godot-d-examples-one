module godot.bitmapfont;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.font;
import godot.texture;
@GodotBaseClass struct BitmapFont
{
	static immutable string _GODOT_internal_name = "BitmapFont";
public:
	union { godot_object _godot_object; Font base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BitmapFont other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BitmapFont opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BitmapFont _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BitmapFont");
		if(constructor is null) return typeof(this).init;
		return cast(BitmapFont)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_create_from_fnt;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_fnt") = _GODOT_create_from_fnt;
	GodotError create_from_fnt(StringArg0)(in StringArg0 path)
	{
		_GODOT_create_from_fnt.bind("BitmapFont", "create_from_fnt");
		return ptrcall!(GodotError)(_GODOT_create_from_fnt, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	void set_height(in float px)
	{
		_GODOT_set_height.bind("BitmapFont", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, px);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_ascent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ascent") = _GODOT_set_ascent;
	void set_ascent(in float px)
	{
		_GODOT_set_ascent.bind("BitmapFont", "set_ascent");
		ptrcall!(void)(_GODOT_set_ascent, _godot_object, px);
	}
	package(godot) static GodotMethod!(void, int, int, int) _GODOT_add_kerning_pair;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_kerning_pair") = _GODOT_add_kerning_pair;
	void add_kerning_pair(in int char_a, in int char_b, in int kerning)
	{
		_GODOT_add_kerning_pair.bind("BitmapFont", "add_kerning_pair");
		ptrcall!(void)(_GODOT_add_kerning_pair, _godot_object, char_a, char_b, kerning);
	}
	package(godot) static GodotMethod!(int, int, int) _GODOT_get_kerning_pair;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_kerning_pair") = _GODOT_get_kerning_pair;
	int get_kerning_pair(in int char_a, in int char_b) const
	{
		_GODOT_get_kerning_pair.bind("BitmapFont", "get_kerning_pair");
		return ptrcall!(int)(_GODOT_get_kerning_pair, _godot_object, char_a, char_b);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_add_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_texture") = _GODOT_add_texture;
	void add_texture(in Texture texture)
	{
		_GODOT_add_texture.bind("BitmapFont", "add_texture");
		ptrcall!(void)(_GODOT_add_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, int, int, Rect2, Vector2, float) _GODOT_add_char;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_char") = _GODOT_add_char;
	void add_char(in int character, in int texture, in Rect2 rect, in Vector2 _align = Vector2(0, 0), in float advance = -1)
	{
		_GODOT_add_char.bind("BitmapFont", "add_char");
		ptrcall!(void)(_GODOT_add_char, _godot_object, character, texture, rect, _align, advance);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_texture_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_count") = _GODOT_get_texture_count;
	int get_texture_count() const
	{
		_GODOT_get_texture_count.bind("BitmapFont", "get_texture_count");
		return ptrcall!(int)(_GODOT_get_texture_count, _godot_object);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture(in int idx) const
	{
		_GODOT_get_texture.bind("BitmapFont", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Vector2, int, int) _GODOT_get_char_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_char_size") = _GODOT_get_char_size;
	Vector2 get_char_size(in int _char, in int next = 0) const
	{
		_GODOT_get_char_size.bind("BitmapFont", "get_char_size");
		return ptrcall!(Vector2)(_GODOT_get_char_size, _godot_object, _char, next);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_distance_field_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_field_hint") = _GODOT_set_distance_field_hint;
	void set_distance_field_hint(in bool enable)
	{
		_GODOT_set_distance_field_hint.bind("BitmapFont", "set_distance_field_hint");
		ptrcall!(void)(_GODOT_set_distance_field_hint, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("BitmapFont", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT__set_chars;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_chars") = _GODOT__set_chars;
	void _set_chars(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_chars");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT__get_chars;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_chars") = _GODOT__get_chars;
	PoolIntArray _get_chars() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_chars");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolIntArray);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT__set_kernings;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_kernings") = _GODOT__set_kernings;
	void _set_kernings(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_kernings");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT__get_kernings;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_kernings") = _GODOT__get_kernings;
	PoolIntArray _get_kernings() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_kernings");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolIntArray);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_textures;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_textures") = _GODOT__set_textures;
	void _set_textures(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_textures");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_textures;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_textures") = _GODOT__get_textures;
	Array _get_textures() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_textures");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	package(godot) static GodotMethod!(void, BitmapFont) _GODOT_set_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fallback") = _GODOT_set_fallback;
	void set_fallback(in BitmapFont fallback)
	{
		_GODOT_set_fallback.bind("BitmapFont", "set_fallback");
		ptrcall!(void)(_GODOT_set_fallback, _godot_object, fallback);
	}
	package(godot) static GodotMethod!(BitmapFont) _GODOT_get_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback") = _GODOT_get_fallback;
	BitmapFont get_fallback() const
	{
		_GODOT_get_fallback.bind("BitmapFont", "get_fallback");
		return ptrcall!(BitmapFont)(_GODOT_get_fallback, _godot_object);
	}
}
