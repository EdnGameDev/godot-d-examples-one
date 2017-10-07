module godot.largetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.texture;
@GodotBaseClass struct LargeTexture
{
	static immutable string _GODOT_internal_name = "LargeTexture";
public:
	union { godot_object _godot_object; Texture base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in LargeTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LargeTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LargeTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LargeTexture");
		if(constructor is null) return typeof(this).init;
		return cast(LargeTexture)(constructor());
	}
	package(godot) static GodotMethod!(int, Vector2, Texture) _GODOT_add_piece;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_piece") = _GODOT_add_piece;
	int add_piece(in Vector2 ofs, in Texture texture)
	{
		_GODOT_add_piece.bind("LargeTexture", "add_piece");
		return ptrcall!(int)(_GODOT_add_piece, _godot_object, ofs, texture);
	}
	package(godot) static GodotMethod!(void, int, Vector2) _GODOT_set_piece_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_piece_offset") = _GODOT_set_piece_offset;
	void set_piece_offset(in int idx, in Vector2 ofs)
	{
		_GODOT_set_piece_offset.bind("LargeTexture", "set_piece_offset");
		ptrcall!(void)(_GODOT_set_piece_offset, _godot_object, idx, ofs);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_piece_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_piece_texture") = _GODOT_set_piece_texture;
	void set_piece_texture(in int idx, in Texture texture)
	{
		_GODOT_set_piece_texture.bind("LargeTexture", "set_piece_texture");
		ptrcall!(void)(_GODOT_set_piece_texture, _godot_object, idx, texture);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in Vector2 size)
	{
		_GODOT_set_size.bind("LargeTexture", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	void clear()
	{
		_GODOT_clear.bind("LargeTexture", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_piece_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_piece_count") = _GODOT_get_piece_count;
	int get_piece_count() const
	{
		_GODOT_get_piece_count.bind("LargeTexture", "get_piece_count");
		return ptrcall!(int)(_GODOT_get_piece_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, int) _GODOT_get_piece_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_piece_offset") = _GODOT_get_piece_offset;
	Vector2 get_piece_offset(in int idx) const
	{
		_GODOT_get_piece_offset.bind("LargeTexture", "get_piece_offset");
		return ptrcall!(Vector2)(_GODOT_get_piece_offset, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_piece_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_piece_texture") = _GODOT_get_piece_texture;
	Texture get_piece_texture(in int idx) const
	{
		_GODOT_get_piece_texture.bind("LargeTexture", "get_piece_texture");
		return ptrcall!(Texture)(_GODOT_get_piece_texture, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	void _set_data(in Array data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	Array _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
