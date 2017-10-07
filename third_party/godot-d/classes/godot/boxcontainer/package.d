module godot.boxcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.container;
@GodotBaseClass struct BoxContainer
{
	static immutable string _GODOT_internal_name = "BoxContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in BoxContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoxContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BoxContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BoxContainer");
		if(constructor is null) return typeof(this).init;
		return cast(BoxContainer)(constructor());
	}
	enum AlignMode : int
	{
		ALIGN_BEGIN = 0,
		ALIGN_CENTER = 1,
		ALIGN_END = 2,
	}
	enum int ALIGN_BEGIN = 0;
	enum int ALIGN_CENTER = 1;
	enum int ALIGN_END = 2;
	package(godot) static GodotMethod!(void, bool) _GODOT_add_spacer;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_spacer") = _GODOT_add_spacer;
	void add_spacer(in bool begin)
	{
		_GODOT_add_spacer.bind("BoxContainer", "add_spacer");
		ptrcall!(void)(_GODOT_add_spacer, _godot_object, begin);
	}
	package(godot) static GodotMethod!(BoxContainer.AlignMode) _GODOT_get_alignment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alignment") = _GODOT_get_alignment;
	BoxContainer.AlignMode get_alignment() const
	{
		_GODOT_get_alignment.bind("BoxContainer", "get_alignment");
		return ptrcall!(BoxContainer.AlignMode)(_GODOT_get_alignment, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_alignment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alignment") = _GODOT_set_alignment;
	void set_alignment(in int alignment)
	{
		_GODOT_set_alignment.bind("BoxContainer", "set_alignment");
		ptrcall!(void)(_GODOT_set_alignment, _godot_object, alignment);
	}
}
