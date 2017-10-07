module godot.backbuffercopy;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node2d;
@GodotBaseClass struct BackBufferCopy
{
	static immutable string _GODOT_internal_name = "BackBufferCopy";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BackBufferCopy other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BackBufferCopy opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BackBufferCopy _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BackBufferCopy");
		if(constructor is null) return typeof(this).init;
		return cast(BackBufferCopy)(constructor());
	}
	enum CopyMode : int
	{
		COPY_MODE_RECT = 1,
		COPY_MODE_VIEWPORT = 2,
		COPY_MODE_DISABLED = 0,
	}
	enum int COPY_MODE_RECT = 1;
	enum int COPY_MODE_VIEWPORT = 2;
	enum int COPY_MODE_DISABLED = 0;
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rect") = _GODOT_set_rect;
	void set_rect(in Rect2 rect)
	{
		_GODOT_set_rect.bind("BackBufferCopy", "set_rect");
		ptrcall!(void)(_GODOT_set_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	Rect2 get_rect() const
	{
		_GODOT_get_rect.bind("BackBufferCopy", "get_rect");
		return ptrcall!(Rect2)(_GODOT_get_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_copy_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_copy_mode") = _GODOT_set_copy_mode;
	void set_copy_mode(in int copy_mode)
	{
		_GODOT_set_copy_mode.bind("BackBufferCopy", "set_copy_mode");
		ptrcall!(void)(_GODOT_set_copy_mode, _godot_object, copy_mode);
	}
	package(godot) static GodotMethod!(BackBufferCopy.CopyMode) _GODOT_get_copy_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_copy_mode") = _GODOT_get_copy_mode;
	BackBufferCopy.CopyMode get_copy_mode() const
	{
		_GODOT_get_copy_mode.bind("BackBufferCopy", "get_copy_mode");
		return ptrcall!(BackBufferCopy.CopyMode)(_GODOT_get_copy_mode, _godot_object);
	}
}
