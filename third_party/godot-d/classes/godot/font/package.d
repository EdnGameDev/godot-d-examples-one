module godot.font;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct Font
{
	static immutable string _GODOT_internal_name = "Font";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Font other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Font opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Font _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Font");
		if(constructor is null) return typeof(this).init;
		return cast(Font)(constructor());
	}
	package(godot) static GodotMethod!(void, RID, Vector2, String, Color, int) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	void draw(StringArg2)(in RID canvas_item, in Vector2 position, in StringArg2 string, in Color modulate = Color(1,1,1,1), in int clip_w = -1) const
	{
		_GODOT_draw.bind("Font", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, canvas_item, position, string, modulate, clip_w);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_ascent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ascent") = _GODOT_get_ascent;
	float get_ascent() const
	{
		_GODOT_get_ascent.bind("Font", "get_ascent");
		return ptrcall!(float)(_GODOT_get_ascent, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_descent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_descent") = _GODOT_get_descent;
	float get_descent() const
	{
		_GODOT_get_descent.bind("Font", "get_descent");
		return ptrcall!(float)(_GODOT_get_descent, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	float get_height() const
	{
		_GODOT_get_height.bind("Font", "get_height");
		return ptrcall!(float)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_distance_field_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_distance_field_hint") = _GODOT_is_distance_field_hint;
	bool is_distance_field_hint() const
	{
		_GODOT_is_distance_field_hint.bind("Font", "is_distance_field_hint");
		return ptrcall!(bool)(_GODOT_is_distance_field_hint, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_get_string_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_string_size") = _GODOT_get_string_size;
	Vector2 get_string_size(StringArg0)(in StringArg0 string) const
	{
		_GODOT_get_string_size.bind("Font", "get_string_size");
		return ptrcall!(Vector2)(_GODOT_get_string_size, _godot_object, string);
	}
	package(godot) static GodotMethod!(float, RID, Vector2, int, int, Color) _GODOT_draw_char;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_char") = _GODOT_draw_char;
	float draw_char(in RID canvas_item, in Vector2 position, in int _char, in int next = -1, in Color modulate = Color(1,1,1,1)) const
	{
		_GODOT_draw_char.bind("Font", "draw_char");
		return ptrcall!(float)(_GODOT_draw_char, _godot_object, canvas_item, position, _char, next, modulate);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_changes;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_changes") = _GODOT_update_changes;
	void update_changes()
	{
		_GODOT_update_changes.bind("Font", "update_changes");
		ptrcall!(void)(_GODOT_update_changes, _godot_object);
	}
}
