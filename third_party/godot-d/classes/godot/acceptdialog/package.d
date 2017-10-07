module godot.acceptdialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.windowdialog;
import godot.button;
import godot.label;
@GodotBaseClass struct AcceptDialog
{
	static immutable string _GODOT_internal_name = "AcceptDialog";
public:
	union { godot_object _godot_object; WindowDialog base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AcceptDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AcceptDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AcceptDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AcceptDialog");
		if(constructor is null) return typeof(this).init;
		return cast(AcceptDialog)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT__ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "_ok") = _GODOT__ok;
	void _ok()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_ok");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Button) _GODOT_get_ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ok") = _GODOT_get_ok;
	Button get_ok()
	{
		_GODOT_get_ok.bind("AcceptDialog", "get_ok");
		return ptrcall!(Button)(_GODOT_get_ok, _godot_object);
	}
	package(godot) static GodotMethod!(Label) _GODOT_get_label;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_label") = _GODOT_get_label;
	Label get_label()
	{
		_GODOT_get_label.bind("AcceptDialog", "get_label");
		return ptrcall!(Label)(_GODOT_get_label, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_ok") = _GODOT_set_hide_on_ok;
	void set_hide_on_ok(in bool enabled)
	{
		_GODOT_set_hide_on_ok.bind("AcceptDialog", "set_hide_on_ok");
		ptrcall!(void)(_GODOT_set_hide_on_ok, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_hide_on_ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hide_on_ok") = _GODOT_get_hide_on_ok;
	bool get_hide_on_ok() const
	{
		_GODOT_get_hide_on_ok.bind("AcceptDialog", "get_hide_on_ok");
		return ptrcall!(bool)(_GODOT_get_hide_on_ok, _godot_object);
	}
	package(godot) static GodotMethod!(Button, String, bool, String) _GODOT_add_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_button") = _GODOT_add_button;
	Button add_button(StringArg0, StringArg2)(in StringArg0 text, in bool right = false, in StringArg2 action = "")
	{
		_GODOT_add_button.bind("AcceptDialog", "add_button");
		return ptrcall!(Button)(_GODOT_add_button, _godot_object, text, right, action);
	}
	package(godot) static GodotMethod!(Button, String) _GODOT_add_cancel;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_cancel") = _GODOT_add_cancel;
	Button add_cancel(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_cancel.bind("AcceptDialog", "add_cancel");
		return ptrcall!(Button)(_GODOT_add_cancel, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__builtin_text_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_builtin_text_entered") = _GODOT__builtin_text_entered;
	void _builtin_text_entered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_builtin_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_register_text_enter;
	package(godot) alias _GODOT_methodBindInfo(string name : "register_text_enter") = _GODOT_register_text_enter;
	void register_text_enter(in GodotObject line_edit)
	{
		_GODOT_register_text_enter.bind("AcceptDialog", "register_text_enter");
		ptrcall!(void)(_GODOT_register_text_enter, _godot_object, line_edit);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__custom_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "_custom_action") = _GODOT__custom_action;
	void _custom_action(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_custom_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	void set_text(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("AcceptDialog", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	String get_text() const
	{
		_GODOT_get_text.bind("AcceptDialog", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
}
