module godot.tabs;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.inputevent;
import godot.texture;
@GodotBaseClass struct Tabs
{
	static immutable string _GODOT_internal_name = "Tabs";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Tabs other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tabs opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tabs _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Tabs");
		if(constructor is null) return typeof(this).init;
		return cast(Tabs)(constructor());
	}
	enum CloseButtonDisplayPolicy : int
	{
		CLOSE_BUTTON_SHOW_NEVER = 0,
		CLOSE_BUTTON_SHOW_ACTIVE_ONLY = 1,
		CLOSE_BUTTON_SHOW_ALWAYS = 2,
		CLOSE_BUTTON_MAX = 3,
	}
	enum TabAlign : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
		ALIGN_MAX = 3,
	}
	enum int ALIGN_MAX = 3;
	enum int CLOSE_BUTTON_SHOW_ALWAYS = 2;
	enum int CLOSE_BUTTON_MAX = 3;
	enum int CLOSE_BUTTON_SHOW_NEVER = 0;
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
	enum int CLOSE_BUTTON_SHOW_ACTIVE_ONLY = 1;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_tab_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_count") = _GODOT_get_tab_count;
	int get_tab_count() const
	{
		_GODOT_get_tab_count.bind("Tabs", "get_tab_count");
		return ptrcall!(int)(_GODOT_get_tab_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_tab") = _GODOT_set_current_tab;
	void set_current_tab(in int tab_idx)
	{
		_GODOT_set_current_tab.bind("Tabs", "set_current_tab");
		ptrcall!(void)(_GODOT_set_current_tab, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_tab") = _GODOT_get_current_tab;
	int get_current_tab() const
	{
		_GODOT_get_current_tab.bind("Tabs", "get_current_tab");
		return ptrcall!(int)(_GODOT_get_current_tab, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_title") = _GODOT_set_tab_title;
	void set_tab_title(StringArg1)(in int tab_idx, in StringArg1 title)
	{
		_GODOT_set_tab_title.bind("Tabs", "set_tab_title");
		ptrcall!(void)(_GODOT_set_tab_title, _godot_object, tab_idx, title);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_title") = _GODOT_get_tab_title;
	String get_tab_title(in int tab_idx) const
	{
		_GODOT_get_tab_title.bind("Tabs", "get_tab_title");
		return ptrcall!(String)(_GODOT_get_tab_title, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_icon") = _GODOT_set_tab_icon;
	void set_tab_icon(in int tab_idx, in Texture icon)
	{
		_GODOT_set_tab_icon.bind("Tabs", "set_tab_icon");
		ptrcall!(void)(_GODOT_set_tab_icon, _godot_object, tab_idx, icon);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_icon") = _GODOT_get_tab_icon;
	Texture get_tab_icon(in int tab_idx) const
	{
		_GODOT_get_tab_icon.bind("Tabs", "get_tab_icon");
		return ptrcall!(Texture)(_GODOT_get_tab_icon, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_disabled") = _GODOT_set_tab_disabled;
	void set_tab_disabled(in int tab_idx, in bool disabled)
	{
		_GODOT_set_tab_disabled.bind("Tabs", "set_tab_disabled");
		ptrcall!(void)(_GODOT_set_tab_disabled, _godot_object, tab_idx, disabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_disabled") = _GODOT_get_tab_disabled;
	bool get_tab_disabled(in int tab_idx) const
	{
		_GODOT_get_tab_disabled.bind("Tabs", "get_tab_disabled");
		return ptrcall!(bool)(_GODOT_get_tab_disabled, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_remove_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_tab") = _GODOT_remove_tab;
	void remove_tab(in int tab_idx)
	{
		_GODOT_remove_tab.bind("Tabs", "remove_tab");
		ptrcall!(void)(_GODOT_remove_tab, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, String, Texture) _GODOT_add_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tab") = _GODOT_add_tab;
	void add_tab(StringArg0)(in StringArg0 title = "", in Texture icon = Texture.init)
	{
		_GODOT_add_tab.bind("Tabs", "add_tab");
		ptrcall!(void)(_GODOT_add_tab, _godot_object, title, icon);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_align") = _GODOT_set_tab_align;
	void set_tab_align(in int _align)
	{
		_GODOT_set_tab_align.bind("Tabs", "set_tab_align");
		ptrcall!(void)(_GODOT_set_tab_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(Tabs.TabAlign) _GODOT_get_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_align") = _GODOT_get_tab_align;
	Tabs.TabAlign get_tab_align() const
	{
		_GODOT_get_tab_align.bind("Tabs", "get_tab_align");
		return ptrcall!(Tabs.TabAlign)(_GODOT_get_tab_align, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_ensure_tab_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "ensure_tab_visible") = _GODOT_ensure_tab_visible;
	void ensure_tab_visible(in int idx)
	{
		_GODOT_ensure_tab_visible.bind("Tabs", "ensure_tab_visible");
		ptrcall!(void)(_GODOT_ensure_tab_visible, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Rect2, int) _GODOT_get_tab_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_rect") = _GODOT_get_tab_rect;
	Rect2 get_tab_rect(in int tab_idx) const
	{
		_GODOT_get_tab_rect.bind("Tabs", "get_tab_rect");
		return ptrcall!(Rect2)(_GODOT_get_tab_rect, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_move_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_tab") = _GODOT_move_tab;
	void move_tab(in int from, in int to)
	{
		_GODOT_move_tab.bind("Tabs", "move_tab");
		ptrcall!(void)(_GODOT_move_tab, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tab_close_display_policy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_close_display_policy") = _GODOT_set_tab_close_display_policy;
	void set_tab_close_display_policy(in int policy)
	{
		_GODOT_set_tab_close_display_policy.bind("Tabs", "set_tab_close_display_policy");
		ptrcall!(void)(_GODOT_set_tab_close_display_policy, _godot_object, policy);
	}
	package(godot) static GodotMethod!(Tabs.CloseButtonDisplayPolicy) _GODOT_get_tab_close_display_policy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_close_display_policy") = _GODOT_get_tab_close_display_policy;
	Tabs.CloseButtonDisplayPolicy get_tab_close_display_policy() const
	{
		_GODOT_get_tab_close_display_policy.bind("Tabs", "get_tab_close_display_policy");
		return ptrcall!(Tabs.CloseButtonDisplayPolicy)(_GODOT_get_tab_close_display_policy, _godot_object);
	}
}
