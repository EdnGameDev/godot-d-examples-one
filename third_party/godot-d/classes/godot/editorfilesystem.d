module godot.editorfilesystem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.editorfilesystemdirectory;
@GodotBaseClass struct EditorFileSystem
{
	static immutable string _GODOT_internal_name = "EditorFileSystem";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorFileSystem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorFileSystem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorFileSystem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorFileSystem");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileSystem)(constructor());
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory) _GODOT_get_filesystem;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filesystem") = _GODOT_get_filesystem;
	EditorFileSystemDirectory get_filesystem()
	{
		_GODOT_get_filesystem.bind("EditorFileSystem", "get_filesystem");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_filesystem, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_scanning;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scanning") = _GODOT_is_scanning;
	bool is_scanning() const
	{
		_GODOT_is_scanning.bind("EditorFileSystem", "is_scanning");
		return ptrcall!(bool)(_GODOT_is_scanning, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_scanning_progress;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scanning_progress") = _GODOT_get_scanning_progress;
	float get_scanning_progress() const
	{
		_GODOT_get_scanning_progress.bind("EditorFileSystem", "get_scanning_progress");
		return ptrcall!(float)(_GODOT_get_scanning_progress, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_scan;
	package(godot) alias _GODOT_methodBindInfo(string name : "scan") = _GODOT_scan;
	void scan()
	{
		_GODOT_scan.bind("EditorFileSystem", "scan");
		ptrcall!(void)(_GODOT_scan, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_scan_sources;
	package(godot) alias _GODOT_methodBindInfo(string name : "scan_sources") = _GODOT_scan_sources;
	void scan_sources()
	{
		_GODOT_scan_sources.bind("EditorFileSystem", "scan_sources");
		ptrcall!(void)(_GODOT_scan_sources, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_update_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_file") = _GODOT_update_file;
	void update_file(StringArg0)(in StringArg0 path)
	{
		_GODOT_update_file.bind("EditorFileSystem", "update_file");
		ptrcall!(void)(_GODOT_update_file, _godot_object, path);
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory, String) _GODOT_get_filesystem_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filesystem_path") = _GODOT_get_filesystem_path;
	EditorFileSystemDirectory get_filesystem_path(StringArg0)(in StringArg0 path)
	{
		_GODOT_get_filesystem_path.bind("EditorFileSystem", "get_filesystem_path");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_filesystem_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_file_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_type") = _GODOT_get_file_type;
	String get_file_type(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_file_type.bind("EditorFileSystem", "get_file_type");
		return ptrcall!(String)(_GODOT_get_file_type, _godot_object, path);
	}
}
