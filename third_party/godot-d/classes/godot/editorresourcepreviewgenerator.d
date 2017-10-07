module godot.editorresourcepreviewgenerator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.texture;
import godot.resource;
@GodotBaseClass struct EditorResourcePreviewGenerator
{
	static immutable string _GODOT_internal_name = "EditorResourcePreviewGenerator";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorResourcePreviewGenerator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourcePreviewGenerator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorResourcePreviewGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorResourcePreviewGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePreviewGenerator)(constructor());
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_handles;
	package(godot) alias _GODOT_methodBindInfo(string name : "handles") = _GODOT_handles;
	bool handles(StringArg0)(in StringArg0 type)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(Texture, Resource) _GODOT_generate;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate") = _GODOT_generate;
	Texture generate(in Resource from)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from);
		String _GODOT_method_name = String("generate");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Texture);
	}
	package(godot) static GodotMethod!(Texture, String) _GODOT_generate_from_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_from_path") = _GODOT_generate_from_path;
	Texture generate_from_path(StringArg0)(in StringArg0 path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		String _GODOT_method_name = String("generate_from_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Texture);
	}
}
