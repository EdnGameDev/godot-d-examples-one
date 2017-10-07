module godot.popup;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct Popup
{
	static immutable string _GODOT_internal_name = "Popup";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Popup other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Popup opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Popup _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Popup");
		if(constructor is null) return typeof(this).init;
		return cast(Popup)(constructor());
	}
	enum int NOTIFICATION_POST_POPUP = 80;
	enum int NOTIFICATION_POPUP_HIDE = 81;
	package(godot) static GodotMethod!(void, Vector2) _GODOT_popup_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup_centered") = _GODOT_popup_centered;
	void popup_centered(in Vector2 size = Vector2(0, 0))
	{
		_GODOT_popup_centered.bind("Popup", "popup_centered");
		ptrcall!(void)(_GODOT_popup_centered, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_popup_centered_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup_centered_ratio") = _GODOT_popup_centered_ratio;
	void popup_centered_ratio(in float ratio = 0.75)
	{
		_GODOT_popup_centered_ratio.bind("Popup", "popup_centered_ratio");
		ptrcall!(void)(_GODOT_popup_centered_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_popup_centered_minsize;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup_centered_minsize") = _GODOT_popup_centered_minsize;
	void popup_centered_minsize(in Vector2 minsize = Vector2(0, 0))
	{
		_GODOT_popup_centered_minsize.bind("Popup", "popup_centered_minsize");
		ptrcall!(void)(_GODOT_popup_centered_minsize, _godot_object, minsize);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup") = _GODOT_popup;
	void popup(in Rect2 bounds = Rect2(0, 0, 0, 0))
	{
		_GODOT_popup.bind("Popup", "popup");
		ptrcall!(void)(_GODOT_popup, _godot_object, bounds);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclusive;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclusive") = _GODOT_set_exclusive;
	void set_exclusive(in bool enable)
	{
		_GODOT_set_exclusive.bind("Popup", "set_exclusive");
		ptrcall!(void)(_GODOT_set_exclusive, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_exclusive;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_exclusive") = _GODOT_is_exclusive;
	bool is_exclusive() const
	{
		_GODOT_is_exclusive.bind("Popup", "is_exclusive");
		return ptrcall!(bool)(_GODOT_is_exclusive, _godot_object);
	}
}
