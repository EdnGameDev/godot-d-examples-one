module godot.canvaslayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.world2d;
@GodotBaseClass struct CanvasLayer
{
	static immutable string _GODOT_internal_name = "CanvasLayer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CanvasLayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasLayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasLayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CanvasLayer");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasLayer)(constructor());
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer") = _GODOT_set_layer;
	void set_layer(in int layer)
	{
		_GODOT_set_layer.bind("CanvasLayer", "set_layer");
		ptrcall!(void)(_GODOT_set_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer") = _GODOT_get_layer;
	int get_layer() const
	{
		_GODOT_get_layer.bind("CanvasLayer", "get_layer");
		return ptrcall!(int)(_GODOT_get_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	void set_transform(in Transform2D transform)
	{
		_GODOT_set_transform.bind("CanvasLayer", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform2D get_transform() const
	{
		_GODOT_get_transform.bind("CanvasLayer", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	void set_offset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("CanvasLayer", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	Vector2 get_offset() const
	{
		_GODOT_get_offset.bind("CanvasLayer", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	void set_rotation(in float radians)
	{
		_GODOT_set_rotation.bind("CanvasLayer", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	float get_rotation() const
	{
		_GODOT_get_rotation.bind("CanvasLayer", "get_rotation");
		return ptrcall!(float)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_rotationd;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotationd") = _GODOT_set_rotationd;
	void set_rotationd(in float degrees)
	{
		_GODOT_set_rotationd.bind("CanvasLayer", "set_rotationd");
		ptrcall!(void)(_GODOT_set_rotationd, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_rotationd;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotationd") = _GODOT_get_rotationd;
	float get_rotationd() const
	{
		_GODOT_get_rotationd.bind("CanvasLayer", "get_rotationd");
		return ptrcall!(float)(_GODOT_get_rotationd, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__set_rotationd;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_rotationd") = _GODOT__set_rotationd;
	void _set_rotationd(in float degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_set_rotationd");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(float) _GODOT__get_rotationd;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_rotationd") = _GODOT__get_rotationd;
	float _get_rotationd() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotationd");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	void set_scale(in Vector2 scale)
	{
		_GODOT_set_scale.bind("CanvasLayer", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	Vector2 get_scale() const
	{
		_GODOT_get_scale.bind("CanvasLayer", "get_scale");
		return ptrcall!(Vector2)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_viewport") = _GODOT_set_custom_viewport;
	void set_custom_viewport(in GodotObject viewport)
	{
		_GODOT_set_custom_viewport.bind("CanvasLayer", "set_custom_viewport");
		ptrcall!(void)(_GODOT_set_custom_viewport, _godot_object, viewport);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_viewport") = _GODOT_get_custom_viewport;
	Node get_custom_viewport() const
	{
		_GODOT_get_custom_viewport.bind("CanvasLayer", "get_custom_viewport");
		return ptrcall!(Node)(_GODOT_get_custom_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_get_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_2d") = _GODOT_get_world_2d;
	World2D get_world_2d() const
	{
		_GODOT_get_world_2d.bind("CanvasLayer", "get_world_2d");
		return ptrcall!(World2D)(_GODOT_get_world_2d, _godot_object);
	}
}
