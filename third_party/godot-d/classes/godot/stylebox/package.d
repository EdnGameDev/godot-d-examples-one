module godot.stylebox;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct StyleBox
{
	static immutable string _GODOT_internal_name = "StyleBox";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in StyleBox other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBox opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StyleBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StyleBox");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBox)(constructor());
	}
	package(godot) static GodotMethod!(bool, Vector2, Rect2) _GODOT_test_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_mask") = _GODOT_test_mask;
	bool test_mask(in Vector2 point, in Rect2 rect) const
	{
		_GODOT_test_mask.bind("StyleBox", "test_mask");
		return ptrcall!(bool)(_GODOT_test_mask, _godot_object, point, rect);
	}
	package(godot) static GodotMethod!(void, int, float) _GODOT_set_default_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_margin") = _GODOT_set_default_margin;
	void set_default_margin(in int margin, in float offset)
	{
		_GODOT_set_default_margin.bind("StyleBox", "set_default_margin");
		ptrcall!(void)(_GODOT_set_default_margin, _godot_object, margin, offset);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_default_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_margin") = _GODOT_get_default_margin;
	float get_default_margin(in int margin) const
	{
		_GODOT_get_default_margin.bind("StyleBox", "get_default_margin");
		return ptrcall!(float)(_GODOT_get_default_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(float, int) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	float get_margin(in int margin) const
	{
		_GODOT_get_margin.bind("StyleBox", "get_margin");
		return ptrcall!(float)(_GODOT_get_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_minimum_size") = _GODOT_get_minimum_size;
	Vector2 get_minimum_size() const
	{
		_GODOT_get_minimum_size.bind("StyleBox", "get_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_center_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_size") = _GODOT_get_center_size;
	Vector2 get_center_size() const
	{
		_GODOT_get_center_size.bind("StyleBox", "get_center_size");
		return ptrcall!(Vector2)(_GODOT_get_center_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("StyleBox", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, Rect2) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	void draw(in RID canvas_item, in Rect2 rect) const
	{
		_GODOT_draw.bind("StyleBox", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, canvas_item, rect);
	}
}
