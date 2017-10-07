module godot.label;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct Label
{
	static immutable string _GODOT_internal_name = "Label";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Label other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Label opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Label _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Label");
		if(constructor is null) return typeof(this).init;
		return cast(Label)(constructor());
	}
	enum Align : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
		ALIGN_FILL = 3,
	}
	enum VAlign : int
	{
		VALIGN_BOTTOM = 2,
		VALIGN_TOP = 0,
		VALIGN_CENTER = 1,
		VALIGN_FILL = 3,
	}
	enum int ALIGN_FILL = 3;
	enum int VALIGN_BOTTOM = 2;
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
	enum int VALIGN_TOP = 0;
	enum int VALIGN_FILL = 3;
	enum int VALIGN_CENTER = 1;
	package(godot) static GodotMethod!(void, int) _GODOT_set_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_align") = _GODOT_set_align;
	void set_align(in int _align)
	{
		_GODOT_set_align.bind("Label", "set_align");
		ptrcall!(void)(_GODOT_set_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(Label.Align) _GODOT_get_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_align") = _GODOT_get_align;
	Label.Align get_align() const
	{
		_GODOT_get_align.bind("Label", "get_align");
		return ptrcall!(Label.Align)(_GODOT_get_align, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_valign;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_valign") = _GODOT_set_valign;
	void set_valign(in int valign)
	{
		_GODOT_set_valign.bind("Label", "set_valign");
		ptrcall!(void)(_GODOT_set_valign, _godot_object, valign);
	}
	package(godot) static GodotMethod!(Label.VAlign) _GODOT_get_valign;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_valign") = _GODOT_get_valign;
	Label.VAlign get_valign() const
	{
		_GODOT_get_valign.bind("Label", "get_valign");
		return ptrcall!(Label.VAlign)(_GODOT_get_valign, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("Label", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text() const
	{
		_GODOT_get_text.bind("Label", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autowrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autowrap") = _GODOT_set_autowrap;
	void set_autowrap(in bool enable)
	{
		_GODOT_set_autowrap.bind("Label", "set_autowrap");
		ptrcall!(void)(_GODOT_set_autowrap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_autowrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_autowrap") = _GODOT_has_autowrap;
	bool has_autowrap() const
	{
		_GODOT_has_autowrap.bind("Label", "has_autowrap");
		return ptrcall!(bool)(_GODOT_has_autowrap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_text") = _GODOT_set_clip_text;
	void set_clip_text(in bool enable)
	{
		_GODOT_set_clip_text.bind("Label", "set_clip_text");
		ptrcall!(void)(_GODOT_set_clip_text, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_clipping_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_clipping_text") = _GODOT_is_clipping_text;
	bool is_clipping_text() const
	{
		_GODOT_is_clipping_text.bind("Label", "is_clipping_text");
		return ptrcall!(bool)(_GODOT_is_clipping_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_uppercase;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uppercase") = _GODOT_set_uppercase;
	void set_uppercase(in bool enable)
	{
		_GODOT_set_uppercase.bind("Label", "set_uppercase");
		ptrcall!(void)(_GODOT_set_uppercase, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_uppercase;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_uppercase") = _GODOT_is_uppercase;
	bool is_uppercase() const
	{
		_GODOT_is_uppercase.bind("Label", "is_uppercase");
		return ptrcall!(bool)(_GODOT_is_uppercase, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_line_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_height") = _GODOT_get_line_height;
	int get_line_height() const
	{
		_GODOT_get_line_height.bind("Label", "get_line_height");
		return ptrcall!(int)(_GODOT_get_line_height, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_count") = _GODOT_get_line_count;
	int get_line_count() const
	{
		_GODOT_get_line_count.bind("Label", "get_line_count");
		return ptrcall!(int)(_GODOT_get_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_visible_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_line_count") = _GODOT_get_visible_line_count;
	int get_visible_line_count() const
	{
		_GODOT_get_visible_line_count.bind("Label", "get_visible_line_count");
		return ptrcall!(int)(_GODOT_get_visible_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_total_character_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_character_count") = _GODOT_get_total_character_count;
	int get_total_character_count() const
	{
		_GODOT_get_total_character_count.bind("Label", "get_total_character_count");
		return ptrcall!(int)(_GODOT_get_total_character_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible_characters") = _GODOT_set_visible_characters;
	void set_visible_characters(in int amount)
	{
		_GODOT_set_visible_characters.bind("Label", "set_visible_characters");
		ptrcall!(void)(_GODOT_set_visible_characters, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_characters") = _GODOT_get_visible_characters;
	int get_visible_characters() const
	{
		_GODOT_get_visible_characters.bind("Label", "get_visible_characters");
		return ptrcall!(int)(_GODOT_get_visible_characters, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_percent_visible") = _GODOT_set_percent_visible;
	void set_percent_visible(in float percent_visible)
	{
		_GODOT_set_percent_visible.bind("Label", "set_percent_visible");
		ptrcall!(void)(_GODOT_set_percent_visible, _godot_object, percent_visible);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_percent_visible") = _GODOT_get_percent_visible;
	float get_percent_visible() const
	{
		_GODOT_get_percent_visible.bind("Label", "get_percent_visible");
		return ptrcall!(float)(_GODOT_get_percent_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_lines_skipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lines_skipped") = _GODOT_set_lines_skipped;
	void set_lines_skipped(in int lines_skipped)
	{
		_GODOT_set_lines_skipped.bind("Label", "set_lines_skipped");
		ptrcall!(void)(_GODOT_set_lines_skipped, _godot_object, lines_skipped);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_lines_skipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lines_skipped") = _GODOT_get_lines_skipped;
	int get_lines_skipped() const
	{
		_GODOT_get_lines_skipped.bind("Label", "get_lines_skipped");
		return ptrcall!(int)(_GODOT_get_lines_skipped, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_lines_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_lines_visible") = _GODOT_set_max_lines_visible;
	void set_max_lines_visible(in int lines_visible)
	{
		_GODOT_set_max_lines_visible.bind("Label", "set_max_lines_visible");
		ptrcall!(void)(_GODOT_set_max_lines_visible, _godot_object, lines_visible);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_lines_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_lines_visible") = _GODOT_get_max_lines_visible;
	int get_max_lines_visible() const
	{
		_GODOT_get_max_lines_visible.bind("Label", "get_max_lines_visible");
		return ptrcall!(int)(_GODOT_get_max_lines_visible, _godot_object);
	}
}
