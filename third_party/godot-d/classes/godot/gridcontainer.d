module godot.gridcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.container;
@GodotBaseClass struct GridContainer
{
	static immutable string _GODOT_internal_name = "GridContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GridContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GridContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GridContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GridContainer");
		if(constructor is null) return typeof(this).init;
		return cast(GridContainer)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_columns") = _GODOT_set_columns;
	void set_columns(in int columns)
	{
		_GODOT_set_columns.bind("GridContainer", "set_columns");
		ptrcall!(void)(_GODOT_set_columns, _godot_object, columns);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_columns") = _GODOT_get_columns;
	int get_columns() const
	{
		_GODOT_get_columns.bind("GridContainer", "get_columns");
		return ptrcall!(int)(_GODOT_get_columns, _godot_object);
	}
}
