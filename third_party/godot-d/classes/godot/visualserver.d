module godot.visualserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.image;
@GodotBaseClass struct VisualServerSingleton
{
	static immutable string _GODOT_internal_name = "VisualServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "VisualServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualServer");
		if(constructor is null) return typeof(this).init;
		return cast(VisualServerSingleton)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT_force_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_draw") = _GODOT_force_draw;
	void force_draw()
	{
		_GODOT_force_draw.bind("VisualServer", "force_draw");
		ptrcall!(void)(_GODOT_force_draw, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_texture_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_create") = _GODOT_texture_create;
	RID texture_create()
	{
		_GODOT_texture_create.bind("VisualServer", "texture_create");
		return ptrcall!(RID)(_GODOT_texture_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID, Image, int) _GODOT_texture_create_from_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_create_from_image") = _GODOT_texture_create_from_image;
	RID texture_create_from_image(in Image image, in int flags = 7)
	{
		_GODOT_texture_create_from_image.bind("VisualServer", "texture_create_from_image");
		return ptrcall!(RID)(_GODOT_texture_create_from_image, _godot_object, image, flags);
	}
	package(godot) static GodotMethod!(void, RID, int) _GODOT_texture_set_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_flags") = _GODOT_texture_set_flags;
	void texture_set_flags(in RID texture, in int flags)
	{
		_GODOT_texture_set_flags.bind("VisualServer", "texture_set_flags");
		ptrcall!(void)(_GODOT_texture_set_flags, _godot_object, texture, flags);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_texture_get_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_flags") = _GODOT_texture_get_flags;
	int texture_get_flags(in RID texture) const
	{
		_GODOT_texture_get_flags.bind("VisualServer", "texture_get_flags");
		return ptrcall!(int)(_GODOT_texture_get_flags, _godot_object, texture);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_texture_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_width") = _GODOT_texture_get_width;
	int texture_get_width(in RID texture) const
	{
		_GODOT_texture_get_width.bind("VisualServer", "texture_get_width");
		return ptrcall!(int)(_GODOT_texture_get_width, _godot_object, texture);
	}
	package(godot) static GodotMethod!(int, RID) _GODOT_texture_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_height") = _GODOT_texture_get_height;
	int texture_get_height(in RID texture) const
	{
		_GODOT_texture_get_height.bind("VisualServer", "texture_get_height");
		return ptrcall!(int)(_GODOT_texture_get_height, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_texture_set_shrink_all_x2_on_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_shrink_all_x2_on_set_data") = _GODOT_texture_set_shrink_all_x2_on_set_data;
	void texture_set_shrink_all_x2_on_set_data(in bool shrink)
	{
		_GODOT_texture_set_shrink_all_x2_on_set_data.bind("VisualServer", "texture_set_shrink_all_x2_on_set_data");
		ptrcall!(void)(_GODOT_texture_set_shrink_all_x2_on_set_data, _godot_object, shrink);
	}
}
@property pragma(inline, true)
VisualServerSingleton VisualServer()
{
	return VisualServerSingleton._GODOT_singleton();
}
