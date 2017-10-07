module godot.node;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.inputevent;
import godot.inputeventkey;
import godot.scenetree;
import godot.viewport;
@GodotBaseClass struct Node
{
	static immutable string _GODOT_internal_name = "Node";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Node other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Node opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Node _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Node");
		if(constructor is null) return typeof(this).init;
		return cast(Node)(constructor());
	}
	enum PauseMode : int
	{
		PAUSE_MODE_PROCESS = 2,
		PAUSE_MODE_INHERIT = 0,
		PAUSE_MODE_STOP = 1,
	}
	enum DuplicateFlags : int
	{
		DUPLICATE_SCRIPTS = 4,
		DUPLICATE_SIGNALS = 1,
		DUPLICATE_GROUPS = 2,
		DUPLICATE_USE_INSTANCING = 8,
	}
	enum RPCMode : int
	{
		RPC_MODE_SYNC = 2,
		RPC_MODE_DISABLED = 0,
		RPC_MODE_REMOTE = 1,
		RPC_MODE_SLAVE = 4,
		RPC_MODE_MASTER = 3,
	}
	enum int NOTIFICATION_UNPAUSED = 15;
	enum int PAUSE_MODE_INHERIT = 0;
	enum int NOTIFICATION_DRAG_END = 22;
	enum int RPC_MODE_MASTER = 3;
	enum int PAUSE_MODE_STOP = 1;
	enum int DUPLICATE_USE_INSTANCING = 8;
	enum int NOTIFICATION_FIXED_PROCESS = 16;
	enum int NOTIFICATION_INSTANCED = 20;
	enum int DUPLICATE_SIGNALS = 1;
	enum int NOTIFICATION_INTERNAL_PROCESS = 25;
	enum int NOTIFICATION_READY = 13;
	enum int NOTIFICATION_ENTER_TREE = 10;
	enum int NOTIFICATION_PROCESS = 17;
	enum int NOTIFICATION_PATH_CHANGED = 23;
	enum int NOTIFICATION_TRANSLATION_CHANGED = 24;
	enum int NOTIFICATION_PARENTED = 18;
	enum int DUPLICATE_GROUPS = 2;
	enum int NOTIFICATION_MOVED_IN_PARENT = 12;
	enum int NOTIFICATION_DRAG_BEGIN = 21;
	enum int RPC_MODE_REMOTE = 1;
	enum int RPC_MODE_SLAVE = 4;
	enum int NOTIFICATION_UNPARENTED = 19;
	enum int PAUSE_MODE_PROCESS = 2;
	enum int DUPLICATE_SCRIPTS = 4;
	enum int RPC_MODE_SYNC = 2;
	enum int NOTIFICATION_EXIT_TREE = 11;
	enum int RPC_MODE_DISABLED = 0;
	enum int NOTIFICATION_PAUSED = 14;
	enum int NOTIFICATION_INTERNAL_FIXED_PROCESS = 26;
	package(godot) static GodotMethod!(void, float) _GODOT__process;
	package(godot) alias _GODOT_methodBindInfo(string name : "_process") = _GODOT__process;
	void _process(in float delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, float) _GODOT__fixed_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "_fixed_process") = _GODOT__fixed_process;
	void _fixed_process(in float delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_fixed_process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_enter_tree") = _GODOT__enter_tree;
	void _enter_tree()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_exit_tree") = _GODOT__exit_tree;
	void _exit_tree()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__ready;
	package(godot) alias _GODOT_methodBindInfo(string name : "_ready") = _GODOT__ready;
	void _ready()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_ready");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input") = _GODOT__input;
	void _input(in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	void _unhandled_input(in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEventKey) _GODOT__unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_key_input") = _GODOT__unhandled_key_input;
	void _unhandled_key_input(in InputEventKey event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject, GodotObject, bool) _GODOT_add_child_below_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_child_below_node") = _GODOT_add_child_below_node;
	void add_child_below_node(in GodotObject node, in GodotObject child_node, in bool legible_unique_name = false)
	{
		_GODOT_add_child_below_node.bind("Node", "add_child_below_node");
		ptrcall!(void)(_GODOT_add_child_below_node, _godot_object, node, child_node, legible_unique_name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_name") = _GODOT_set_name;
	void set_name(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_name.bind("Node", "set_name");
		ptrcall!(void)(_GODOT_set_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	String get_name() const
	{
		_GODOT_get_name.bind("Node", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject, bool) _GODOT_add_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_child") = _GODOT_add_child;
	void add_child(in GodotObject node, in bool legible_unique_name = false)
	{
		_GODOT_add_child.bind("Node", "add_child");
		ptrcall!(void)(_GODOT_add_child, _godot_object, node, legible_unique_name);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_child") = _GODOT_remove_child;
	void remove_child(in GodotObject node)
	{
		_GODOT_remove_child.bind("Node", "remove_child");
		ptrcall!(void)(_GODOT_remove_child, _godot_object, node);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_child_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_child_count") = _GODOT_get_child_count;
	int get_child_count() const
	{
		_GODOT_get_child_count.bind("Node", "get_child_count");
		return ptrcall!(int)(_GODOT_get_child_count, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_children;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_children") = _GODOT_get_children;
	Array get_children() const
	{
		_GODOT_get_children.bind("Node", "get_children");
		return ptrcall!(Array)(_GODOT_get_children, _godot_object);
	}
	package(godot) static GodotMethod!(Node, int) _GODOT_get_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_child") = _GODOT_get_child;
	Node get_child(in int idx) const
	{
		_GODOT_get_child.bind("Node", "get_child");
		return ptrcall!(Node)(_GODOT_get_child, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, NodePath) _GODOT_has_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_node") = _GODOT_has_node;
	bool has_node(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_has_node.bind("Node", "has_node");
		return ptrcall!(bool)(_GODOT_has_node, _godot_object, path);
	}
	package(godot) static GodotMethod!(Node, NodePath) _GODOT_get_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node") = _GODOT_get_node;
	Node get_node(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_get_node.bind("Node", "get_node");
		return ptrcall!(Node)(_GODOT_get_node, _godot_object, path);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent") = _GODOT_get_parent;
	Node get_parent() const
	{
		_GODOT_get_parent.bind("Node", "get_parent");
		return ptrcall!(Node)(_GODOT_get_parent, _godot_object);
	}
	package(godot) static GodotMethod!(Node, String, bool, bool) _GODOT_find_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_node") = _GODOT_find_node;
	Node find_node(StringArg0)(in StringArg0 mask, in bool recursive = true, in bool owned = true) const
	{
		_GODOT_find_node.bind("Node", "find_node");
		return ptrcall!(Node)(_GODOT_find_node, _godot_object, mask, recursive, owned);
	}
	package(godot) static GodotMethod!(bool, NodePath) _GODOT_has_node_and_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_node_and_resource") = _GODOT_has_node_and_resource;
	bool has_node_and_resource(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_has_node_and_resource.bind("Node", "has_node_and_resource");
		return ptrcall!(bool)(_GODOT_has_node_and_resource, _godot_object, path);
	}
	package(godot) static GodotMethod!(Array, NodePath) _GODOT_get_node_and_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_and_resource") = _GODOT_get_node_and_resource;
	Array get_node_and_resource(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_get_node_and_resource.bind("Node", "get_node_and_resource");
		return ptrcall!(Array)(_GODOT_get_node_and_resource, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_inside_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_inside_tree") = _GODOT_is_inside_tree;
	bool is_inside_tree() const
	{
		_GODOT_is_inside_tree.bind("Node", "is_inside_tree");
		return ptrcall!(bool)(_GODOT_is_inside_tree, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_is_a_parent_of;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_a_parent_of") = _GODOT_is_a_parent_of;
	bool is_a_parent_of(in GodotObject node) const
	{
		_GODOT_is_a_parent_of.bind("Node", "is_a_parent_of");
		return ptrcall!(bool)(_GODOT_is_a_parent_of, _godot_object, node);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_is_greater_than;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_greater_than") = _GODOT_is_greater_than;
	bool is_greater_than(in GodotObject node) const
	{
		_GODOT_is_greater_than.bind("Node", "is_greater_than");
		return ptrcall!(bool)(_GODOT_is_greater_than, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	NodePath get_path() const
	{
		_GODOT_get_path.bind("Node", "get_path");
		return ptrcall!(NodePath)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(NodePath, GodotObject) _GODOT_get_path_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path_to") = _GODOT_get_path_to;
	NodePath get_path_to(in GodotObject node) const
	{
		_GODOT_get_path_to.bind("Node", "get_path_to");
		return ptrcall!(NodePath)(_GODOT_get_path_to, _godot_object, node);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_add_to_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_to_group") = _GODOT_add_to_group;
	void add_to_group(StringArg0)(in StringArg0 group, in bool persistent = false)
	{
		_GODOT_add_to_group.bind("Node", "add_to_group");
		ptrcall!(void)(_GODOT_add_to_group, _godot_object, group, persistent);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_from_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_from_group") = _GODOT_remove_from_group;
	void remove_from_group(StringArg0)(in StringArg0 group)
	{
		_GODOT_remove_from_group.bind("Node", "remove_from_group");
		ptrcall!(void)(_GODOT_remove_from_group, _godot_object, group);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_in_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_group") = _GODOT_is_in_group;
	bool is_in_group(StringArg0)(in StringArg0 group) const
	{
		_GODOT_is_in_group.bind("Node", "is_in_group");
		return ptrcall!(bool)(_GODOT_is_in_group, _godot_object, group);
	}
	package(godot) static GodotMethod!(void, GodotObject, int) _GODOT_move_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_child") = _GODOT_move_child;
	void move_child(in GodotObject child_node, in int to_position)
	{
		_GODOT_move_child.bind("Node", "move_child");
		ptrcall!(void)(_GODOT_move_child, _godot_object, child_node, to_position);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_groups;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_groups") = _GODOT_get_groups;
	Array get_groups() const
	{
		_GODOT_get_groups.bind("Node", "get_groups");
		return ptrcall!(Array)(_GODOT_get_groups, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_raise;
	package(godot) alias _GODOT_methodBindInfo(string name : "raise") = _GODOT_raise;
	void raise()
	{
		_GODOT_raise.bind("Node", "raise");
		ptrcall!(void)(_GODOT_raise, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_owner") = _GODOT_set_owner;
	void set_owner(in GodotObject owner)
	{
		_GODOT_set_owner.bind("Node", "set_owner");
		ptrcall!(void)(_GODOT_set_owner, _godot_object, owner);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_owner") = _GODOT_get_owner;
	Node get_owner() const
	{
		_GODOT_get_owner.bind("Node", "get_owner");
		return ptrcall!(Node)(_GODOT_get_owner, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_remove_and_skip;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_and_skip") = _GODOT_remove_and_skip;
	void remove_and_skip()
	{
		_GODOT_remove_and_skip.bind("Node", "remove_and_skip");
		ptrcall!(void)(_GODOT_remove_and_skip, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	int get_index() const
	{
		_GODOT_get_index.bind("Node", "get_index");
		return ptrcall!(int)(_GODOT_get_index, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_print_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_tree") = _GODOT_print_tree;
	void print_tree()
	{
		_GODOT_print_tree.bind("Node", "print_tree");
		ptrcall!(void)(_GODOT_print_tree, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_filename;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filename") = _GODOT_set_filename;
	void set_filename(StringArg0)(in StringArg0 filename)
	{
		_GODOT_set_filename.bind("Node", "set_filename");
		ptrcall!(void)(_GODOT_set_filename, _godot_object, filename);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_filename;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filename") = _GODOT_get_filename;
	String get_filename() const
	{
		_GODOT_get_filename.bind("Node", "get_filename");
		return ptrcall!(String)(_GODOT_get_filename, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_propagate_notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "propagate_notification") = _GODOT_propagate_notification;
	void propagate_notification(in int what)
	{
		_GODOT_propagate_notification.bind("Node", "propagate_notification");
		ptrcall!(void)(_GODOT_propagate_notification, _godot_object, what);
	}
	package(godot) static GodotMethod!(void, String, Array, bool) _GODOT_propagate_call;
	package(godot) alias _GODOT_methodBindInfo(string name : "propagate_call") = _GODOT_propagate_call;
	void propagate_call(StringArg0)(in StringArg0 method, in Array args = Array.empty_array, in bool parent_first = false)
	{
		_GODOT_propagate_call.bind("Node", "propagate_call");
		ptrcall!(void)(_GODOT_propagate_call, _godot_object, method, args, parent_first);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fixed_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_process") = _GODOT_set_fixed_process;
	void set_fixed_process(in bool enable)
	{
		_GODOT_set_fixed_process.bind("Node", "set_fixed_process");
		ptrcall!(void)(_GODOT_set_fixed_process, _godot_object, enable);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_fixed_process_delta_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_process_delta_time") = _GODOT_get_fixed_process_delta_time;
	float get_fixed_process_delta_time() const
	{
		_GODOT_get_fixed_process_delta_time.bind("Node", "get_fixed_process_delta_time");
		return ptrcall!(float)(_GODOT_get_fixed_process_delta_time, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fixed_processing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fixed_processing") = _GODOT_is_fixed_processing;
	bool is_fixed_processing() const
	{
		_GODOT_is_fixed_processing.bind("Node", "is_fixed_processing");
		return ptrcall!(bool)(_GODOT_is_fixed_processing, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_process_delta_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_delta_time") = _GODOT_get_process_delta_time;
	float get_process_delta_time() const
	{
		_GODOT_get_process_delta_time.bind("Node", "get_process_delta_time");
		return ptrcall!(float)(_GODOT_get_process_delta_time, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process") = _GODOT_set_process;
	void set_process(in bool enable)
	{
		_GODOT_set_process.bind("Node", "set_process");
		ptrcall!(void)(_GODOT_set_process, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing") = _GODOT_is_processing;
	bool is_processing() const
	{
		_GODOT_is_processing.bind("Node", "is_processing");
		return ptrcall!(bool)(_GODOT_is_processing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_input") = _GODOT_set_process_input;
	void set_process_input(in bool enable)
	{
		_GODOT_set_process_input.bind("Node", "set_process_input");
		ptrcall!(void)(_GODOT_set_process_input, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_input") = _GODOT_is_processing_input;
	bool is_processing_input() const
	{
		_GODOT_is_processing_input.bind("Node", "is_processing_input");
		return ptrcall!(bool)(_GODOT_is_processing_input, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_unhandled_input") = _GODOT_set_process_unhandled_input;
	void set_process_unhandled_input(in bool enable)
	{
		_GODOT_set_process_unhandled_input.bind("Node", "set_process_unhandled_input");
		ptrcall!(void)(_GODOT_set_process_unhandled_input, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_unhandled_input") = _GODOT_is_processing_unhandled_input;
	bool is_processing_unhandled_input() const
	{
		_GODOT_is_processing_unhandled_input.bind("Node", "is_processing_unhandled_input");
		return ptrcall!(bool)(_GODOT_is_processing_unhandled_input, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_unhandled_key_input") = _GODOT_set_process_unhandled_key_input;
	void set_process_unhandled_key_input(in bool enable)
	{
		_GODOT_set_process_unhandled_key_input.bind("Node", "set_process_unhandled_key_input");
		ptrcall!(void)(_GODOT_set_process_unhandled_key_input, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_unhandled_key_input") = _GODOT_is_processing_unhandled_key_input;
	bool is_processing_unhandled_key_input() const
	{
		_GODOT_is_processing_unhandled_key_input.bind("Node", "is_processing_unhandled_key_input");
		return ptrcall!(bool)(_GODOT_is_processing_unhandled_key_input, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_pause_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pause_mode") = _GODOT_set_pause_mode;
	void set_pause_mode(in int mode)
	{
		_GODOT_set_pause_mode.bind("Node", "set_pause_mode");
		ptrcall!(void)(_GODOT_set_pause_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Node.PauseMode) _GODOT_get_pause_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pause_mode") = _GODOT_get_pause_mode;
	Node.PauseMode get_pause_mode() const
	{
		_GODOT_get_pause_mode.bind("Node", "get_pause_mode");
		return ptrcall!(Node.PauseMode)(_GODOT_get_pause_mode, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_process") = _GODOT_can_process;
	bool can_process() const
	{
		_GODOT_can_process.bind("Node", "can_process");
		return ptrcall!(bool)(_GODOT_can_process, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_print_stray_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_stray_nodes") = _GODOT_print_stray_nodes;
	void print_stray_nodes()
	{
		_GODOT_print_stray_nodes.bind("Node", "print_stray_nodes");
		ptrcall!(void)(_GODOT_print_stray_nodes, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_position_in_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position_in_parent") = _GODOT_get_position_in_parent;
	int get_position_in_parent() const
	{
		_GODOT_get_position_in_parent.bind("Node", "get_position_in_parent");
		return ptrcall!(int)(_GODOT_get_position_in_parent, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_display_folded;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_display_folded") = _GODOT_set_display_folded;
	void set_display_folded(in bool fold)
	{
		_GODOT_set_display_folded.bind("Node", "set_display_folded");
		ptrcall!(void)(_GODOT_set_display_folded, _godot_object, fold);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_displayed_folded;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_displayed_folded") = _GODOT_is_displayed_folded;
	bool is_displayed_folded() const
	{
		_GODOT_is_displayed_folded.bind("Node", "is_displayed_folded");
		return ptrcall!(bool)(_GODOT_is_displayed_folded, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_internal") = _GODOT_set_process_internal;
	void set_process_internal(in bool enable)
	{
		_GODOT_set_process_internal.bind("Node", "set_process_internal");
		ptrcall!(void)(_GODOT_set_process_internal, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_internal") = _GODOT_is_processing_internal;
	bool is_processing_internal() const
	{
		_GODOT_is_processing_internal.bind("Node", "is_processing_internal");
		return ptrcall!(bool)(_GODOT_is_processing_internal, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fixed_process_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_process_internal") = _GODOT_set_fixed_process_internal;
	void set_fixed_process_internal(in bool enable)
	{
		_GODOT_set_fixed_process_internal.bind("Node", "set_fixed_process_internal");
		ptrcall!(void)(_GODOT_set_fixed_process_internal, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fixed_processing_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fixed_processing_internal") = _GODOT_is_fixed_processing_internal;
	bool is_fixed_processing_internal() const
	{
		_GODOT_is_fixed_processing_internal.bind("Node", "is_fixed_processing_internal");
		return ptrcall!(bool)(_GODOT_is_fixed_processing_internal, _godot_object);
	}
	package(godot) static GodotMethod!(SceneTree) _GODOT_get_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tree") = _GODOT_get_tree;
	SceneTree get_tree() const
	{
		_GODOT_get_tree.bind("Node", "get_tree");
		return ptrcall!(SceneTree)(_GODOT_get_tree, _godot_object);
	}
	package(godot) static GodotMethod!(Node, int) _GODOT_duplicate;
	package(godot) alias _GODOT_methodBindInfo(string name : "duplicate") = _GODOT_duplicate;
	Node duplicate(in int flags = 15) const
	{
		_GODOT_duplicate.bind("Node", "duplicate");
		return ptrcall!(Node)(_GODOT_duplicate, _godot_object, flags);
	}
	package(godot) static GodotMethod!(void, GodotObject, bool) _GODOT_replace_by;
	package(godot) alias _GODOT_methodBindInfo(string name : "replace_by") = _GODOT_replace_by;
	void replace_by(in GodotObject node, in bool keep_data = false)
	{
		_GODOT_replace_by.bind("Node", "replace_by");
		ptrcall!(void)(_GODOT_replace_by, _godot_object, node, keep_data);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scene_instance_load_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scene_instance_load_placeholder") = _GODOT_set_scene_instance_load_placeholder;
	void set_scene_instance_load_placeholder(in bool load_placeholder)
	{
		_GODOT_set_scene_instance_load_placeholder.bind("Node", "set_scene_instance_load_placeholder");
		ptrcall!(void)(_GODOT_set_scene_instance_load_placeholder, _godot_object, load_placeholder);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_scene_instance_load_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scene_instance_load_placeholder") = _GODOT_get_scene_instance_load_placeholder;
	bool get_scene_instance_load_placeholder() const
	{
		_GODOT_get_scene_instance_load_placeholder.bind("Node", "get_scene_instance_load_placeholder");
		return ptrcall!(bool)(_GODOT_get_scene_instance_load_placeholder, _godot_object);
	}
	package(godot) static GodotMethod!(Viewport) _GODOT_get_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport") = _GODOT_get_viewport;
	Viewport get_viewport() const
	{
		_GODOT_get_viewport.bind("Node", "get_viewport");
		return ptrcall!(Viewport)(_GODOT_get_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_queue_free;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_free") = _GODOT_queue_free;
	void queue_free()
	{
		_GODOT_queue_free.bind("Node", "queue_free");
		ptrcall!(void)(_GODOT_queue_free, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_request_ready;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_ready") = _GODOT_request_ready;
	void request_ready()
	{
		_GODOT_request_ready.bind("Node", "request_ready");
		ptrcall!(void)(_GODOT_request_ready, _godot_object);
	}
	package(godot) static GodotMethod!(void, int, bool) _GODOT_set_network_master;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_network_master") = _GODOT_set_network_master;
	void set_network_master(in int id, in bool recursive = true)
	{
		_GODOT_set_network_master.bind("Node", "set_network_master");
		ptrcall!(void)(_GODOT_set_network_master, _godot_object, id, recursive);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_network_master;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_master") = _GODOT_get_network_master;
	int get_network_master() const
	{
		_GODOT_get_network_master.bind("Node", "get_network_master");
		return ptrcall!(int)(_GODOT_get_network_master, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_network_master;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_network_master") = _GODOT_is_network_master;
	bool is_network_master() const
	{
		_GODOT_is_network_master.bind("Node", "is_network_master");
		return ptrcall!(bool)(_GODOT_is_network_master, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_rpc_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_config") = _GODOT_rpc_config;
	void rpc_config(StringArg0)(in StringArg0 method, in int mode)
	{
		_GODOT_rpc_config.bind("Node", "rpc_config");
		ptrcall!(void)(_GODOT_rpc_config, _godot_object, method, mode);
	}
	package(godot) static GodotMethod!(void, String, int) _GODOT_rset_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_config") = _GODOT_rset_config;
	void rset_config(StringArg0)(in StringArg0 property, in int mode)
	{
		_GODOT_rset_config.bind("Node", "rset_config");
		ptrcall!(void)(_GODOT_rset_config, _godot_object, property, mode);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT__set_import_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_import_path") = _GODOT__set_import_path;
	void _set_import_path(NodePathArg0)(in NodePathArg0 import_path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(import_path);
		String _GODOT_method_name = String("_set_import_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT__get_import_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_import_path") = _GODOT__get_import_path;
	NodePath _get_import_path() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_import_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(NodePath);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_rpc;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc") = _GODOT_rpc;
	Variant rpc(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_rpc_unreliable;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_unreliable") = _GODOT_rpc_unreliable;
	Variant rpc_unreliable(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_unreliable");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, int, String, GodotVarArgs) _GODOT_rpc_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_id") = _GODOT_rpc_id;
	Variant rpc_id(StringArg1, VarArgs...)(in int peer_id, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(peer_id);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_id");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, int, String, GodotVarArgs) _GODOT_rpc_unreliable_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_unreliable_id") = _GODOT_rpc_unreliable_id;
	Variant rpc_unreliable_id(StringArg1, VarArgs...)(in int peer_id, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(peer_id);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_unreliable_id");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_rset;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset") = _GODOT_rset;
	void rset(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		_GODOT_rset.bind("Node", "rset");
		ptrcall!(void)(_GODOT_rset, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(void, int, String, Variant) _GODOT_rset_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_id") = _GODOT_rset_id;
	void rset_id(StringArg1, VariantArg2)(in int peer_id, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_rset_id.bind("Node", "rset_id");
		ptrcall!(void)(_GODOT_rset_id, _godot_object, peer_id, property, value);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_rset_unreliable;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_unreliable") = _GODOT_rset_unreliable;
	void rset_unreliable(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		_GODOT_rset_unreliable.bind("Node", "rset_unreliable");
		ptrcall!(void)(_GODOT_rset_unreliable, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(void, int, String, Variant) _GODOT_rset_unreliable_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_unreliable_id") = _GODOT_rset_unreliable_id;
	void rset_unreliable_id(StringArg1, VariantArg2)(in int peer_id, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_rset_unreliable_id.bind("Node", "rset_unreliable_id");
		ptrcall!(void)(_GODOT_rset_unreliable_id, _godot_object, peer_id, property, value);
	}
}
