module godot.camera;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.environment;
@GodotBaseClass struct Camera
{
	static immutable string _GODOT_internal_name = "Camera";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Camera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Camera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Camera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Camera");
		if(constructor is null) return typeof(this).init;
		return cast(Camera)(constructor());
	}
	enum KeepAspect : int
	{
		KEEP_WIDTH = 0,
		KEEP_HEIGHT = 1,
	}
	enum Projection : int
	{
		PROJECTION_ORTHOGONAL = 1,
		PROJECTION_PERSPECTIVE = 0,
	}
	enum DopplerTracking : int
	{
		DOPPLER_TRACKING_DISABLED = 0,
		DOPPLER_TRACKING_FIXED_STEP = 2,
		DOPPLER_TRACKING_IDLE_STEP = 1,
	}
	enum int DOPPLER_TRACKING_DISABLED = 0;
	enum int PROJECTION_PERSPECTIVE = 0;
	enum int DOPPLER_TRACKING_IDLE_STEP = 1;
	enum int KEEP_HEIGHT = 1;
	enum int KEEP_WIDTH = 0;
	enum int PROJECTION_ORTHOGONAL = 1;
	enum int DOPPLER_TRACKING_FIXED_STEP = 2;
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_ray_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_ray_normal") = _GODOT_project_ray_normal;
	Vector3 project_ray_normal(in Vector2 screen_point) const
	{
		_GODOT_project_ray_normal.bind("Camera", "project_ray_normal");
		return ptrcall!(Vector3)(_GODOT_project_ray_normal, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_local_ray_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_local_ray_normal") = _GODOT_project_local_ray_normal;
	Vector3 project_local_ray_normal(in Vector2 screen_point) const
	{
		_GODOT_project_local_ray_normal.bind("Camera", "project_local_ray_normal");
		return ptrcall!(Vector3)(_GODOT_project_local_ray_normal, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_ray_origin;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_ray_origin") = _GODOT_project_ray_origin;
	Vector3 project_ray_origin(in Vector2 screen_point) const
	{
		_GODOT_project_ray_origin.bind("Camera", "project_ray_origin");
		return ptrcall!(Vector3)(_GODOT_project_ray_origin, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(Vector2, Vector3) _GODOT_unproject_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "unproject_position") = _GODOT_unproject_position;
	Vector2 unproject_position(in Vector3 world_point) const
	{
		_GODOT_unproject_position.bind("Camera", "unproject_position");
		return ptrcall!(Vector2)(_GODOT_unproject_position, _godot_object, world_point);
	}
	package(godot) static GodotMethod!(bool, Vector3) _GODOT_is_position_behind;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_position_behind") = _GODOT_is_position_behind;
	bool is_position_behind(in Vector3 world_point) const
	{
		_GODOT_is_position_behind.bind("Camera", "is_position_behind");
		return ptrcall!(bool)(_GODOT_is_position_behind, _godot_object, world_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_position") = _GODOT_project_position;
	Vector3 project_position(in Vector2 screen_point) const
	{
		_GODOT_project_position.bind("Camera", "project_position");
		return ptrcall!(Vector3)(_GODOT_project_position, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(void, float, float, float) _GODOT_set_perspective;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_perspective") = _GODOT_set_perspective;
	void set_perspective(in float fov, in float z_near, in float z_far)
	{
		_GODOT_set_perspective.bind("Camera", "set_perspective");
		ptrcall!(void)(_GODOT_set_perspective, _godot_object, fov, z_near, z_far);
	}
	package(godot) static GodotMethod!(void, float, float, float) _GODOT_set_orthogonal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_orthogonal") = _GODOT_set_orthogonal;
	void set_orthogonal(in float size, in float z_near, in float z_far)
	{
		_GODOT_set_orthogonal.bind("Camera", "set_orthogonal");
		ptrcall!(void)(_GODOT_set_orthogonal, _godot_object, size, z_near, z_far);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_current") = _GODOT_make_current;
	void make_current()
	{
		_GODOT_make_current.bind("Camera", "make_current");
		ptrcall!(void)(_GODOT_make_current, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_current") = _GODOT_clear_current;
	void clear_current()
	{
		_GODOT_clear_current.bind("Camera", "clear_current");
		ptrcall!(void)(_GODOT_clear_current, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_current") = _GODOT_is_current;
	bool is_current() const
	{
		_GODOT_is_current.bind("Camera", "is_current");
		return ptrcall!(bool)(_GODOT_is_current, _godot_object);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_camera_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera_transform") = _GODOT_get_camera_transform;
	Transform get_camera_transform() const
	{
		_GODOT_get_camera_transform.bind("Camera", "get_camera_transform");
		return ptrcall!(Transform)(_GODOT_get_camera_transform, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fov;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fov") = _GODOT_get_fov;
	float get_fov() const
	{
		_GODOT_get_fov.bind("Camera", "get_fov");
		return ptrcall!(float)(_GODOT_get_fov, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	float get_size() const
	{
		_GODOT_get_size.bind("Camera", "get_size");
		return ptrcall!(float)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_zfar;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_zfar") = _GODOT_get_zfar;
	float get_zfar() const
	{
		_GODOT_get_zfar.bind("Camera", "get_zfar");
		return ptrcall!(float)(_GODOT_get_zfar, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_znear;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_znear") = _GODOT_get_znear;
	float get_znear() const
	{
		_GODOT_get_znear.bind("Camera", "get_znear");
		return ptrcall!(float)(_GODOT_get_znear, _godot_object);
	}
	package(godot) static GodotMethod!(Camera.Projection) _GODOT_get_projection;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_projection") = _GODOT_get_projection;
	Camera.Projection get_projection() const
	{
		_GODOT_get_projection.bind("Camera", "get_projection");
		return ptrcall!(Camera.Projection)(_GODOT_get_projection, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	void set_h_offset(in float ofs)
	{
		_GODOT_set_h_offset.bind("Camera", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	float get_h_offset() const
	{
		_GODOT_get_h_offset.bind("Camera", "get_h_offset");
		return ptrcall!(float)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	void set_v_offset(in float ofs)
	{
		_GODOT_set_v_offset.bind("Camera", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	float get_v_offset() const
	{
		_GODOT_get_v_offset.bind("Camera", "get_v_offset");
		return ptrcall!(float)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mask") = _GODOT_set_cull_mask;
	void set_cull_mask(in int mask)
	{
		_GODOT_set_cull_mask.bind("Camera", "set_cull_mask");
		ptrcall!(void)(_GODOT_set_cull_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mask") = _GODOT_get_cull_mask;
	int get_cull_mask() const
	{
		_GODOT_get_cull_mask.bind("Camera", "get_cull_mask");
		return ptrcall!(int)(_GODOT_get_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_environment") = _GODOT_set_environment;
	void set_environment(in Environment env)
	{
		_GODOT_set_environment.bind("Camera", "set_environment");
		ptrcall!(void)(_GODOT_set_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	Environment get_environment() const
	{
		_GODOT_get_environment.bind("Camera", "get_environment");
		return ptrcall!(Environment)(_GODOT_get_environment, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_keep_aspect_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_keep_aspect_mode") = _GODOT_set_keep_aspect_mode;
	void set_keep_aspect_mode(in int mode)
	{
		_GODOT_set_keep_aspect_mode.bind("Camera", "set_keep_aspect_mode");
		ptrcall!(void)(_GODOT_set_keep_aspect_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Camera.KeepAspect) _GODOT_get_keep_aspect_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_keep_aspect_mode") = _GODOT_get_keep_aspect_mode;
	Camera.KeepAspect get_keep_aspect_mode() const
	{
		_GODOT_get_keep_aspect_mode.bind("Camera", "get_keep_aspect_mode");
		return ptrcall!(Camera.KeepAspect)(_GODOT_get_keep_aspect_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_doppler_tracking") = _GODOT_set_doppler_tracking;
	void set_doppler_tracking(in int mode)
	{
		_GODOT_set_doppler_tracking.bind("Camera", "set_doppler_tracking");
		ptrcall!(void)(_GODOT_set_doppler_tracking, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Camera.DopplerTracking) _GODOT_get_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_doppler_tracking") = _GODOT_get_doppler_tracking;
	Camera.DopplerTracking get_doppler_tracking() const
	{
		_GODOT_get_doppler_tracking.bind("Camera", "get_doppler_tracking");
		return ptrcall!(Camera.DopplerTracking)(_GODOT_get_doppler_tracking, _godot_object);
	}
}
