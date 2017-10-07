module godot.editorimportplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct EditorImportPlugin
{
	static immutable string _GODOT_internal_name = "EditorImportPlugin";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorImportPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorImportPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorImportPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorImportPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorImportPlugin)(constructor());
	}
	package(godot) static GodotMethod!(String) _GODOT_get_importer_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_importer_name") = _GODOT_get_importer_name;
	String get_importer_name()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_importer_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_visible_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_name") = _GODOT_get_visible_name;
	String get_visible_name()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_visible_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_preset_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_preset_count") = _GODOT_get_preset_count;
	int get_preset_count()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_preset_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	package(godot) static GodotMethod!(String, int) _GODOT_get_preset_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_preset_name") = _GODOT_get_preset_name;
	String get_preset_name(in int preset)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_preset_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_recognized_extensions;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recognized_extensions") = _GODOT_get_recognized_extensions;
	Array get_recognized_extensions()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	package(godot) static GodotMethod!(Array, int) _GODOT_get_import_options;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_import_options") = _GODOT_get_import_options;
	Array get_import_options(in int preset)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_import_options");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_save_extension;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_save_extension") = _GODOT_get_save_extension;
	String get_save_extension()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_save_extension");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_resource_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_type") = _GODOT_get_resource_type;
	String get_resource_type()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_resource_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	package(godot) static GodotMethod!(bool, String, Dictionary) _GODOT_get_option_visibility;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_option_visibility") = _GODOT_get_option_visibility;
	bool get_option_visibility(StringArg0)(in StringArg0 option, in Dictionary options)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(option);
		_GODOT_args.append(options);
		String _GODOT_method_name = String("get_option_visibility");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(int, String, String, Dictionary, Array, Array) _GODOT__import;
	package(godot) alias _GODOT_methodBindInfo(string name : "import") = _GODOT__import;
	int _import(StringArg0, StringArg1)(in StringArg0 source_file, in StringArg1 save_path, in Dictionary options, in Array r_platform_variants, in Array r_gen_files)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(source_file);
		_GODOT_args.append(save_path);
		_GODOT_args.append(options);
		_GODOT_args.append(r_platform_variants);
		_GODOT_args.append(r_gen_files);
		String _GODOT_method_name = String("import");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
}
