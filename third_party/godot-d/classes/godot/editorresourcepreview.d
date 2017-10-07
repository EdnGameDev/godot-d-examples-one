module godot.editorresourcepreview;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.texture;
import godot.resource;
import godot.editorresourcepreviewgenerator;
@GodotBaseClass struct EditorResourcePreview
{
	static immutable string _GODOT_internal_name = "EditorResourcePreview";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in EditorResourcePreview other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourcePreview opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorResourcePreview _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorResourcePreview");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePreview)(constructor());
	}
	package(godot) static GodotMethod!(void, String, Texture, int, String, Variant) _GODOT__preview_ready;
	package(godot) alias _GODOT_methodBindInfo(string name : "_preview_ready") = _GODOT__preview_ready;
	void _preview_ready(StringArg0, StringArg3, VariantArg4)(in StringArg0 arg0, in Texture arg1, in int arg2, in StringArg3 arg3, in VariantArg4 arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_preview_ready");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, GodotObject, String, Variant) _GODOT_queue_resource_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_resource_preview") = _GODOT_queue_resource_preview;
	void queue_resource_preview(StringArg0, StringArg2, VariantArg3)(in StringArg0 path, in GodotObject receiver, in StringArg2 receiver_func, in VariantArg3 userdata)
	{
		_GODOT_queue_resource_preview.bind("EditorResourcePreview", "queue_resource_preview");
		ptrcall!(void)(_GODOT_queue_resource_preview, _godot_object, path, receiver, receiver_func, userdata);
	}
	package(godot) static GodotMethod!(void, Resource, GodotObject, String, Variant) _GODOT_queue_edited_resource_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_edited_resource_preview") = _GODOT_queue_edited_resource_preview;
	void queue_edited_resource_preview(StringArg2, VariantArg3)(in Resource resource, in GodotObject receiver, in StringArg2 receiver_func, in VariantArg3 userdata)
	{
		_GODOT_queue_edited_resource_preview.bind("EditorResourcePreview", "queue_edited_resource_preview");
		ptrcall!(void)(_GODOT_queue_edited_resource_preview, _godot_object, resource, receiver, receiver_func, userdata);
	}
	package(godot) static GodotMethod!(void, EditorResourcePreviewGenerator) _GODOT_add_preview_generator;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_preview_generator") = _GODOT_add_preview_generator;
	void add_preview_generator(in EditorResourcePreviewGenerator generator)
	{
		_GODOT_add_preview_generator.bind("EditorResourcePreview", "add_preview_generator");
		ptrcall!(void)(_GODOT_add_preview_generator, _godot_object, generator);
	}
	package(godot) static GodotMethod!(void, EditorResourcePreviewGenerator) _GODOT_remove_preview_generator;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_preview_generator") = _GODOT_remove_preview_generator;
	void remove_preview_generator(in EditorResourcePreviewGenerator generator)
	{
		_GODOT_remove_preview_generator.bind("EditorResourcePreview", "remove_preview_generator");
		ptrcall!(void)(_GODOT_remove_preview_generator, _godot_object, generator);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_check_for_invalidation;
	package(godot) alias _GODOT_methodBindInfo(string name : "check_for_invalidation") = _GODOT_check_for_invalidation;
	void check_for_invalidation(StringArg0)(in StringArg0 path)
	{
		_GODOT_check_for_invalidation.bind("EditorResourcePreview", "check_for_invalidation");
		ptrcall!(void)(_GODOT_check_for_invalidation, _godot_object, path);
	}
}
