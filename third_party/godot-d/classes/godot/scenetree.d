module godot.scenetree;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.mainloop;
import godot.viewport;
import godot.node;
import godot.scenetreetimer;
import godot.packedscene;
import godot.networkedmultiplayerpeer;
@GodotBaseClass struct SceneTree
{
	static immutable string _GODOT_internal_name = "SceneTree";
public:
	union { godot_object _godot_object; MainLoop base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in SceneTree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneTree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SceneTree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SceneTree");
		if(constructor is null) return typeof(this).init;
		return cast(SceneTree)(constructor());
	}
	enum StretchAspect : int
	{
		STRETCH_ASPECT_EXPAND = 4,
		STRETCH_ASPECT_KEEP = 1,
		STRETCH_ASPECT_IGNORE = 0,
		STRETCH_ASPECT_KEEP_WIDTH = 2,
		STRETCH_ASPECT_KEEP_HEIGHT = 3,
	}
	enum CallGroupFlags : int
	{
		GROUP_CALL_DEFAULT = 0,
		GROUP_CALL_UNIQUE = 4,
		GROUP_CALL_REALTIME = 2,
		GROUP_CALL_REVERSE = 1,
	}
	enum StretchMode : int
	{
		STRETCH_MODE_2D = 1,
		STRETCH_MODE_DISABLED = 0,
		STRETCH_MODE_VIEWPORT = 2,
	}
	enum int STRETCH_MODE_2D = 1;
	enum int STRETCH_ASPECT_EXPAND = 4;
	enum int STRETCH_ASPECT_KEEP = 1;
	enum int STRETCH_MODE_DISABLED = 0;
	enum int STRETCH_MODE_VIEWPORT = 2;
	enum int STRETCH_ASPECT_IGNORE = 0;
	enum int STRETCH_ASPECT_KEEP_WIDTH = 2;
	enum int STRETCH_ASPECT_KEEP_HEIGHT = 3;
	enum int GROUP_CALL_DEFAULT = 0;
	enum int GROUP_CALL_UNIQUE = 4;
	enum int GROUP_CALL_REALTIME = 2;
	enum int GROUP_CALL_REVERSE = 1;
	package(godot) static GodotMethod!(Viewport) _GODOT_get_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_root") = _GODOT_get_root;
	Viewport get_root() const
	{
		_GODOT_get_root.bind("SceneTree", "get_root");
		return ptrcall!(Viewport)(_GODOT_get_root, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_group") = _GODOT_has_group;
	bool has_group(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_group.bind("SceneTree", "has_group");
		return ptrcall!(bool)(_GODOT_has_group, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_auto_accept_quit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_auto_accept_quit") = _GODOT_set_auto_accept_quit;
	void set_auto_accept_quit(in bool enabled)
	{
		_GODOT_set_auto_accept_quit.bind("SceneTree", "set_auto_accept_quit");
		ptrcall!(void)(_GODOT_set_auto_accept_quit, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_debug_collisions_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_collisions_hint") = _GODOT_set_debug_collisions_hint;
	void set_debug_collisions_hint(in bool enable)
	{
		_GODOT_set_debug_collisions_hint.bind("SceneTree", "set_debug_collisions_hint");
		ptrcall!(void)(_GODOT_set_debug_collisions_hint, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_debugging_collisions_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_debugging_collisions_hint") = _GODOT_is_debugging_collisions_hint;
	bool is_debugging_collisions_hint() const
	{
		_GODOT_is_debugging_collisions_hint.bind("SceneTree", "is_debugging_collisions_hint");
		return ptrcall!(bool)(_GODOT_is_debugging_collisions_hint, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_debug_navigation_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_navigation_hint") = _GODOT_set_debug_navigation_hint;
	void set_debug_navigation_hint(in bool enable)
	{
		_GODOT_set_debug_navigation_hint.bind("SceneTree", "set_debug_navigation_hint");
		ptrcall!(void)(_GODOT_set_debug_navigation_hint, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_debugging_navigation_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_debugging_navigation_hint") = _GODOT_is_debugging_navigation_hint;
	bool is_debugging_navigation_hint() const
	{
		_GODOT_is_debugging_navigation_hint.bind("SceneTree", "is_debugging_navigation_hint");
		return ptrcall!(bool)(_GODOT_is_debugging_navigation_hint, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_edited_scene_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edited_scene_root") = _GODOT_set_edited_scene_root;
	void set_edited_scene_root(in GodotObject scene)
	{
		_GODOT_set_edited_scene_root.bind("SceneTree", "set_edited_scene_root");
		ptrcall!(void)(_GODOT_set_edited_scene_root, _godot_object, scene);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_edited_scene_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited_scene_root") = _GODOT_get_edited_scene_root;
	Node get_edited_scene_root() const
	{
		_GODOT_get_edited_scene_root.bind("SceneTree", "get_edited_scene_root");
		return ptrcall!(Node)(_GODOT_get_edited_scene_root, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pause;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pause") = _GODOT_set_pause;
	void set_pause(in bool enable)
	{
		_GODOT_set_pause.bind("SceneTree", "set_pause");
		ptrcall!(void)(_GODOT_set_pause, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_paused") = _GODOT_is_paused;
	bool is_paused() const
	{
		_GODOT_is_paused.bind("SceneTree", "is_paused");
		return ptrcall!(bool)(_GODOT_is_paused, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_input_as_handled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_input_as_handled") = _GODOT_set_input_as_handled;
	void set_input_as_handled()
	{
		_GODOT_set_input_as_handled.bind("SceneTree", "set_input_as_handled");
		ptrcall!(void)(_GODOT_set_input_as_handled, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_input_handled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_input_handled") = _GODOT_is_input_handled;
	bool is_input_handled()
	{
		_GODOT_is_input_handled.bind("SceneTree", "is_input_handled");
		return ptrcall!(bool)(_GODOT_is_input_handled, _godot_object);
	}
	package(godot) static GodotMethod!(SceneTreeTimer, float, bool) _GODOT_create_timer;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_timer") = _GODOT_create_timer;
	SceneTreeTimer create_timer(in float time_sec, in bool pause_mode_process = true)
	{
		_GODOT_create_timer.bind("SceneTree", "create_timer");
		return ptrcall!(SceneTreeTimer)(_GODOT_create_timer, _godot_object, time_sec, pause_mode_process);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_node_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_count") = _GODOT_get_node_count;
	int get_node_count() const
	{
		_GODOT_get_node_count.bind("SceneTree", "get_node_count");
		return ptrcall!(int)(_GODOT_get_node_count, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	int get_frame() const
	{
		_GODOT_get_frame.bind("SceneTree", "get_frame");
		return ptrcall!(int)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_quit;
	package(godot) alias _GODOT_methodBindInfo(string name : "quit") = _GODOT_quit;
	void quit()
	{
		_GODOT_quit.bind("SceneTree", "quit");
		ptrcall!(void)(_GODOT_quit, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, int, Vector2, int) _GODOT_set_screen_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_screen_stretch") = _GODOT_set_screen_stretch;
	void set_screen_stretch(in int mode, in int aspect, in Vector2 minsize, in int shrink = 1)
	{
		_GODOT_set_screen_stretch.bind("SceneTree", "set_screen_stretch");
		ptrcall!(void)(_GODOT_set_screen_stretch, _godot_object, mode, aspect, minsize, shrink);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_queue_delete;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_delete") = _GODOT_queue_delete;
	void queue_delete(in GodotObject obj)
	{
		_GODOT_queue_delete.bind("SceneTree", "queue_delete");
		ptrcall!(void)(_GODOT_queue_delete, _godot_object, obj);
	}
	package(godot) static GodotMethod!(Variant, int, String, String, GodotVarArgs) _GODOT_call_group_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_group_flags") = _GODOT_call_group_flags;
	Variant call_group_flags(StringArg1, StringArg2, VarArgs...)(in int flags, in StringArg1 group, in StringArg2 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(flags);
		_GODOT_args.append(group);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_group_flags");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, String, int) _GODOT_notify_group_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "notify_group_flags") = _GODOT_notify_group_flags;
	void notify_group_flags(StringArg1)(in int call_flags, in StringArg1 group, in int notification)
	{
		_GODOT_notify_group_flags.bind("SceneTree", "notify_group_flags");
		ptrcall!(void)(_GODOT_notify_group_flags, _godot_object, call_flags, group, notification);
	}
	package(godot) static GodotMethod!(void, int, String, String, Variant) _GODOT_set_group_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_group_flags") = _GODOT_set_group_flags;
	void set_group_flags(StringArg1, StringArg2, VariantArg3)(in int call_flags, in StringArg1 group, in StringArg2 property, in VariantArg3 value)
	{
		_GODOT_set_group_flags.bind("SceneTree", "set_group_flags");
		ptrcall!(void)(_GODOT_set_group_flags, _godot_object, call_flags, group, property, value);
	}
	package(godot) static GodotMethod!(Variant, String, String, GodotVarArgs) _GODOT_call_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_group") = _GODOT_call_group;
	Variant call_group(StringArg0, StringArg1, VarArgs...)(in StringArg0 group, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(group);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_group");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_notify_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "notify_group") = _GODOT_notify_group;
	void notify_group(StringArg0)(in StringArg0 group, in int notification)
	{
		_GODOT_notify_group.bind("SceneTree", "notify_group");
		ptrcall!(void)(_GODOT_notify_group, _godot_object, group, notification);
	}
	package(godot) static GodotMethod!(void, String, String, Variant) _GODOT_set_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_group") = _GODOT_set_group;
	void set_group(StringArg0, StringArg1, VariantArg2)(in StringArg0 group, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_set_group.bind("SceneTree", "set_group");
		ptrcall!(void)(_GODOT_set_group, _godot_object, group, property, value);
	}
	package(godot) static GodotMethod!(Array, String) _GODOT_get_nodes_in_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_nodes_in_group") = _GODOT_get_nodes_in_group;
	Array get_nodes_in_group(StringArg0)(in StringArg0 group)
	{
		_GODOT_get_nodes_in_group.bind("SceneTree", "get_nodes_in_group");
		return ptrcall!(Array)(_GODOT_get_nodes_in_group, _godot_object, group);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_current_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_scene") = _GODOT_set_current_scene;
	void set_current_scene(in GodotObject child_node)
	{
		_GODOT_set_current_scene.bind("SceneTree", "set_current_scene");
		ptrcall!(void)(_GODOT_set_current_scene, _godot_object, child_node);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_current_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_scene") = _GODOT_get_current_scene;
	Node get_current_scene() const
	{
		_GODOT_get_current_scene.bind("SceneTree", "get_current_scene");
		return ptrcall!(Node)(_GODOT_get_current_scene, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_change_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "change_scene") = _GODOT_change_scene;
	GodotError change_scene(StringArg0)(in StringArg0 path)
	{
		_GODOT_change_scene.bind("SceneTree", "change_scene");
		return ptrcall!(GodotError)(_GODOT_change_scene, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, PackedScene) _GODOT_change_scene_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "change_scene_to") = _GODOT_change_scene_to;
	GodotError change_scene_to(in PackedScene packed_scene)
	{
		_GODOT_change_scene_to.bind("SceneTree", "change_scene_to");
		return ptrcall!(GodotError)(_GODOT_change_scene_to, _godot_object, packed_scene);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_reload_current_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "reload_current_scene") = _GODOT_reload_current_scene;
	GodotError reload_current_scene()
	{
		_GODOT_reload_current_scene.bind("SceneTree", "reload_current_scene");
		return ptrcall!(GodotError)(_GODOT_reload_current_scene, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__change_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_change_scene") = _GODOT__change_scene;
	void _change_scene(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_change_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, NetworkedMultiplayerPeer) _GODOT_set_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_network_peer") = _GODOT_set_network_peer;
	void set_network_peer(in NetworkedMultiplayerPeer peer)
	{
		_GODOT_set_network_peer.bind("SceneTree", "set_network_peer");
		ptrcall!(void)(_GODOT_set_network_peer, _godot_object, peer);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_network_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_network_server") = _GODOT_is_network_server;
	bool is_network_server() const
	{
		_GODOT_is_network_server.bind("SceneTree", "is_network_server");
		return ptrcall!(bool)(_GODOT_is_network_server, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_network_peer") = _GODOT_has_network_peer;
	bool has_network_peer() const
	{
		_GODOT_has_network_peer.bind("SceneTree", "has_network_peer");
		return ptrcall!(bool)(_GODOT_has_network_peer, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_network_connected_peers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_connected_peers") = _GODOT_get_network_connected_peers;
	PoolIntArray get_network_connected_peers() const
	{
		_GODOT_get_network_connected_peers.bind("SceneTree", "get_network_connected_peers");
		return ptrcall!(PoolIntArray)(_GODOT_get_network_connected_peers, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_network_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_unique_id") = _GODOT_get_network_unique_id;
	int get_network_unique_id() const
	{
		_GODOT_get_network_unique_id.bind("SceneTree", "get_network_unique_id");
		return ptrcall!(int)(_GODOT_get_network_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_rpc_sender_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rpc_sender_id") = _GODOT_get_rpc_sender_id;
	int get_rpc_sender_id() const
	{
		_GODOT_get_rpc_sender_id.bind("SceneTree", "get_rpc_sender_id");
		return ptrcall!(int)(_GODOT_get_rpc_sender_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_refuse_new_network_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refuse_new_network_connections") = _GODOT_set_refuse_new_network_connections;
	void set_refuse_new_network_connections(in bool refuse)
	{
		_GODOT_set_refuse_new_network_connections.bind("SceneTree", "set_refuse_new_network_connections");
		ptrcall!(void)(_GODOT_set_refuse_new_network_connections, _godot_object, refuse);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_refusing_new_network_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_refusing_new_network_connections") = _GODOT_is_refusing_new_network_connections;
	bool is_refusing_new_network_connections() const
	{
		_GODOT_is_refusing_new_network_connections.bind("SceneTree", "is_refusing_new_network_connections");
		return ptrcall!(bool)(_GODOT_is_refusing_new_network_connections, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__network_peer_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_network_peer_connected") = _GODOT__network_peer_connected;
	void _network_peer_connected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_connected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int) _GODOT__network_peer_disconnected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_network_peer_disconnected") = _GODOT__network_peer_disconnected;
	void _network_peer_disconnected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__connected_to_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "_connected_to_server") = _GODOT__connected_to_server;
	void _connected_to_server()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__connection_failed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_connection_failed") = _GODOT__connection_failed;
	void _connection_failed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__server_disconnected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_server_disconnected") = _GODOT__server_disconnected;
	void _server_disconnected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
