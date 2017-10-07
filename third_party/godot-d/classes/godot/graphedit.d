module godot.graphedit;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.control;
import godot.inputevent;
@GodotBaseClass struct GraphEdit
{
	static immutable string _GODOT_internal_name = "GraphEdit";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GraphEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GraphEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GraphEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GraphEdit");
		if(constructor is null) return typeof(this).init;
		return cast(GraphEdit)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String, int, String, int) _GODOT_connect_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_node") = _GODOT_connect_node;
	GodotError connect_node(StringArg0, StringArg2)(in StringArg0 from, in int from_port, in StringArg2 to, in int to_port)
	{
		_GODOT_connect_node.bind("GraphEdit", "connect_node");
		return ptrcall!(GodotError)(_GODOT_connect_node, _godot_object, from, from_port, to, to_port);
	}
	package(godot) static GodotMethod!(bool, String, int, String, int) _GODOT_is_node_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_node_connected") = _GODOT_is_node_connected;
	bool is_node_connected(StringArg0, StringArg2)(in StringArg0 from, in int from_port, in StringArg2 to, in int to_port)
	{
		_GODOT_is_node_connected.bind("GraphEdit", "is_node_connected");
		return ptrcall!(bool)(_GODOT_is_node_connected, _godot_object, from, from_port, to, to_port);
	}
	package(godot) static GodotMethod!(void, String, int, String, int) _GODOT_disconnect_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_node") = _GODOT_disconnect_node;
	void disconnect_node(StringArg0, StringArg2)(in StringArg0 from, in int from_port, in StringArg2 to, in int to_port)
	{
		_GODOT_disconnect_node.bind("GraphEdit", "disconnect_node");
		ptrcall!(void)(_GODOT_disconnect_node, _godot_object, from, from_port, to, to_port);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_connection_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_list") = _GODOT_get_connection_list;
	Array get_connection_list() const
	{
		_GODOT_get_connection_list.bind("GraphEdit", "get_connection_list");
		return ptrcall!(Array)(_GODOT_get_connection_list, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_ofs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_ofs") = _GODOT_get_scroll_ofs;
	Vector2 get_scroll_ofs() const
	{
		_GODOT_get_scroll_ofs.bind("GraphEdit", "get_scroll_ofs");
		return ptrcall!(Vector2)(_GODOT_get_scroll_ofs, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_ofs;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_ofs") = _GODOT_set_scroll_ofs;
	void set_scroll_ofs(in Vector2 ofs)
	{
		_GODOT_set_scroll_ofs.bind("GraphEdit", "set_scroll_ofs");
		ptrcall!(void)(_GODOT_set_scroll_ofs, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_zoom") = _GODOT_set_zoom;
	void set_zoom(in float p_zoom)
	{
		_GODOT_set_zoom.bind("GraphEdit", "set_zoom");
		ptrcall!(void)(_GODOT_set_zoom, _godot_object, p_zoom);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_zoom") = _GODOT_get_zoom;
	float get_zoom() const
	{
		_GODOT_get_zoom.bind("GraphEdit", "get_zoom");
		return ptrcall!(float)(_GODOT_get_zoom, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_snap") = _GODOT_set_snap;
	void set_snap(in int pixels)
	{
		_GODOT_set_snap.bind("GraphEdit", "set_snap");
		ptrcall!(void)(_GODOT_set_snap, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_snap") = _GODOT_get_snap;
	int get_snap() const
	{
		_GODOT_get_snap.bind("GraphEdit", "get_snap");
		return ptrcall!(int)(_GODOT_get_snap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_snap") = _GODOT_set_use_snap;
	void set_use_snap(in bool enable)
	{
		_GODOT_set_use_snap.bind("GraphEdit", "set_use_snap");
		ptrcall!(void)(_GODOT_set_use_snap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_snap") = _GODOT_is_using_snap;
	bool is_using_snap() const
	{
		_GODOT_is_using_snap.bind("GraphEdit", "is_using_snap");
		return ptrcall!(bool)(_GODOT_is_using_snap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_right_disconnects;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_right_disconnects") = _GODOT_set_right_disconnects;
	void set_right_disconnects(in bool enable)
	{
		_GODOT_set_right_disconnects.bind("GraphEdit", "set_right_disconnects");
		ptrcall!(void)(_GODOT_set_right_disconnects, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_right_disconnects_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_right_disconnects_enabled") = _GODOT_is_right_disconnects_enabled;
	bool is_right_disconnects_enabled() const
	{
		_GODOT_is_right_disconnects_enabled.bind("GraphEdit", "is_right_disconnects_enabled");
		return ptrcall!(bool)(_GODOT_is_right_disconnects_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__graph_node_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_graph_node_moved") = _GODOT__graph_node_moved;
	void _graph_node_moved(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__graph_node_raised;
	package(godot) alias _GODOT_methodBindInfo(string name : "_graph_node_raised") = _GODOT__graph_node_raised;
	void _graph_node_raised(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_raised");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__top_layer_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_top_layer_input") = _GODOT__top_layer_input;
	void _top_layer_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_top_layer_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__top_layer_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_top_layer_draw") = _GODOT__top_layer_draw;
	void _top_layer_draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_top_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__scroll_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_moved") = _GODOT__scroll_moved;
	void _scroll_moved(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__zoom_minus;
	package(godot) alias _GODOT_methodBindInfo(string name : "_zoom_minus") = _GODOT__zoom_minus;
	void _zoom_minus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_minus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__zoom_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "_zoom_reset") = _GODOT__zoom_reset;
	void _zoom_reset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_reset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__zoom_plus;
	package(godot) alias _GODOT_methodBindInfo(string name : "_zoom_plus") = _GODOT__zoom_plus;
	void _zoom_plus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_plus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__snap_toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_snap_toggled") = _GODOT__snap_toggled;
	void _snap_toggled()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_snap_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__snap_value_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_snap_value_changed") = _GODOT__snap_value_changed;
	void _snap_value_changed(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_snap_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	void _gui_input(in InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_scroll_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_scroll_offset") = _GODOT__update_scroll_offset;
	void _update_scroll_offset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll_offset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__connections_layer_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_connections_layer_draw") = _GODOT__connections_layer_draw;
	void _connections_layer_draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connections_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selected") = _GODOT_set_selected;
	void set_selected(in GodotObject node)
	{
		_GODOT_set_selected.bind("GraphEdit", "set_selected");
		ptrcall!(void)(_GODOT_set_selected, _godot_object, node);
	}
}
