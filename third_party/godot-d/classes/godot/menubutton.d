module godot.menubutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.button;
import godot.popupmenu;
import godot.inputevent;
@GodotBaseClass struct MenuButton
{
	static immutable string _GODOT_internal_name = "MenuButton";
public:
	union { godot_object _godot_object; Button base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in MenuButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MenuButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MenuButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MenuButton");
		if(constructor is null) return typeof(this).init;
		return cast(MenuButton)(constructor());
	}
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_popup") = _GODOT_get_popup;
	PopupMenu get_popup()
	{
		_GODOT_get_popup.bind("MenuButton", "get_popup");
		return ptrcall!(PopupMenu)(_GODOT_get_popup, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_key_input") = _GODOT__unhandled_key_input;
	void _unhandled_key_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_items") = _GODOT__set_items;
	void _set_items(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_items") = _GODOT__get_items;
	Array _get_items() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
