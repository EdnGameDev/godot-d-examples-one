module godot.splitcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.container;
import godot.inputevent;
@GodotBaseClass struct SplitContainer
{
	static immutable string _GODOT_internal_name = "SplitContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SplitContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SplitContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SplitContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SplitContainer");
		if(constructor is null) return typeof(this).init;
		return cast(SplitContainer)(constructor());
	}
	enum DraggerVisibility : int
	{
		DRAGGER_VISIBLE = 0,
		DRAGGER_HIDDEN = 1,
		DRAGGER_HIDDEN_COLLAPSED = 2,
	}
	enum int DRAGGER_VISIBLE = 0;
	enum int DRAGGER_HIDDEN = 1;
	enum int DRAGGER_HIDDEN_COLLAPSED = 2;
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_split_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_split_offset") = _GODOT_set_split_offset;
	void set_split_offset(in int offset)
	{
		_GODOT_set_split_offset.bind("SplitContainer", "set_split_offset");
		ptrcall!(void)(_GODOT_set_split_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_split_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_split_offset") = _GODOT_get_split_offset;
	int get_split_offset() const
	{
		_GODOT_get_split_offset.bind("SplitContainer", "get_split_offset");
		return ptrcall!(int)(_GODOT_get_split_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collapsed") = _GODOT_set_collapsed;
	void set_collapsed(in bool collapsed)
	{
		_GODOT_set_collapsed.bind("SplitContainer", "set_collapsed");
		ptrcall!(void)(_GODOT_set_collapsed, _godot_object, collapsed);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_collapsed") = _GODOT_is_collapsed;
	bool is_collapsed() const
	{
		_GODOT_is_collapsed.bind("SplitContainer", "is_collapsed");
		return ptrcall!(bool)(_GODOT_is_collapsed, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_dragger_visibility;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dragger_visibility") = _GODOT_set_dragger_visibility;
	void set_dragger_visibility(in int mode)
	{
		_GODOT_set_dragger_visibility.bind("SplitContainer", "set_dragger_visibility");
		ptrcall!(void)(_GODOT_set_dragger_visibility, _godot_object, mode);
	}
	package(godot) static GodotMethod!(SplitContainer.DraggerVisibility) _GODOT_get_dragger_visibility;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dragger_visibility") = _GODOT_get_dragger_visibility;
	SplitContainer.DraggerVisibility get_dragger_visibility() const
	{
		_GODOT_get_dragger_visibility.bind("SplitContainer", "get_dragger_visibility");
		return ptrcall!(SplitContainer.DraggerVisibility)(_GODOT_get_dragger_visibility, _godot_object);
	}
}
