module godot.editorexportplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct EditorExportPlugin
{
	static immutable string _GODOT_internal_name = "EditorExportPlugin";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorExportPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorExportPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorExportPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorExportPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorExportPlugin)(constructor());
	}
	package(godot) static GodotMethod!(void, String, String, PoolStringArray) _GODOT__export_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "_export_file") = _GODOT__export_file;
	void _export_file(StringArg0, StringArg1)(in StringArg0 path, in StringArg1 type, in PoolStringArray features)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(type);
		_GODOT_args.append(features);
		String _GODOT_method_name = String("_export_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT__export_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "_export_begin") = _GODOT__export_begin;
	void _export_begin(in PoolStringArray features)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(features);
		String _GODOT_method_name = String("_export_begin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_shared_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_shared_object") = _GODOT_add_shared_object;
	void add_shared_object(StringArg0)(in StringArg0 path)
	{
		_GODOT_add_shared_object.bind("EditorExportPlugin", "add_shared_object");
		ptrcall!(void)(_GODOT_add_shared_object, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, String, PoolByteArray, bool) _GODOT_add_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_file") = _GODOT_add_file;
	void add_file(StringArg0)(in StringArg0 path, in PoolByteArray file, in bool remap)
	{
		_GODOT_add_file.bind("EditorExportPlugin", "add_file");
		ptrcall!(void)(_GODOT_add_file, _godot_object, path, file, remap);
	}
	package(godot) static GodotMethod!(void) _GODOT_skip;
	package(godot) alias _GODOT_methodBindInfo(string name : "skip") = _GODOT_skip;
	void skip()
	{
		_GODOT_skip.bind("EditorExportPlugin", "skip");
		ptrcall!(void)(_GODOT_skip, _godot_object);
	}
}
