module godot.spatial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.world;
import godot.spatialgizmo;
@GodotBaseClass struct Spatial
{
	static immutable string _GODOT_internal_name = "Spatial";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Spatial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Spatial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Spatial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Spatial");
		if(constructor is null) return typeof(this).init;
		return cast(Spatial)(constructor());
	}
	enum int NOTIFICATION_TRANSFORM_CHANGED = 29;
	enum int NOTIFICATION_VISIBILITY_CHANGED = 43;
	enum int NOTIFICATION_ENTER_WORLD = 41;
	enum int NOTIFICATION_EXIT_WORLD = 42;
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	void set_transform(in Transform local)
	{
		_GODOT_set_transform.bind("Spatial", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, local);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform get_transform() const
	{
		_GODOT_get_transform.bind("Spatial", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_translation") = _GODOT_set_translation;
	void set_translation(in Vector3 translation)
	{
		_GODOT_set_translation.bind("Spatial", "set_translation");
		ptrcall!(void)(_GODOT_set_translation, _godot_object, translation);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_translation") = _GODOT_get_translation;
	Vector3 get_translation() const
	{
		_GODOT_get_translation.bind("Spatial", "get_translation");
		return ptrcall!(Vector3)(_GODOT_get_translation, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	void set_rotation(in Vector3 rotation_rad)
	{
		_GODOT_set_rotation.bind("Spatial", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, rotation_rad);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	Vector3 get_rotation() const
	{
		_GODOT_get_rotation.bind("Spatial", "get_rotation");
		return ptrcall!(Vector3)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_deg") = _GODOT_set_rotation_deg;
	void set_rotation_deg(in Vector3 rotation_deg)
	{
		_GODOT_set_rotation_deg.bind("Spatial", "set_rotation_deg");
		ptrcall!(void)(_GODOT_set_rotation_deg, _godot_object, rotation_deg);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_deg") = _GODOT_get_rotation_deg;
	Vector3 get_rotation_deg() const
	{
		_GODOT_get_rotation_deg.bind("Spatial", "get_rotation_deg");
		return ptrcall!(Vector3)(_GODOT_get_rotation_deg, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	void set_scale(in Vector3 scale)
	{
		_GODOT_set_scale.bind("Spatial", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	Vector3 get_scale() const
	{
		_GODOT_get_scale.bind("Spatial", "get_scale");
		return ptrcall!(Vector3)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_transform") = _GODOT_set_global_transform;
	void set_global_transform(in Transform global)
	{
		_GODOT_set_global_transform.bind("Spatial", "set_global_transform");
		ptrcall!(void)(_GODOT_set_global_transform, _godot_object, global);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_transform") = _GODOT_get_global_transform;
	Transform get_global_transform() const
	{
		_GODOT_get_global_transform.bind("Spatial", "get_global_transform");
		return ptrcall!(Transform)(_GODOT_get_global_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Spatial) _GODOT_get_parent_spatial;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_spatial") = _GODOT_get_parent_spatial;
	Spatial get_parent_spatial() const
	{
		_GODOT_get_parent_spatial.bind("Spatial", "get_parent_spatial");
		return ptrcall!(Spatial)(_GODOT_get_parent_spatial, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ignore_transform_notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ignore_transform_notification") = _GODOT_set_ignore_transform_notification;
	void set_ignore_transform_notification(in bool enabled)
	{
		_GODOT_set_ignore_transform_notification.bind("Spatial", "set_ignore_transform_notification");
		ptrcall!(void)(_GODOT_set_ignore_transform_notification, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_toplevel") = _GODOT_set_as_toplevel;
	void set_as_toplevel(in bool enable)
	{
		_GODOT_set_as_toplevel.bind("Spatial", "set_as_toplevel");
		ptrcall!(void)(_GODOT_set_as_toplevel, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_set_as_toplevel") = _GODOT_is_set_as_toplevel;
	bool is_set_as_toplevel() const
	{
		_GODOT_is_set_as_toplevel.bind("Spatial", "is_set_as_toplevel");
		return ptrcall!(bool)(_GODOT_is_set_as_toplevel, _godot_object);
	}
	package(godot) static GodotMethod!(World) _GODOT_get_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world") = _GODOT_get_world;
	World get_world() const
	{
		_GODOT_get_world.bind("Spatial", "get_world");
		return ptrcall!(World)(_GODOT_get_world, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT__set_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_rotation_deg") = _GODOT__set_rotation_deg;
	void _set_rotation_deg(in Vector3 rotation_deg)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rotation_deg);
		String _GODOT_method_name = String("_set_rotation_deg");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT__get_rotation_deg;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_rotation_deg") = _GODOT__get_rotation_deg;
	Vector3 _get_rotation_deg() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotation_deg");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Vector3);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_gizmo") = _GODOT__update_gizmo;
	void _update_gizmo()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_gizmo");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_gizmo") = _GODOT_update_gizmo;
	void update_gizmo()
	{
		_GODOT_update_gizmo.bind("Spatial", "update_gizmo");
		ptrcall!(void)(_GODOT_update_gizmo, _godot_object);
	}
	package(godot) static GodotMethod!(void, SpatialGizmo) _GODOT_set_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gizmo") = _GODOT_set_gizmo;
	void set_gizmo(in SpatialGizmo gizmo)
	{
		_GODOT_set_gizmo.bind("Spatial", "set_gizmo");
		ptrcall!(void)(_GODOT_set_gizmo, _godot_object, gizmo);
	}
	package(godot) static GodotMethod!(SpatialGizmo) _GODOT_get_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gizmo") = _GODOT_get_gizmo;
	SpatialGizmo get_gizmo() const
	{
		_GODOT_get_gizmo.bind("Spatial", "get_gizmo");
		return ptrcall!(SpatialGizmo)(_GODOT_get_gizmo, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible") = _GODOT_set_visible;
	void set_visible(in bool visible)
	{
		_GODOT_set_visible.bind("Spatial", "set_visible");
		ptrcall!(void)(_GODOT_set_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible") = _GODOT_is_visible;
	bool is_visible() const
	{
		_GODOT_is_visible.bind("Spatial", "is_visible");
		return ptrcall!(bool)(_GODOT_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible_in_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible_in_tree") = _GODOT_is_visible_in_tree;
	bool is_visible_in_tree() const
	{
		_GODOT_is_visible_in_tree.bind("Spatial", "is_visible_in_tree");
		return ptrcall!(bool)(_GODOT_is_visible_in_tree, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_show;
	package(godot) alias _GODOT_methodBindInfo(string name : "show") = _GODOT_show;
	void show()
	{
		_GODOT_show.bind("Spatial", "show");
		ptrcall!(void)(_GODOT_show, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide") = _GODOT_hide;
	void hide()
	{
		_GODOT_hide.bind("Spatial", "hide");
		ptrcall!(void)(_GODOT_hide, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_local_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_local_transform") = _GODOT_set_notify_local_transform;
	void set_notify_local_transform(in bool enable)
	{
		_GODOT_set_notify_local_transform.bind("Spatial", "set_notify_local_transform");
		ptrcall!(void)(_GODOT_set_notify_local_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_local_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_local_transform_notification_enabled") = _GODOT_is_local_transform_notification_enabled;
	bool is_local_transform_notification_enabled() const
	{
		_GODOT_is_local_transform_notification_enabled.bind("Spatial", "is_local_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_local_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_transform") = _GODOT_set_notify_transform;
	void set_notify_transform(in bool enable)
	{
		_GODOT_set_notify_transform.bind("Spatial", "set_notify_transform");
		ptrcall!(void)(_GODOT_set_notify_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_transform_notification_enabled") = _GODOT_is_transform_notification_enabled;
	bool is_transform_notification_enabled() const
	{
		_GODOT_is_transform_notification_enabled.bind("Spatial", "is_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3, float) _GODOT_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate") = _GODOT_rotate;
	void rotate(in Vector3 normal, in float radians)
	{
		_GODOT_rotate.bind("Spatial", "rotate");
		ptrcall!(void)(_GODOT_rotate, _godot_object, normal, radians);
	}
	package(godot) static GodotMethod!(void, Vector3, float) _GODOT_global_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_rotate") = _GODOT_global_rotate;
	void global_rotate(in Vector3 normal, in float radians)
	{
		_GODOT_global_rotate.bind("Spatial", "global_rotate");
		ptrcall!(void)(_GODOT_global_rotate, _godot_object, normal, radians);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_rotate_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_x") = _GODOT_rotate_x;
	void rotate_x(in float radians)
	{
		_GODOT_rotate_x.bind("Spatial", "rotate_x");
		ptrcall!(void)(_GODOT_rotate_x, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_rotate_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_y") = _GODOT_rotate_y;
	void rotate_y(in float radians)
	{
		_GODOT_rotate_y.bind("Spatial", "rotate_y");
		ptrcall!(void)(_GODOT_rotate_y, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_rotate_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_z") = _GODOT_rotate_z;
	void rotate_z(in float radians)
	{
		_GODOT_rotate_z.bind("Spatial", "rotate_z");
		ptrcall!(void)(_GODOT_rotate_z, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate") = _GODOT_translate;
	void translate(in Vector3 offset)
	{
		_GODOT_translate.bind("Spatial", "translate");
		ptrcall!(void)(_GODOT_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_global_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_translate") = _GODOT_global_translate;
	void global_translate(in Vector3 offset)
	{
		_GODOT_global_translate.bind("Spatial", "global_translate");
		ptrcall!(void)(_GODOT_global_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void) _GODOT_orthonormalize;
	package(godot) alias _GODOT_methodBindInfo(string name : "orthonormalize") = _GODOT_orthonormalize;
	void orthonormalize()
	{
		_GODOT_orthonormalize.bind("Spatial", "orthonormalize");
		ptrcall!(void)(_GODOT_orthonormalize, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_identity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_identity") = _GODOT_set_identity;
	void set_identity()
	{
		_GODOT_set_identity.bind("Spatial", "set_identity");
		ptrcall!(void)(_GODOT_set_identity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3) _GODOT_look_at;
	package(godot) alias _GODOT_methodBindInfo(string name : "look_at") = _GODOT_look_at;
	void look_at(in Vector3 target, in Vector3 up)
	{
		_GODOT_look_at.bind("Spatial", "look_at");
		ptrcall!(void)(_GODOT_look_at, _godot_object, target, up);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3, Vector3) _GODOT_look_at_from_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "look_at_from_position") = _GODOT_look_at_from_position;
	void look_at_from_position(in Vector3 position, in Vector3 target, in Vector3 up)
	{
		_GODOT_look_at_from_position.bind("Spatial", "look_at_from_position");
		ptrcall!(void)(_GODOT_look_at_from_position, _godot_object, position, target, up);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_to_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_local") = _GODOT_to_local;
	Vector3 to_local(in Vector3 global_point) const
	{
		_GODOT_to_local.bind("Spatial", "to_local");
		return ptrcall!(Vector3)(_GODOT_to_local, _godot_object, global_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_to_global;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_global") = _GODOT_to_global;
	Vector3 to_global(in Vector3 local_point) const
	{
		_GODOT_to_global.bind("Spatial", "to_global");
		return ptrcall!(Vector3)(_GODOT_to_global, _godot_object, local_point);
	}
}
