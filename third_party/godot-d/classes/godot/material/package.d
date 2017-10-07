module godot.material;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.resource;
@GodotBaseClass struct Material
{
	static immutable string _GODOT_internal_name = "Material";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Material other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Material opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Material _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Material");
		if(constructor is null) return typeof(this).init;
		return cast(Material)(constructor());
	}
	enum int RENDER_PRIORITY_MAX = 127;
	enum int RENDER_PRIORITY_MIN = -128;
	package(godot) static GodotMethod!(void, Material) _GODOT_set_next_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_next_pass") = _GODOT_set_next_pass;
	void set_next_pass(in Material next_pass)
	{
		_GODOT_set_next_pass.bind("Material", "set_next_pass");
		ptrcall!(void)(_GODOT_set_next_pass, _godot_object, next_pass);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_next_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next_pass") = _GODOT_get_next_pass;
	Material get_next_pass() const
	{
		_GODOT_get_next_pass.bind("Material", "get_next_pass");
		return ptrcall!(Material)(_GODOT_get_next_pass, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_render_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_render_priority") = _GODOT_set_render_priority;
	void set_render_priority(in int priority)
	{
		_GODOT_set_render_priority.bind("Material", "set_render_priority");
		ptrcall!(void)(_GODOT_set_render_priority, _godot_object, priority);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_render_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_render_priority") = _GODOT_get_render_priority;
	int get_render_priority() const
	{
		_GODOT_get_render_priority.bind("Material", "get_render_priority");
		return ptrcall!(int)(_GODOT_get_render_priority, _godot_object);
	}
}
