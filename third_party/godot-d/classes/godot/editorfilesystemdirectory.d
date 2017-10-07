module godot.editorfilesystemdirectory;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
@GodotBaseClass struct EditorFileSystemDirectory
{
	static immutable string _GODOT_internal_name = "EditorFileSystemDirectory";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorFileSystemDirectory other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorFileSystemDirectory opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorFileSystemDirectory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorFileSystemDirectory");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileSystemDirectory)(constructor());
	}
	package(godot) static GodotMethod!(int) _GODOT_get_subdir_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdir_count") = _GODOT_get_subdir_count;
	int get_subdir_count() const
	{
		_GODOT_get_subdir_count.bind("EditorFileSystemDirectory", "get_subdir_count");
		return ptrcall!(int)(_GODOT_get_subdir_count, _godot_object);
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory, int) _GODOT_get_subdir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdir") = _GODOT_get_subdir;
	EditorFileSystemDirectory get_subdir(in int idx)
	{
		_GODOT_get_subdir.bind("EditorFileSystemDirectory", "get_subdir");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_subdir, _godot_object, idx);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_file_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_count") = _GODOT_get_file_count;
	int get_file_count() const
	{
		_GODOT_get_file_count.bind("EditorFileSystemDirectory", "get_file_count");
		return ptrcall!(int)(_GODOT_get_file_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file") = _GODOT_get_file;
	String get_file(in int idx) const
	{
		_GODOT_get_file.bind("EditorFileSystemDirectory", "get_file");
		return ptrcall!(String)(_GODOT_get_file, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_file_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_path") = _GODOT_get_file_path;
	String get_file_path(in int idx) const
	{
		_GODOT_get_file_path.bind("EditorFileSystemDirectory", "get_file_path");
		return ptrcall!(String)(_GODOT_get_file_path, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_file_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_type") = _GODOT_get_file_type;
	String get_file_type(in int idx) const
	{
		_GODOT_get_file_type.bind("EditorFileSystemDirectory", "get_file_type");
		return ptrcall!(String)(_GODOT_get_file_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, int) _GODOT_get_file_import_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_import_is_valid") = _GODOT_get_file_import_is_valid;
	bool get_file_import_is_valid(in int idx) const
	{
		_GODOT_get_file_import_is_valid.bind("EditorFileSystemDirectory", "get_file_import_is_valid");
		return ptrcall!(bool)(_GODOT_get_file_import_is_valid, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	String get_name()
	{
		_GODOT_get_name.bind("EditorFileSystemDirectory", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	String get_path() const
	{
		_GODOT_get_path.bind("EditorFileSystemDirectory", "get_path");
		return ptrcall!(String)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory) _GODOT_get_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent") = _GODOT_get_parent;
	EditorFileSystemDirectory get_parent()
	{
		_GODOT_get_parent.bind("EditorFileSystemDirectory", "get_parent");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_parent, _godot_object);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_find_file_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_file_index") = _GODOT_find_file_index;
	int find_file_index(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_file_index.bind("EditorFileSystemDirectory", "find_file_index");
		return ptrcall!(int)(_GODOT_find_file_index, _godot_object, name);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_find_dir_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_dir_index") = _GODOT_find_dir_index;
	int find_dir_index(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_dir_index.bind("EditorFileSystemDirectory", "find_dir_index");
		return ptrcall!(int)(_GODOT_find_dir_index, _godot_object, name);
	}
}
