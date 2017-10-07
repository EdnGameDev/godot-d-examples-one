module godot.sprite3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spritebase3d;
import godot.texture;
@GodotBaseClass struct Sprite3D
{
	static immutable string _GODOT_internal_name = "Sprite3D";
public:
	union { godot_object _godot_object; SpriteBase3D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Sprite3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sprite3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Sprite3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Sprite3D");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite3D)(constructor());
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	void set_texture(in Texture texture)
	{
		_GODOT_set_texture.bind("Sprite3D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	Texture get_texture() const
	{
		_GODOT_get_texture.bind("Sprite3D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region") = _GODOT_set_region;
	void set_region(in bool enabled)
	{
		_GODOT_set_region.bind("Sprite3D", "set_region");
		ptrcall!(void)(_GODOT_set_region, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_region") = _GODOT_is_region;
	bool is_region() const
	{
		_GODOT_is_region.bind("Sprite3D", "is_region");
		return ptrcall!(bool)(_GODOT_is_region, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	void set_region_rect(in Rect2 rect)
	{
		_GODOT_set_region_rect.bind("Sprite3D", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	Rect2 get_region_rect() const
	{
		_GODOT_get_region_rect.bind("Sprite3D", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	void set_frame(in int frame)
	{
		_GODOT_set_frame.bind("Sprite3D", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	int get_frame() const
	{
		_GODOT_get_frame.bind("Sprite3D", "get_frame");
		return ptrcall!(int)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vframes") = _GODOT_set_vframes;
	void set_vframes(in int vframes)
	{
		_GODOT_set_vframes.bind("Sprite3D", "set_vframes");
		ptrcall!(void)(_GODOT_set_vframes, _godot_object, vframes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vframes") = _GODOT_get_vframes;
	int get_vframes() const
	{
		_GODOT_get_vframes.bind("Sprite3D", "get_vframes");
		return ptrcall!(int)(_GODOT_get_vframes, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hframes") = _GODOT_set_hframes;
	void set_hframes(in int hframes)
	{
		_GODOT_set_hframes.bind("Sprite3D", "set_hframes");
		ptrcall!(void)(_GODOT_set_hframes, _godot_object, hframes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hframes") = _GODOT_get_hframes;
	int get_hframes() const
	{
		_GODOT_get_hframes.bind("Sprite3D", "get_hframes");
		return ptrcall!(int)(_GODOT_get_hframes, _godot_object);
	}
}
