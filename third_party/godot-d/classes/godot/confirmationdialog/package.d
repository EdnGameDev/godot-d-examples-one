module godot.confirmationdialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.acceptdialog;
import godot.button;
@GodotBaseClass struct ConfirmationDialog
{
	static immutable string _GODOT_internal_name = "ConfirmationDialog";
public:
	union { godot_object _godot_object; AcceptDialog base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ConfirmationDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConfirmationDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConfirmationDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConfirmationDialog");
		if(constructor is null) return typeof(this).init;
		return cast(ConfirmationDialog)(constructor());
	}
	package(godot) static GodotMethod!(Button) _GODOT_get_cancel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cancel") = _GODOT_get_cancel;
	Button get_cancel()
	{
		_GODOT_get_cancel.bind("ConfirmationDialog", "get_cancel");
		return ptrcall!(Button)(_GODOT_get_cancel, _godot_object);
	}
}
