module godot.hscrollbar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.scrollbar;
@GodotBaseClass struct HScrollBar
{
	static immutable string _GODOT_internal_name = "HScrollBar";
public:
	union { godot_object _godot_object; ScrollBar base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in HScrollBar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HScrollBar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HScrollBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HScrollBar");
		if(constructor is null) return typeof(this).init;
		return cast(HScrollBar)(constructor());
	}
}
