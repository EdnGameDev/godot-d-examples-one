module godot.undoredo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
@GodotBaseClass struct UndoRedo
{
	static immutable string _GODOT_internal_name = "UndoRedo";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in UndoRedo other) const { return _godot_object.ptr is other._godot_object.ptr; }
	UndoRedo opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static UndoRedo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("UndoRedo");
		if(constructor is null) return typeof(this).init;
		return cast(UndoRedo)(constructor());
	}
	enum MergeMode : int
	{
		MERGE_DISABLE = 0,
		MERGE_ENDS = 1,
		MERGE_ALL = 2,
	}
	enum int MERGE_DISABLE = 0;
	enum int MERGE_ENDS = 1;
	enum int MERGE_ALL = 2;
	package(godot) static GodotMethod!(void, String, int) _GODOT_create_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_action") = _GODOT_create_action;
	void create_action(StringArg0)(in StringArg0 name, in int merge_mode = 0)
	{
		_GODOT_create_action.bind("UndoRedo", "create_action");
		ptrcall!(void)(_GODOT_create_action, _godot_object, name, merge_mode);
	}
	package(godot) static GodotMethod!(void) _GODOT_commit_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit_action") = _GODOT_commit_action;
	void commit_action()
	{
		_GODOT_commit_action.bind("UndoRedo", "commit_action");
		ptrcall!(void)(_GODOT_commit_action, _godot_object);
	}
	package(godot) static GodotMethod!(Variant, GodotObject, String, GodotVarArgs) _GODOT_add_do_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_do_method") = _GODOT_add_do_method;
	Variant add_do_method(StringArg1, VarArgs...)(in GodotObject object, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("add_do_method");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, GodotObject, String, GodotVarArgs) _GODOT_add_undo_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_undo_method") = _GODOT_add_undo_method;
	Variant add_undo_method(StringArg1, VarArgs...)(in GodotObject object, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("add_undo_method");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, Variant) _GODOT_add_do_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_do_property") = _GODOT_add_do_property;
	void add_do_property(StringArg1, VariantArg2)(in GodotObject object, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_add_do_property.bind("UndoRedo", "add_do_property");
		ptrcall!(void)(_GODOT_add_do_property, _godot_object, object, property, value);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, Variant) _GODOT_add_undo_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_undo_property") = _GODOT_add_undo_property;
	void add_undo_property(StringArg1, VariantArg2)(in GodotObject object, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_add_undo_property.bind("UndoRedo", "add_undo_property");
		ptrcall!(void)(_GODOT_add_undo_property, _godot_object, object, property, value);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_do_reference;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_do_reference") = _GODOT_add_do_reference;
	void add_do_reference(in GodotObject object)
	{
		_GODOT_add_do_reference.bind("UndoRedo", "add_do_reference");
		ptrcall!(void)(_GODOT_add_do_reference, _godot_object, object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_undo_reference;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_undo_reference") = _GODOT_add_undo_reference;
	void add_undo_reference(in GodotObject object)
	{
		_GODOT_add_undo_reference.bind("UndoRedo", "add_undo_reference");
		ptrcall!(void)(_GODOT_add_undo_reference, _godot_object, object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_history;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_history") = _GODOT_clear_history;
	void clear_history()
	{
		_GODOT_clear_history.bind("UndoRedo", "clear_history");
		ptrcall!(void)(_GODOT_clear_history, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_action_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_action_name") = _GODOT_get_current_action_name;
	String get_current_action_name() const
	{
		_GODOT_get_current_action_name.bind("UndoRedo", "get_current_action_name");
		return ptrcall!(String)(_GODOT_get_current_action_name, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_version;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_version") = _GODOT_get_version;
	int get_version() const
	{
		_GODOT_get_version.bind("UndoRedo", "get_version");
		return ptrcall!(int)(_GODOT_get_version, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_steps") = _GODOT_set_max_steps;
	void set_max_steps(in int max_steps)
	{
		_GODOT_set_max_steps.bind("UndoRedo", "set_max_steps");
		ptrcall!(void)(_GODOT_set_max_steps, _godot_object, max_steps);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_steps") = _GODOT_get_max_steps;
	int get_max_steps() const
	{
		_GODOT_get_max_steps.bind("UndoRedo", "get_max_steps");
		return ptrcall!(int)(_GODOT_get_max_steps, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_redo;
	package(godot) alias _GODOT_methodBindInfo(string name : "redo") = _GODOT_redo;
	void redo()
	{
		_GODOT_redo.bind("UndoRedo", "redo");
		ptrcall!(void)(_GODOT_redo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_undo;
	package(godot) alias _GODOT_methodBindInfo(string name : "undo") = _GODOT_undo;
	void undo()
	{
		_GODOT_undo.bind("UndoRedo", "undo");
		ptrcall!(void)(_GODOT_undo, _godot_object);
	}
}
