module godot.tabcontainer;
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
import godot.popup;
@GodotBaseClass struct TabContainer
{
	static immutable string _GODOT_internal_name = "TabContainer";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in TabContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TabContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TabContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TabContainer");
		if(constructor is null) return typeof(this).init;
		return cast(TabContainer)(constructor());
	}
	enum TabAlign : int
	{
		ALIGN_LEFT = 0,
		ALIGN_RIGHT = 2,
		ALIGN_CENTER = 1,
	}
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
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
		_GODOT_get_tab_count.bind("TabContainer", "get_tab_count");
		return ptrcall!(int)(_GODOT_get_tab_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_tab") = _GODOT_set_current_tab;
	void set_current_tab(in int tab_idx)
	{
		_GODOT_set_current_tab.bind("TabContainer", "set_current_tab");
		ptrcall!(void)(_GODOT_set_current_tab, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_tab") = _GODOT_get_current_tab;
	int get_current_tab() const
	{
		_GODOT_get_current_tab.bind("TabContainer", "get_current_tab");
		return ptrcall!(int)(_GODOT_get_current_tab, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_previous_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_previous_tab") = _GODOT_get_previous_tab;
	int get_previous_tab() const
	{
		_GODOT_get_previous_tab.bind("TabContainer", "get_previous_tab");
		return ptrcall!(int)(_GODOT_get_previous_tab, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_current_tab_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_tab_control") = _GODOT_get_current_tab_control;
	Control get_current_tab_control() const
	{
		_GODOT_get_current_tab_control.bind("TabContainer", "get_current_tab_control");
		return ptrcall!(Control)(_GODOT_get_current_tab_control, _godot_object);
	}
	package(godot) static GodotMethod!(Control, int) _GODOT_get_tab_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_control") = _GODOT_get_tab_control;
	Control get_tab_control(in int idx) const
	{
		_GODOT_get_tab_control.bind("TabContainer", "get_tab_control");
		return ptrcall!(Control)(_GODOT_get_tab_control, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_align") = _GODOT_set_tab_align;
	void set_tab_align(in int _align)
	{
		_GODOT_set_tab_align.bind("TabContainer", "set_tab_align");
		ptrcall!(void)(_GODOT_set_tab_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(TabContainer.TabAlign) _GODOT_get_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_align") = _GODOT_get_tab_align;
	TabContainer.TabAlign get_tab_align() const
	{
		_GODOT_get_tab_align.bind("TabContainer", "get_tab_align");
		return ptrcall!(TabContainer.TabAlign)(_GODOT_get_tab_align, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tabs_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tabs_visible") = _GODOT_set_tabs_visible;
	void set_tabs_visible(in bool visible)
	{
		_GODOT_set_tabs_visible.bind("TabContainer", "set_tabs_visible");
		ptrcall!(void)(_GODOT_set_tabs_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_are_tabs_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_tabs_visible") = _GODOT_are_tabs_visible;
	bool are_tabs_visible() const
	{
		_GODOT_are_tabs_visible.bind("TabContainer", "are_tabs_visible");
		return ptrcall!(bool)(_GODOT_are_tabs_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, String) _GODOT_set_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_title") = _GODOT_set_tab_title;
	void set_tab_title(StringArg1)(in int tab_idx, in StringArg1 title)
	{
		_GODOT_set_tab_title.bind("TabContainer", "set_tab_title");
		ptrcall!(void)(_GODOT_set_tab_title, _godot_object, tab_idx, title);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_title") = _GODOT_get_tab_title;
	String get_tab_title(in int tab_idx) const
	{
		_GODOT_get_tab_title.bind("TabContainer", "get_tab_title");
		return ptrcall!(String)(_GODOT_get_tab_title, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, int, Texture) _GODOT_set_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_icon") = _GODOT_set_tab_icon;
	void set_tab_icon(in int tab_idx, in Texture icon)
	{
		_GODOT_set_tab_icon.bind("TabContainer", "set_tab_icon");
		ptrcall!(void)(_GODOT_set_tab_icon, _godot_object, tab_idx, icon);
	}
	package(godot) static GodotMethod!(Texture, int) _GODOT_get_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_icon") = _GODOT_get_tab_icon;
	Texture get_tab_icon(in int tab_idx) const
	{
		_GODOT_get_tab_icon.bind("TabContainer", "get_tab_icon");
		return ptrcall!(Texture)(_GODOT_get_tab_icon, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_disabled") = _GODOT_set_tab_disabled;
	void set_tab_disabled(in int tab_idx, in bool disabled)
	{
		_GODOT_set_tab_disabled.bind("TabContainer", "set_tab_disabled");
		ptrcall!(void)(_GODOT_set_tab_disabled, _godot_object, tab_idx, disabled);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_disabled") = _GODOT_get_tab_disabled;
	bool get_tab_disabled(in int tab_idx) const
	{
		_GODOT_get_tab_disabled.bind("TabContainer", "get_tab_disabled");
		return ptrcall!(bool)(_GODOT_get_tab_disabled, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_popup") = _GODOT_set_popup;
	void set_popup(in GodotObject popup)
	{
		_GODOT_set_popup.bind("TabContainer", "set_popup");
		ptrcall!(void)(_GODOT_set_popup, _godot_object, popup);
	}
	package(godot) static GodotMethod!(Popup) _GODOT_get_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_popup") = _GODOT_get_popup;
	Popup get_popup() const
	{
		_GODOT_get_popup.bind("TabContainer", "get_popup");
		return ptrcall!(Popup)(_GODOT_get_popup, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__child_renamed_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_child_renamed_callback") = _GODOT__child_renamed_callback;
	void _child_renamed_callback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_child_renamed_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
