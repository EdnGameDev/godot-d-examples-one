module godot.container;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct Container
{
	static immutable string _GODOT_internal_name = "Container";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Container other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Container opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Container _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Container");
		if(constructor is null) return typeof(this).init;
		return cast(Container)(constructor());
	}
	enum int NOTIFICATION_SORT_CHILDREN = 50;
	package(godot) static GodotMethod!(void) _GODOT__sort_children;
	package(godot) alias _GODOT_methodBindInfo(string name : "_sort_children") = _GODOT__sort_children;
	void _sort_children()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_sort_children");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__child_minsize_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_child_minsize_changed") = _GODOT__child_minsize_changed;
	void _child_minsize_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_child_minsize_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_queue_sort;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_sort") = _GODOT_queue_sort;
	void queue_sort()
	{
		_GODOT_queue_sort.bind("Container", "queue_sort");
		ptrcall!(void)(_GODOT_queue_sort, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject, Rect2) _GODOT_fit_child_in_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "fit_child_in_rect") = _GODOT_fit_child_in_rect;
	void fit_child_in_rect(in GodotObject child, in Rect2 rect)
	{
		_GODOT_fit_child_in_rect.bind("Container", "fit_child_in_rect");
		ptrcall!(void)(_GODOT_fit_child_in_rect, _godot_object, child, rect);
	}
}
