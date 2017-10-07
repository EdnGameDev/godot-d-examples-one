module godot.viewport;
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
import godot.world;
import godot.inputevent;
import godot.viewporttexture;
import godot.camera;
@GodotBaseClass struct Viewport
{
	static immutable string _GODOT_internal_name = "Viewport";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Viewport other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Viewport opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Viewport _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Viewport");
		if(constructor is null) return typeof(this).init;
		return cast(Viewport)(constructor());
	}
	enum ClearMode : int
	{
		CLEAR_MODE_ONLY_NEXT_FRAME = 2,
		CLEAR_MODE_NEVER = 1,
		CLEAR_MODE_ALWAYS = 0,
	}
	enum RenderInfo : int
	{
		RENDER_INFO_OBJECTS_IN_FRAME = 0,
		RENDER_INFO_VERTICES_IN_FRAME = 1,
		RENDER_INFO_MATERIAL_CHANGES_IN_FRAME = 2,
		RENDER_INFO_MAX = 6,
		RENDER_INFO_SURFACE_CHANGES_IN_FRAME = 4,
		RENDER_INFO_DRAW_CALLS_IN_FRAME = 5,
		RENDER_INFO_SHADER_CHANGES_IN_FRAME = 3,
	}
	enum Usage : int
	{
		USAGE_3D_NO_EFFECTS = 3,
		USAGE_2D = 0,
		USAGE_2D_NO_SAMPLING = 1,
		USAGE_3D = 2,
	}
	enum DebugDraw : int
	{
		DEBUG_DRAW_DISABLED = 0,
		DEBUG_DRAW_WIREFRAME = 3,
		DEBUG_DRAW_OVERDRAW = 2,
		DEBUG_DRAW_UNSHADED = 1,
	}
	enum ShadowAtlasQuadrantSubdiv : int
	{
		SHADOW_ATLAS_QUADRANT_SUBDIV_256 = 5,
		SHADOW_ATLAS_QUADRANT_SUBDIV_4 = 2,
		SHADOW_ATLAS_QUADRANT_SUBDIV_64 = 4,
		SHADOW_ATLAS_QUADRANT_SUBDIV_16 = 3,
		SHADOW_ATLAS_QUADRANT_SUBDIV_1024 = 6,
		SHADOW_ATLAS_QUADRANT_SUBDIV_MAX = 7,
		SHADOW_ATLAS_QUADRANT_SUBDIV_DISABLED = 0,
		SHADOW_ATLAS_QUADRANT_SUBDIV_1 = 1,
	}
	enum UpdateMode : int
	{
		UPDATE_ONCE = 1,
		UPDATE_ALWAYS = 3,
		UPDATE_WHEN_VISIBLE = 2,
		UPDATE_DISABLED = 0,
	}
	enum MSAA : int
	{
		MSAA_8X = 3,
		MSAA_4X = 2,
		MSAA_DISABLED = 0,
		MSAA_2X = 1,
		MSAA_16X = 4,
	}
	enum int MSAA_16X = 4;
	enum int RENDER_INFO_MAX = 6;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_64 = 4;
	enum int CLEAR_MODE_ALWAYS = 0;
	enum int USAGE_2D = 0;
	enum int UPDATE_DISABLED = 0;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_1024 = 6;
	enum int MSAA_4X = 2;
	enum int RENDER_INFO_SHADER_CHANGES_IN_FRAME = 3;
	enum int RENDER_INFO_VERTICES_IN_FRAME = 1;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_4 = 2;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_256 = 5;
	enum int CLEAR_MODE_ONLY_NEXT_FRAME = 2;
	enum int UPDATE_ALWAYS = 3;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_16 = 3;
	enum int DEBUG_DRAW_OVERDRAW = 2;
	enum int USAGE_2D_NO_SAMPLING = 1;
	enum int MSAA_8X = 3;
	enum int DEBUG_DRAW_DISABLED = 0;
	enum int DEBUG_DRAW_WIREFRAME = 3;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_DISABLED = 0;
	enum int UPDATE_WHEN_VISIBLE = 2;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_1 = 1;
	enum int RENDER_INFO_DRAW_CALLS_IN_FRAME = 5;
	enum int CLEAR_MODE_NEVER = 1;
	enum int MSAA_2X = 1;
	enum int USAGE_3D_NO_EFFECTS = 3;
	enum int RENDER_INFO_MATERIAL_CHANGES_IN_FRAME = 2;
	enum int RENDER_INFO_SURFACE_CHANGES_IN_FRAME = 4;
	enum int DEBUG_DRAW_UNSHADED = 1;
	enum int RENDER_INFO_OBJECTS_IN_FRAME = 0;
	enum int USAGE_3D = 2;
	enum int UPDATE_ONCE = 1;
	enum int MSAA_DISABLED = 0;
	enum int SHADOW_ATLAS_QUADRANT_SUBDIV_MAX = 7;
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_arvr;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_arvr") = _GODOT_set_use_arvr;
	void set_use_arvr(in bool use)
	{
		_GODOT_set_use_arvr.bind("Viewport", "set_use_arvr");
		ptrcall!(void)(_GODOT_set_use_arvr, _godot_object, use);
	}
	package(godot) static GodotMethod!(bool) _GODOT_use_arvr;
	package(godot) alias _GODOT_methodBindInfo(string name : "use_arvr") = _GODOT_use_arvr;
	bool use_arvr()
	{
		_GODOT_use_arvr.bind("Viewport", "use_arvr");
		return ptrcall!(bool)(_GODOT_use_arvr, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in Vector2 size)
	{
		_GODOT_set_size.bind("Viewport", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("Viewport", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, World2D) _GODOT_set_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world_2d") = _GODOT_set_world_2d;
	void set_world_2d(in World2D world_2d)
	{
		_GODOT_set_world_2d.bind("Viewport", "set_world_2d");
		ptrcall!(void)(_GODOT_set_world_2d, _godot_object, world_2d);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_get_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_2d") = _GODOT_get_world_2d;
	World2D get_world_2d() const
	{
		_GODOT_get_world_2d.bind("Viewport", "get_world_2d");
		return ptrcall!(World2D)(_GODOT_get_world_2d, _godot_object);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_find_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_world_2d") = _GODOT_find_world_2d;
	World2D find_world_2d() const
	{
		_GODOT_find_world_2d.bind("Viewport", "find_world_2d");
		return ptrcall!(World2D)(_GODOT_find_world_2d, _godot_object);
	}
	package(godot) static GodotMethod!(void, World) _GODOT_set_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world") = _GODOT_set_world;
	void set_world(in World world)
	{
		_GODOT_set_world.bind("Viewport", "set_world");
		ptrcall!(void)(_GODOT_set_world, _godot_object, world);
	}
	package(godot) static GodotMethod!(World) _GODOT_get_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world") = _GODOT_get_world;
	World get_world() const
	{
		_GODOT_get_world.bind("Viewport", "get_world");
		return ptrcall!(World)(_GODOT_get_world, _godot_object);
	}
	package(godot) static GodotMethod!(World) _GODOT_find_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_world") = _GODOT_find_world;
	World find_world() const
	{
		_GODOT_find_world.bind("Viewport", "find_world");
		return ptrcall!(World)(_GODOT_find_world, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_canvas_transform") = _GODOT_set_canvas_transform;
	void set_canvas_transform(in Transform2D xform)
	{
		_GODOT_set_canvas_transform.bind("Viewport", "set_canvas_transform");
		ptrcall!(void)(_GODOT_set_canvas_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_transform") = _GODOT_get_canvas_transform;
	Transform2D get_canvas_transform() const
	{
		_GODOT_get_canvas_transform.bind("Viewport", "get_canvas_transform");
		return ptrcall!(Transform2D)(_GODOT_get_canvas_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_global_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_canvas_transform") = _GODOT_set_global_canvas_transform;
	void set_global_canvas_transform(in Transform2D xform)
	{
		_GODOT_set_global_canvas_transform.bind("Viewport", "set_global_canvas_transform");
		ptrcall!(void)(_GODOT_set_global_canvas_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_global_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_canvas_transform") = _GODOT_get_global_canvas_transform;
	Transform2D get_global_canvas_transform() const
	{
		_GODOT_get_global_canvas_transform.bind("Viewport", "get_global_canvas_transform");
		return ptrcall!(Transform2D)(_GODOT_get_global_canvas_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_final_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_final_transform") = _GODOT_get_final_transform;
	Transform2D get_final_transform() const
	{
		_GODOT_get_final_transform.bind("Viewport", "get_final_transform");
		return ptrcall!(Transform2D)(_GODOT_get_final_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_visible_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_rect") = _GODOT_get_visible_rect;
	Rect2 get_visible_rect() const
	{
		_GODOT_get_visible_rect.bind("Viewport", "get_visible_rect");
		return ptrcall!(Rect2)(_GODOT_get_visible_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_transparent_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transparent_background") = _GODOT_set_transparent_background;
	void set_transparent_background(in bool enable)
	{
		_GODOT_set_transparent_background.bind("Viewport", "set_transparent_background");
		ptrcall!(void)(_GODOT_set_transparent_background, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_transparent_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_transparent_background") = _GODOT_has_transparent_background;
	bool has_transparent_background() const
	{
		_GODOT_has_transparent_background.bind("Viewport", "has_transparent_background");
		return ptrcall!(bool)(_GODOT_has_transparent_background, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__parent_visibility_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_parent_visibility_changed") = _GODOT__parent_visibility_changed;
	void _parent_visibility_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_parent_visibility_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__parent_resized;
	package(godot) alias _GODOT_methodBindInfo(string name : "_parent_resized") = _GODOT__parent_resized;
	void _parent_resized()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_parent_resized");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__vp_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_vp_input") = _GODOT__vp_input;
	void _vp_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__vp_input_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_vp_input_text") = _GODOT__vp_input_text;
	void _vp_input_text(StringArg0)(in StringArg0 text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_vp_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__vp_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_vp_unhandled_input") = _GODOT__vp_unhandled_input;
	void _vp_unhandled_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool, Vector2, Vector2) _GODOT_set_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size_override") = _GODOT_set_size_override;
	void set_size_override(in bool enable, in Vector2 size = Vector2(-1, -1), in Vector2 margin = Vector2(0, 0))
	{
		_GODOT_set_size_override.bind("Viewport", "set_size_override");
		ptrcall!(void)(_GODOT_set_size_override, _godot_object, enable, size, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size_override") = _GODOT_get_size_override;
	Vector2 get_size_override() const
	{
		_GODOT_get_size_override.bind("Viewport", "get_size_override");
		return ptrcall!(Vector2)(_GODOT_get_size_override, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_size_override_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_size_override_enabled") = _GODOT_is_size_override_enabled;
	bool is_size_override_enabled() const
	{
		_GODOT_is_size_override_enabled.bind("Viewport", "is_size_override_enabled");
		return ptrcall!(bool)(_GODOT_is_size_override_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_size_override_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size_override_stretch") = _GODOT_set_size_override_stretch;
	void set_size_override_stretch(in bool enabled)
	{
		_GODOT_set_size_override_stretch.bind("Viewport", "set_size_override_stretch");
		ptrcall!(void)(_GODOT_set_size_override_stretch, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_size_override_stretch_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_size_override_stretch_enabled") = _GODOT_is_size_override_stretch_enabled;
	bool is_size_override_stretch_enabled() const
	{
		_GODOT_is_size_override_stretch_enabled.bind("Viewport", "is_size_override_stretch_enabled");
		return ptrcall!(bool)(_GODOT_is_size_override_stretch_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_vflip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vflip") = _GODOT_set_vflip;
	void set_vflip(in bool enable)
	{
		_GODOT_set_vflip.bind("Viewport", "set_vflip");
		ptrcall!(void)(_GODOT_set_vflip, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_vflip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vflip") = _GODOT_get_vflip;
	bool get_vflip() const
	{
		_GODOT_get_vflip.bind("Viewport", "get_vflip");
		return ptrcall!(bool)(_GODOT_get_vflip, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_clear_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clear_mode") = _GODOT_set_clear_mode;
	void set_clear_mode(in int mode)
	{
		_GODOT_set_clear_mode.bind("Viewport", "set_clear_mode");
		ptrcall!(void)(_GODOT_set_clear_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Viewport.ClearMode) _GODOT_get_clear_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clear_mode") = _GODOT_get_clear_mode;
	Viewport.ClearMode get_clear_mode() const
	{
		_GODOT_get_clear_mode.bind("Viewport", "get_clear_mode");
		return ptrcall!(Viewport.ClearMode)(_GODOT_get_clear_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_mode") = _GODOT_set_update_mode;
	void set_update_mode(in int mode)
	{
		_GODOT_set_update_mode.bind("Viewport", "set_update_mode");
		ptrcall!(void)(_GODOT_set_update_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Viewport.UpdateMode) _GODOT_get_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_mode") = _GODOT_get_update_mode;
	Viewport.UpdateMode get_update_mode() const
	{
		_GODOT_get_update_mode.bind("Viewport", "get_update_mode");
		return ptrcall!(Viewport.UpdateMode)(_GODOT_get_update_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_msaa;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_msaa") = _GODOT_set_msaa;
	void set_msaa(in int msaa)
	{
		_GODOT_set_msaa.bind("Viewport", "set_msaa");
		ptrcall!(void)(_GODOT_set_msaa, _godot_object, msaa);
	}
	package(godot) static GodotMethod!(Viewport.MSAA) _GODOT_get_msaa;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_msaa") = _GODOT_get_msaa;
	Viewport.MSAA get_msaa() const
	{
		_GODOT_get_msaa.bind("Viewport", "get_msaa");
		return ptrcall!(Viewport.MSAA)(_GODOT_get_msaa, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hdr") = _GODOT_set_hdr;
	void set_hdr(in bool enable)
	{
		_GODOT_set_hdr.bind("Viewport", "set_hdr");
		ptrcall!(void)(_GODOT_set_hdr, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hdr") = _GODOT_get_hdr;
	bool get_hdr() const
	{
		_GODOT_get_hdr.bind("Viewport", "get_hdr");
		return ptrcall!(bool)(_GODOT_get_hdr, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_usage") = _GODOT_set_usage;
	void set_usage(in int usage)
	{
		_GODOT_set_usage.bind("Viewport", "set_usage");
		ptrcall!(void)(_GODOT_set_usage, _godot_object, usage);
	}
	package(godot) static GodotMethod!(Viewport.Usage) _GODOT_get_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_usage") = _GODOT_get_usage;
	Viewport.Usage get_usage() const
	{
		_GODOT_get_usage.bind("Viewport", "get_usage");
		return ptrcall!(Viewport.Usage)(_GODOT_get_usage, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_debug_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_draw") = _GODOT_set_debug_draw;
	void set_debug_draw(in int debug_draw)
	{
		_GODOT_set_debug_draw.bind("Viewport", "set_debug_draw");
		ptrcall!(void)(_GODOT_set_debug_draw, _godot_object, debug_draw);
	}
	package(godot) static GodotMethod!(Viewport.DebugDraw) _GODOT_get_debug_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_debug_draw") = _GODOT_get_debug_draw;
	Viewport.DebugDraw get_debug_draw() const
	{
		_GODOT_get_debug_draw.bind("Viewport", "get_debug_draw");
		return ptrcall!(Viewport.DebugDraw)(_GODOT_get_debug_draw, _godot_object);
	}
	package(godot) static GodotMethod!(int, int) _GODOT_get_render_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_render_info") = _GODOT_get_render_info;
	int get_render_info(in int info)
	{
		_GODOT_get_render_info.bind("Viewport", "get_render_info");
		return ptrcall!(int)(_GODOT_get_render_info, _godot_object, info);
	}
	package(godot) static GodotMethod!(ViewportTexture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	ViewportTexture get_texture() const
	{
		_GODOT_get_texture.bind("Viewport", "get_texture");
		return ptrcall!(ViewportTexture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_physics_object_picking;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_physics_object_picking") = _GODOT_set_physics_object_picking;
	void set_physics_object_picking(in bool enable)
	{
		_GODOT_set_physics_object_picking.bind("Viewport", "set_physics_object_picking");
		ptrcall!(void)(_GODOT_set_physics_object_picking, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_physics_object_picking;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_physics_object_picking") = _GODOT_get_physics_object_picking;
	bool get_physics_object_picking()
	{
		_GODOT_get_physics_object_picking.bind("Viewport", "get_physics_object_picking");
		return ptrcall!(bool)(_GODOT_get_physics_object_picking, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_viewport_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_rid") = _GODOT_get_viewport_rid;
	RID get_viewport_rid() const
	{
		_GODOT_get_viewport_rid.bind("Viewport", "get_viewport_rid");
		return ptrcall!(RID)(_GODOT_get_viewport_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "input") = _GODOT_input;
	void input(in InputEvent local_event)
	{
		_GODOT_input.bind("Viewport", "input");
		ptrcall!(void)(_GODOT_input, _godot_object, local_event);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "unhandled_input") = _GODOT_unhandled_input;
	void unhandled_input(in InputEvent local_event)
	{
		_GODOT_unhandled_input.bind("Viewport", "unhandled_input");
		ptrcall!(void)(_GODOT_unhandled_input, _godot_object, local_event);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_worlds;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_worlds") = _GODOT_update_worlds;
	void update_worlds()
	{
		_GODOT_update_worlds.bind("Viewport", "update_worlds");
		ptrcall!(void)(_GODOT_update_worlds, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_own_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_own_world") = _GODOT_set_use_own_world;
	void set_use_own_world(in bool enable)
	{
		_GODOT_set_use_own_world.bind("Viewport", "set_use_own_world");
		ptrcall!(void)(_GODOT_set_use_own_world, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_own_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_own_world") = _GODOT_is_using_own_world;
	bool is_using_own_world() const
	{
		_GODOT_is_using_own_world.bind("Viewport", "is_using_own_world");
		return ptrcall!(bool)(_GODOT_is_using_own_world, _godot_object);
	}
	package(godot) static GodotMethod!(Camera) _GODOT_get_camera;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera") = _GODOT_get_camera;
	Camera get_camera() const
	{
		_GODOT_get_camera.bind("Viewport", "get_camera");
		return ptrcall!(Camera)(_GODOT_get_camera, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_audio_listener;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_audio_listener") = _GODOT_set_as_audio_listener;
	void set_as_audio_listener(in bool enable)
	{
		_GODOT_set_as_audio_listener.bind("Viewport", "set_as_audio_listener");
		ptrcall!(void)(_GODOT_set_as_audio_listener, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_audio_listener;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_audio_listener") = _GODOT_is_audio_listener;
	bool is_audio_listener() const
	{
		_GODOT_is_audio_listener.bind("Viewport", "is_audio_listener");
		return ptrcall!(bool)(_GODOT_is_audio_listener, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_audio_listener_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_audio_listener_2d") = _GODOT_set_as_audio_listener_2d;
	void set_as_audio_listener_2d(in bool enable)
	{
		_GODOT_set_as_audio_listener_2d.bind("Viewport", "set_as_audio_listener_2d");
		ptrcall!(void)(_GODOT_set_as_audio_listener_2d, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_audio_listener_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_audio_listener_2d") = _GODOT_is_audio_listener_2d;
	bool is_audio_listener_2d() const
	{
		_GODOT_is_audio_listener_2d.bind("Viewport", "is_audio_listener_2d");
		return ptrcall!(bool)(_GODOT_is_audio_listener_2d, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_attach_to_screen_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attach_to_screen_rect") = _GODOT_set_attach_to_screen_rect;
	void set_attach_to_screen_rect(in Rect2 rect)
	{
		_GODOT_set_attach_to_screen_rect.bind("Viewport", "set_attach_to_screen_rect");
		ptrcall!(void)(_GODOT_set_attach_to_screen_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_position") = _GODOT_get_mouse_position;
	Vector2 get_mouse_position() const
	{
		_GODOT_get_mouse_position.bind("Viewport", "get_mouse_position");
		return ptrcall!(Vector2)(_GODOT_get_mouse_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_warp_mouse;
	package(godot) alias _GODOT_methodBindInfo(string name : "warp_mouse") = _GODOT_warp_mouse;
	void warp_mouse(in Vector2 to_position)
	{
		_GODOT_warp_mouse.bind("Viewport", "warp_mouse");
		ptrcall!(void)(_GODOT_warp_mouse, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(bool) _GODOT_gui_has_modal_stack;
	package(godot) alias _GODOT_methodBindInfo(string name : "gui_has_modal_stack") = _GODOT_gui_has_modal_stack;
	bool gui_has_modal_stack() const
	{
		_GODOT_gui_has_modal_stack.bind("Viewport", "gui_has_modal_stack");
		return ptrcall!(bool)(_GODOT_gui_has_modal_stack, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_gui_get_drag_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "gui_get_drag_data") = _GODOT_gui_get_drag_data;
	Variant gui_get_drag_data() const
	{
		_GODOT_gui_get_drag_data.bind("Viewport", "gui_get_drag_data");
		return ptrcall!(Variant)(_GODOT_gui_get_drag_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_input") = _GODOT_set_disable_input;
	void set_disable_input(in bool disable)
	{
		_GODOT_set_disable_input.bind("Viewport", "set_disable_input");
		ptrcall!(void)(_GODOT_set_disable_input, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_input_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_input_disabled") = _GODOT_is_input_disabled;
	bool is_input_disabled() const
	{
		_GODOT_is_input_disabled.bind("Viewport", "is_input_disabled");
		return ptrcall!(bool)(_GODOT_is_input_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_3d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_3d") = _GODOT_set_disable_3d;
	void set_disable_3d(in bool disable)
	{
		_GODOT_set_disable_3d.bind("Viewport", "set_disable_3d");
		ptrcall!(void)(_GODOT_set_disable_3d, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_3d_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_3d_disabled") = _GODOT_is_3d_disabled;
	bool is_3d_disabled() const
	{
		_GODOT_is_3d_disabled.bind("Viewport", "is_3d_disabled");
		return ptrcall!(bool)(_GODOT_is_3d_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__gui_show_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_show_tooltip") = _GODOT__gui_show_tooltip;
	void _gui_show_tooltip()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gui_show_tooltip");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__gui_remove_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_remove_focus") = _GODOT__gui_remove_focus;
	void _gui_remove_focus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gui_remove_focus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_atlas_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_atlas_size") = _GODOT_set_shadow_atlas_size;
	void set_shadow_atlas_size(in int size)
	{
		_GODOT_set_shadow_atlas_size.bind("Viewport", "set_shadow_atlas_size");
		ptrcall!(void)(_GODOT_set_shadow_atlas_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_shadow_atlas_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_atlas_size") = _GODOT_get_shadow_atlas_size;
	int get_shadow_atlas_size() const
	{
		_GODOT_get_shadow_atlas_size.bind("Viewport", "get_shadow_atlas_size");
		return ptrcall!(int)(_GODOT_get_shadow_atlas_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_snap_controls_to_pixels;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_snap_controls_to_pixels") = _GODOT_set_snap_controls_to_pixels;
	void set_snap_controls_to_pixels(in bool enabled)
	{
		_GODOT_set_snap_controls_to_pixels.bind("Viewport", "set_snap_controls_to_pixels");
		ptrcall!(void)(_GODOT_set_snap_controls_to_pixels, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_snap_controls_to_pixels_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_snap_controls_to_pixels_enabled") = _GODOT_is_snap_controls_to_pixels_enabled;
	bool is_snap_controls_to_pixels_enabled() const
	{
		_GODOT_is_snap_controls_to_pixels_enabled.bind("Viewport", "is_snap_controls_to_pixels_enabled");
		return ptrcall!(bool)(_GODOT_is_snap_controls_to_pixels_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int) _GODOT_set_shadow_atlas_quadrant_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_atlas_quadrant_subdiv") = _GODOT_set_shadow_atlas_quadrant_subdiv;
	void set_shadow_atlas_quadrant_subdiv(in int quadrant, in int subdiv)
	{
		_GODOT_set_shadow_atlas_quadrant_subdiv.bind("Viewport", "set_shadow_atlas_quadrant_subdiv");
		ptrcall!(void)(_GODOT_set_shadow_atlas_quadrant_subdiv, _godot_object, quadrant, subdiv);
	}
	package(godot) static GodotMethod!(Viewport.ShadowAtlasQuadrantSubdiv, int) _GODOT_get_shadow_atlas_quadrant_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_atlas_quadrant_subdiv") = _GODOT_get_shadow_atlas_quadrant_subdiv;
	Viewport.ShadowAtlasQuadrantSubdiv get_shadow_atlas_quadrant_subdiv(in int quadrant) const
	{
		_GODOT_get_shadow_atlas_quadrant_subdiv.bind("Viewport", "get_shadow_atlas_quadrant_subdiv");
		return ptrcall!(Viewport.ShadowAtlasQuadrantSubdiv)(_GODOT_get_shadow_atlas_quadrant_subdiv, _godot_object, quadrant);
	}
}
