module godot.directory;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Directory
{
	static immutable string _GODOT_internal_name = "_Directory";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in Directory other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Directory opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Directory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Directory");
		if(constructor is null) return typeof(this).init;
		return cast(Directory)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "open") = _GODOT_open;
	GodotError open(StringArg0)(in StringArg0 path)
	{
		_GODOT_open.bind("_Directory", "open");
		return ptrcall!(GodotError)(_GODOT_open, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, bool, bool) _GODOT_list_dir_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "list_dir_begin") = _GODOT_list_dir_begin;
	GodotError list_dir_begin(in bool skip_navigational = false, in bool skip_hidden = false)
	{
		_GODOT_list_dir_begin.bind("_Directory", "list_dir_begin");
		return ptrcall!(GodotError)(_GODOT_list_dir_begin, _godot_object, skip_navigational, skip_hidden);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next") = _GODOT_get_next;
	String get_next()
	{
		_GODOT_get_next.bind("_Directory", "get_next");
		return ptrcall!(String)(_GODOT_get_next, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_current_is_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "current_is_dir") = _GODOT_current_is_dir;
	bool current_is_dir() const
	{
		_GODOT_current_is_dir.bind("_Directory", "current_is_dir");
		return ptrcall!(bool)(_GODOT_current_is_dir, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_list_dir_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "list_dir_end") = _GODOT_list_dir_end;
	void list_dir_end()
	{
		_GODOT_list_dir_end.bind("_Directory", "list_dir_end");
		ptrcall!(void)(_GODOT_list_dir_end, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_drive_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drive_count") = _GODOT_get_drive_count;
	int get_drive_count()
	{
		_GODOT_get_drive_count.bind("_Directory", "get_drive_count");
		return ptrcall!(int)(_GODOT_get_drive_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drive") = _GODOT_get_drive;
	String get_drive(in int idx)
	{
		_GODOT_get_drive.bind("_Directory", "get_drive");
		return ptrcall!(String)(_GODOT_get_drive, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_current_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_drive") = _GODOT_get_current_drive;
	int get_current_drive()
	{
		_GODOT_get_current_drive.bind("_Directory", "get_current_drive");
		return ptrcall!(int)(_GODOT_get_current_drive, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_change_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "change_dir") = _GODOT_change_dir;
	GodotError change_dir(StringArg0)(in StringArg0 todir)
	{
		_GODOT_change_dir.bind("_Directory", "change_dir");
		return ptrcall!(GodotError)(_GODOT_change_dir, _godot_object, todir);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_dir") = _GODOT_get_current_dir;
	String get_current_dir()
	{
		_GODOT_get_current_dir.bind("_Directory", "get_current_dir");
		return ptrcall!(String)(_GODOT_get_current_dir, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_make_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_dir") = _GODOT_make_dir;
	GodotError make_dir(StringArg0)(in StringArg0 path)
	{
		_GODOT_make_dir.bind("_Directory", "make_dir");
		return ptrcall!(GodotError)(_GODOT_make_dir, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_make_dir_recursive;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_dir_recursive") = _GODOT_make_dir_recursive;
	GodotError make_dir_recursive(StringArg0)(in StringArg0 path)
	{
		_GODOT_make_dir_recursive.bind("_Directory", "make_dir_recursive");
		return ptrcall!(GodotError)(_GODOT_make_dir_recursive, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_file_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "file_exists") = _GODOT_file_exists;
	bool file_exists(StringArg0)(in StringArg0 path)
	{
		_GODOT_file_exists.bind("_Directory", "file_exists");
		return ptrcall!(bool)(_GODOT_file_exists, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_dir_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "dir_exists") = _GODOT_dir_exists;
	bool dir_exists(StringArg0)(in StringArg0 path)
	{
		_GODOT_dir_exists.bind("_Directory", "dir_exists");
		return ptrcall!(bool)(_GODOT_dir_exists, _godot_object, path);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_space_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_left") = _GODOT_get_space_left;
	int get_space_left()
	{
		_GODOT_get_space_left.bind("_Directory", "get_space_left");
		return ptrcall!(int)(_GODOT_get_space_left, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_copy;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy") = _GODOT_copy;
	GodotError copy(StringArg0, StringArg1)(in StringArg0 from, in StringArg1 to)
	{
		_GODOT_copy.bind("_Directory", "copy");
		return ptrcall!(GodotError)(_GODOT_copy, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_rename;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename") = _GODOT_rename;
	GodotError rename(StringArg0, StringArg1)(in StringArg0 from, in StringArg1 to)
	{
		_GODOT_rename.bind("_Directory", "rename");
		return ptrcall!(GodotError)(_GODOT_rename, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove") = _GODOT_remove;
	GodotError remove(StringArg0)(in StringArg0 path)
	{
		_GODOT_remove.bind("_Directory", "remove");
		return ptrcall!(GodotError)(_GODOT_remove, _godot_object, path);
	}
}
