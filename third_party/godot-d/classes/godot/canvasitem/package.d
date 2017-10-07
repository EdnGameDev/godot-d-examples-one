module godot.canvasitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.node;
import godot.texture;
import godot.stylebox;
import godot.font;
import godot.world2d;
import godot.material;
import godot.inputevent;
@GodotBaseClass struct CanvasItem
{
	static immutable string _GODOT_internal_name = "CanvasItem";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in CanvasItem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasItem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasItem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CanvasItem");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItem)(constructor());
	}
	enum BlendMode : int
	{
		BLEND_MODE_SUB = 2,
		BLEND_MODE_MIX = 0,
		BLEND_MODE_MUL = 3,
		BLEND_MODE_ADD = 1,
		BLEND_MODE_PREMULT_ALPHA = 4,
	}
	enum int BLEND_MODE_MUL = 3;
	enum int BLEND_MODE_ADD = 1;
	enum int BLEND_MODE_SUB = 2;
	enum int NOTIFICATION_EXIT_CANVAS = 33;
	enum int NOTIFICATION_ENTER_CANVAS = 32;
	enum int BLEND_MODE_MIX = 0;
	enum int BLEND_MODE_PREMULT_ALPHA = 4;
	enum int NOTIFICATION_TRANSFORM_CHANGED = 29;
	enum int NOTIFICATION_DRAW = 30;
	enum int NOTIFICATION_VISIBILITY_CHANGED = 31;
	package(godot) static GodotMethod!(void) _GODOT__draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_draw") = _GODOT__draw;
	void _draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__toplevel_raise_self;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toplevel_raise_self") = _GODOT__toplevel_raise_self;
	void _toplevel_raise_self()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toplevel_raise_self");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_callback") = _GODOT__update_callback;
	void _update_callback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_edit_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_set_state") = _GODOT_edit_set_state;
	void edit_set_state(VariantArg0)(in VariantArg0 state)
	{
		_GODOT_edit_set_state.bind("CanvasItem", "edit_set_state");
		ptrcall!(void)(_GODOT_edit_set_state, _godot_object, state);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_edit_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_get_state") = _GODOT_edit_get_state;
	Variant edit_get_state() const
	{
		_GODOT_edit_get_state.bind("CanvasItem", "edit_get_state");
		return ptrcall!(Variant)(_GODOT_edit_get_state, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_edit_set_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_set_rect") = _GODOT_edit_set_rect;
	void edit_set_rect(in Rect2 rect)
	{
		_GODOT_edit_set_rect.bind("CanvasItem", "edit_set_rect");
		ptrcall!(void)(_GODOT_edit_set_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_edit_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_rotate") = _GODOT_edit_rotate;
	void edit_rotate(in float degrees)
	{
		_GODOT_edit_rotate.bind("CanvasItem", "edit_rotate");
		ptrcall!(void)(_GODOT_edit_rotate, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_item_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_rect") = _GODOT_get_item_rect;
	Rect2 get_item_rect() const
	{
		_GODOT_get_item_rect.bind("CanvasItem", "get_item_rect");
		return ptrcall!(Rect2)(_GODOT_get_item_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_item_and_children_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_and_children_rect") = _GODOT_get_item_and_children_rect;
	Rect2 get_item_and_children_rect() const
	{
		_GODOT_get_item_and_children_rect.bind("CanvasItem", "get_item_and_children_rect");
		return ptrcall!(Rect2)(_GODOT_get_item_and_children_rect, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_canvas_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_item") = _GODOT_get_canvas_item;
	RID get_canvas_item() const
	{
		_GODOT_get_canvas_item.bind("CanvasItem", "get_canvas_item");
		return ptrcall!(RID)(_GODOT_get_canvas_item, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible") = _GODOT_set_visible;
	void set_visible(in bool visible)
	{
		_GODOT_set_visible.bind("CanvasItem", "set_visible");
		ptrcall!(void)(_GODOT_set_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible") = _GODOT_is_visible;
	bool is_visible() const
	{
		_GODOT_is_visible.bind("CanvasItem", "is_visible");
		return ptrcall!(bool)(_GODOT_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible_in_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible_in_tree") = _GODOT_is_visible_in_tree;
	bool is_visible_in_tree() const
	{
		_GODOT_is_visible_in_tree.bind("CanvasItem", "is_visible_in_tree");
		return ptrcall!(bool)(_GODOT_is_visible_in_tree, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_show;
	package(godot) alias _GODOT_methodBindInfo(string name : "show") = _GODOT_show;
	void show()
	{
		_GODOT_show.bind("CanvasItem", "show");
		ptrcall!(void)(_GODOT_show, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide") = _GODOT_hide;
	void hide()
	{
		_GODOT_hide.bind("CanvasItem", "hide");
		ptrcall!(void)(_GODOT_hide, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "update") = _GODOT_update;
	void update()
	{
		_GODOT_update.bind("CanvasItem", "update");
		ptrcall!(void)(_GODOT_update, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_toplevel") = _GODOT_set_as_toplevel;
	void set_as_toplevel(in bool enable)
	{
		_GODOT_set_as_toplevel.bind("CanvasItem", "set_as_toplevel");
		ptrcall!(void)(_GODOT_set_as_toplevel, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_set_as_toplevel") = _GODOT_is_set_as_toplevel;
	bool is_set_as_toplevel() const
	{
		_GODOT_is_set_as_toplevel.bind("CanvasItem", "is_set_as_toplevel");
		return ptrcall!(bool)(_GODOT_is_set_as_toplevel, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_light_mask") = _GODOT_set_light_mask;
	void set_light_mask(in int light_mask)
	{
		_GODOT_set_light_mask.bind("CanvasItem", "set_light_mask");
		ptrcall!(void)(_GODOT_set_light_mask, _godot_object, light_mask);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_light_mask") = _GODOT_get_light_mask;
	int get_light_mask() const
	{
		_GODOT_get_light_mask.bind("CanvasItem", "get_light_mask");
		return ptrcall!(int)(_GODOT_get_light_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_modulate") = _GODOT_set_modulate;
	void set_modulate(in Color modulate)
	{
		_GODOT_set_modulate.bind("CanvasItem", "set_modulate");
		ptrcall!(void)(_GODOT_set_modulate, _godot_object, modulate);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modulate") = _GODOT_get_modulate;
	Color get_modulate() const
	{
		_GODOT_get_modulate.bind("CanvasItem", "get_modulate");
		return ptrcall!(Color)(_GODOT_get_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_self_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_self_modulate") = _GODOT_set_self_modulate;
	void set_self_modulate(in Color self_modulate)
	{
		_GODOT_set_self_modulate.bind("CanvasItem", "set_self_modulate");
		ptrcall!(void)(_GODOT_set_self_modulate, _godot_object, self_modulate);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_self_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_self_modulate") = _GODOT_get_self_modulate;
	Color get_self_modulate() const
	{
		_GODOT_get_self_modulate.bind("CanvasItem", "get_self_modulate");
		return ptrcall!(Color)(_GODOT_get_self_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_behind_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_behind_parent") = _GODOT_set_draw_behind_parent;
	void set_draw_behind_parent(in bool enable)
	{
		_GODOT_set_draw_behind_parent.bind("CanvasItem", "set_draw_behind_parent");
		ptrcall!(void)(_GODOT_set_draw_behind_parent, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_behind_parent_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_behind_parent_enabled") = _GODOT_is_draw_behind_parent_enabled;
	bool is_draw_behind_parent_enabled() const
	{
		_GODOT_is_draw_behind_parent_enabled.bind("CanvasItem", "is_draw_behind_parent_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_behind_parent_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_on_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_on_top") = _GODOT__set_on_top;
	void _set_on_top(in bool on_top)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(on_top);
		String _GODOT_method_name = String("_set_on_top");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_on_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_on_top") = _GODOT__is_on_top;
	bool _is_on_top() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_on_top");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2, Color, float, bool) _GODOT_draw_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_line") = _GODOT_draw_line;
	void draw_line(in Vector2 from, in Vector2 to, in Color color, in float width = 1, in bool antialiased = false)
	{
		_GODOT_draw_line.bind("CanvasItem", "draw_line");
		ptrcall!(void)(_GODOT_draw_line, _godot_object, from, to, color, width, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, Color, float, bool) _GODOT_draw_polyline;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_polyline") = _GODOT_draw_polyline;
	void draw_polyline(in PoolVector2Array points, in Color color, in float width = 1, in bool antialiased = false)
	{
		_GODOT_draw_polyline.bind("CanvasItem", "draw_polyline");
		ptrcall!(void)(_GODOT_draw_polyline, _godot_object, points, color, width, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, float, bool) _GODOT_draw_polyline_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_polyline_colors") = _GODOT_draw_polyline_colors;
	void draw_polyline_colors(in PoolVector2Array points, in PoolColorArray colors, in float width = 1, in bool antialiased = false)
	{
		_GODOT_draw_polyline_colors.bind("CanvasItem", "draw_polyline_colors");
		ptrcall!(void)(_GODOT_draw_polyline_colors, _godot_object, points, colors, width, antialiased);
	}
	package(godot) static GodotMethod!(void, Rect2, Color, bool) _GODOT_draw_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_rect") = _GODOT_draw_rect;
	void draw_rect(in Rect2 rect, in Color color, in bool filled = true)
	{
		_GODOT_draw_rect.bind("CanvasItem", "draw_rect");
		ptrcall!(void)(_GODOT_draw_rect, _godot_object, rect, color, filled);
	}
	package(godot) static GodotMethod!(void, Vector2, float, Color) _GODOT_draw_circle;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_circle") = _GODOT_draw_circle;
	void draw_circle(in Vector2 position, in float radius, in Color color)
	{
		_GODOT_draw_circle.bind("CanvasItem", "draw_circle");
		ptrcall!(void)(_GODOT_draw_circle, _godot_object, position, radius, color);
	}
	package(godot) static GodotMethod!(void, Texture, Vector2, Color, Texture) _GODOT_draw_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_texture") = _GODOT_draw_texture;
	void draw_texture(in Texture texture, in Vector2 position, in Color modulate = Color(1,1,1,1), in Texture normal_map = Texture.init)
	{
		_GODOT_draw_texture.bind("CanvasItem", "draw_texture");
		ptrcall!(void)(_GODOT_draw_texture, _godot_object, texture, position, modulate, normal_map);
	}
	package(godot) static GodotMethod!(void, Texture, Rect2, bool, Color, bool, Texture) _GODOT_draw_texture_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_texture_rect") = _GODOT_draw_texture_rect;
	void draw_texture_rect(in Texture texture, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init)
	{
		_GODOT_draw_texture_rect.bind("CanvasItem", "draw_texture_rect");
		ptrcall!(void)(_GODOT_draw_texture_rect, _godot_object, texture, rect, tile, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, Texture, Rect2, Rect2, Color, bool, Texture, bool) _GODOT_draw_texture_rect_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_texture_rect_region") = _GODOT_draw_texture_rect_region;
	void draw_texture_rect_region(in Texture texture, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init, in bool clip_uv = true)
	{
		_GODOT_draw_texture_rect_region.bind("CanvasItem", "draw_texture_rect_region");
		ptrcall!(void)(_GODOT_draw_texture_rect_region, _godot_object, texture, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	package(godot) static GodotMethod!(void, StyleBox, Rect2) _GODOT_draw_style_box;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_style_box") = _GODOT_draw_style_box;
	void draw_style_box(in StyleBox style_box, in Rect2 rect)
	{
		_GODOT_draw_style_box.bind("CanvasItem", "draw_style_box");
		ptrcall!(void)(_GODOT_draw_style_box, _godot_object, style_box, rect);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, float, Texture) _GODOT_draw_primitive;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_primitive") = _GODOT_draw_primitive;
	void draw_primitive(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, in Texture texture = Texture.init, in float width = 1, in Texture normal_map = Texture.init)
	{
		_GODOT_draw_primitive.bind("CanvasItem", "draw_primitive");
		ptrcall!(void)(_GODOT_draw_primitive, _godot_object, points, colors, uvs, texture, width, normal_map);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, Texture, bool) _GODOT_draw_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_polygon") = _GODOT_draw_polygon;
	void draw_polygon(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.empty, in Texture texture = Texture.init, in Texture normal_map = Texture.init, in bool antialiased = false)
	{
		_GODOT_draw_polygon.bind("CanvasItem", "draw_polygon");
		ptrcall!(void)(_GODOT_draw_polygon, _godot_object, points, colors, uvs, texture, normal_map, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, Color, PoolVector2Array, Texture, Texture, bool) _GODOT_draw_colored_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_colored_polygon") = _GODOT_draw_colored_polygon;
	void draw_colored_polygon(in PoolVector2Array points, in Color color, in PoolVector2Array uvs = PoolVector2Array.empty, in Texture texture = Texture.init, in Texture normal_map = Texture.init, in bool antialiased = false)
	{
		_GODOT_draw_colored_polygon.bind("CanvasItem", "draw_colored_polygon");
		ptrcall!(void)(_GODOT_draw_colored_polygon, _godot_object, points, color, uvs, texture, normal_map, antialiased);
	}
	package(godot) static GodotMethod!(void, Font, Vector2, String, Color, int) _GODOT_draw_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_string") = _GODOT_draw_string;
	void draw_string(StringArg2)(in Font font, in Vector2 position, in StringArg2 text, in Color modulate = Color(1,1,1,1), in int clip_w = -1)
	{
		_GODOT_draw_string.bind("CanvasItem", "draw_string");
		ptrcall!(void)(_GODOT_draw_string, _godot_object, font, position, text, modulate, clip_w);
	}
	package(godot) static GodotMethod!(float, Font, Vector2, String, String, Color) _GODOT_draw_char;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_char") = _GODOT_draw_char;
	float draw_char(StringArg2, StringArg3)(in Font font, in Vector2 position, in StringArg2 _char, in StringArg3 next, in Color modulate = Color(1,1,1,1))
	{
		_GODOT_draw_char.bind("CanvasItem", "draw_char");
		return ptrcall!(float)(_GODOT_draw_char, _godot_object, font, position, _char, next, modulate);
	}
	package(godot) static GodotMethod!(void, Vector2, float, Vector2) _GODOT_draw_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_set_transform") = _GODOT_draw_set_transform;
	void draw_set_transform(in Vector2 position, in float rotation, in Vector2 scale)
	{
		_GODOT_draw_set_transform.bind("CanvasItem", "draw_set_transform");
		ptrcall!(void)(_GODOT_draw_set_transform, _godot_object, position, rotation, scale);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_draw_set_transform_matrix;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_set_transform_matrix") = _GODOT_draw_set_transform_matrix;
	void draw_set_transform_matrix(in Transform2D xform)
	{
		_GODOT_draw_set_transform_matrix.bind("CanvasItem", "draw_set_transform_matrix");
		ptrcall!(void)(_GODOT_draw_set_transform_matrix, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	Transform2D get_transform() const
	{
		_GODOT_get_transform.bind("CanvasItem", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_transform") = _GODOT_get_global_transform;
	Transform2D get_global_transform() const
	{
		_GODOT_get_global_transform.bind("CanvasItem", "get_global_transform");
		return ptrcall!(Transform2D)(_GODOT_get_global_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_global_transform_with_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_transform_with_canvas") = _GODOT_get_global_transform_with_canvas;
	Transform2D get_global_transform_with_canvas() const
	{
		_GODOT_get_global_transform_with_canvas.bind("CanvasItem", "get_global_transform_with_canvas");
		return ptrcall!(Transform2D)(_GODOT_get_global_transform_with_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_viewport_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_transform") = _GODOT_get_viewport_transform;
	Transform2D get_viewport_transform() const
	{
		_GODOT_get_viewport_transform.bind("CanvasItem", "get_viewport_transform");
		return ptrcall!(Transform2D)(_GODOT_get_viewport_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_viewport_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_rect") = _GODOT_get_viewport_rect;
	Rect2 get_viewport_rect() const
	{
		_GODOT_get_viewport_rect.bind("CanvasItem", "get_viewport_rect");
		return ptrcall!(Rect2)(_GODOT_get_viewport_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_transform") = _GODOT_get_canvas_transform;
	Transform2D get_canvas_transform() const
	{
		_GODOT_get_canvas_transform.bind("CanvasItem", "get_canvas_transform");
		return ptrcall!(Transform2D)(_GODOT_get_canvas_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_local_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_mouse_position") = _GODOT_get_local_mouse_position;
	Vector2 get_local_mouse_position() const
	{
		_GODOT_get_local_mouse_position.bind("CanvasItem", "get_local_mouse_position");
		return ptrcall!(Vector2)(_GODOT_get_local_mouse_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_mouse_position") = _GODOT_get_global_mouse_position;
	Vector2 get_global_mouse_position() const
	{
		_GODOT_get_global_mouse_position.bind("CanvasItem", "get_global_mouse_position");
		return ptrcall!(Vector2)(_GODOT_get_global_mouse_position, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas") = _GODOT_get_canvas;
	RID get_canvas() const
	{
		_GODOT_get_canvas.bind("CanvasItem", "get_canvas");
		return ptrcall!(RID)(_GODOT_get_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_get_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_2d") = _GODOT_get_world_2d;
	World2D get_world_2d() const
	{
		_GODOT_get_world_2d.bind("CanvasItem", "get_world_2d");
		return ptrcall!(World2D)(_GODOT_get_world_2d, _godot_object);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	void set_material(in Material material)
	{
		_GODOT_set_material.bind("CanvasItem", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material") = _GODOT_get_material;
	Material get_material() const
	{
		_GODOT_get_material.bind("CanvasItem", "get_material");
		return ptrcall!(Material)(_GODOT_get_material, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_parent_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_parent_material") = _GODOT_set_use_parent_material;
	void set_use_parent_material(in bool enable)
	{
		_GODOT_set_use_parent_material.bind("CanvasItem", "set_use_parent_material");
		ptrcall!(void)(_GODOT_set_use_parent_material, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_parent_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_parent_material") = _GODOT_get_use_parent_material;
	bool get_use_parent_material() const
	{
		_GODOT_get_use_parent_material.bind("CanvasItem", "get_use_parent_material");
		return ptrcall!(bool)(_GODOT_get_use_parent_material, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_local_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_local_transform") = _GODOT_set_notify_local_transform;
	void set_notify_local_transform(in bool enable)
	{
		_GODOT_set_notify_local_transform.bind("CanvasItem", "set_notify_local_transform");
		ptrcall!(void)(_GODOT_set_notify_local_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_local_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_local_transform_notification_enabled") = _GODOT_is_local_transform_notification_enabled;
	bool is_local_transform_notification_enabled() const
	{
		_GODOT_is_local_transform_notification_enabled.bind("CanvasItem", "is_local_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_local_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_transform") = _GODOT_set_notify_transform;
	void set_notify_transform(in bool enable)
	{
		_GODOT_set_notify_transform.bind("CanvasItem", "set_notify_transform");
		ptrcall!(void)(_GODOT_set_notify_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_transform_notification_enabled") = _GODOT_is_transform_notification_enabled;
	bool is_transform_notification_enabled() const
	{
		_GODOT_is_transform_notification_enabled.bind("CanvasItem", "is_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_make_canvas_position_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_canvas_position_local") = _GODOT_make_canvas_position_local;
	Vector2 make_canvas_position_local(in Vector2 screen_point) const
	{
		_GODOT_make_canvas_position_local.bind("CanvasItem", "make_canvas_position_local");
		return ptrcall!(Vector2)(_GODOT_make_canvas_position_local, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(InputEvent, InputEvent) _GODOT_make_input_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_input_local") = _GODOT_make_input_local;
	InputEvent make_input_local(in InputEvent event) const
	{
		_GODOT_make_input_local.bind("CanvasItem", "make_input_local");
		return ptrcall!(InputEvent)(_GODOT_make_input_local, _godot_object, event);
	}
}
