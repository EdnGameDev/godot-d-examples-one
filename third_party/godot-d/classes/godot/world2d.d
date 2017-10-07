module godot.world2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.physics2ddirectspacestate;
@GodotBaseClass struct World2D
{
	static immutable string _GODOT_internal_name = "World2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in World2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	World2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static World2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("World2D");
		if(constructor is null) return typeof(this).init;
		return cast(World2D)(constructor());
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas") = _GODOT_get_canvas;
	RID get_canvas()
	{
		_GODOT_get_canvas.bind("World2D", "get_canvas");
		return ptrcall!(RID)(_GODOT_get_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space") = _GODOT_get_space;
	RID get_space()
	{
		_GODOT_get_space.bind("World2D", "get_space");
		return ptrcall!(RID)(_GODOT_get_space, _godot_object);
	}
	package(godot) static GodotMethod!(Physics2DDirectSpaceState) _GODOT_get_direct_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_direct_space_state") = _GODOT_get_direct_space_state;
	Physics2DDirectSpaceState get_direct_space_state()
	{
		_GODOT_get_direct_space_state.bind("World2D", "get_direct_space_state");
		return ptrcall!(Physics2DDirectSpaceState)(_GODOT_get_direct_space_state, _godot_object);
	}
}
