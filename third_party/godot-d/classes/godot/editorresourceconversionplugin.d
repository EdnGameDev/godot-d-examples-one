module godot.editorresourceconversionplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.resource;
@GodotBaseClass struct EditorResourceConversionPlugin
{
	static immutable string _GODOT_internal_name = "EditorResourceConversionPlugin";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorResourceConversionPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourceConversionPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorResourceConversionPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorResourceConversionPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourceConversionPlugin)(constructor());
	}
	package(godot) static GodotMethod!(Resource, Resource) _GODOT__convert;
	package(godot) alias _GODOT_methodBindInfo(string name : "_convert") = _GODOT__convert;
	Resource _convert(in Resource resource)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(resource);
		String _GODOT_method_name = String("_convert");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Resource);
	}
	package(godot) static GodotMethod!(bool) _GODOT__converts_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "_converts_to") = _GODOT__converts_to;
	bool _converts_to()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_converts_to");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
}
