module godot.arvrscriptinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.arvrinterface;
@GodotBaseClass struct ARVRScriptInterface
{
	static immutable string _GODOT_internal_name = "ARVRScriptInterface";
public:
	union { godot_object _godot_object; ARVRInterface base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRScriptInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRScriptInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRScriptInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRScriptInterface");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRScriptInterface)(constructor());
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_installed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_installed") = _GODOT_is_installed;
	bool is_installed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_installed");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_hmd_is_present;
	package(godot) alias _GODOT_methodBindInfo(string name : "hmd_is_present") = _GODOT_hmd_is_present;
	bool hmd_is_present()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("hmd_is_present");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_supports_hmd;
	package(godot) alias _GODOT_methodBindInfo(string name : "supports_hmd") = _GODOT_supports_hmd;
	bool supports_hmd()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("supports_hmd");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_initialized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_initialized") = _GODOT_is_initialized;
	bool is_initialized()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_initialized");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_initialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "initialize") = _GODOT_initialize;
	bool initialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("initialize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(void) _GODOT_uninitialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "uninitialize") = _GODOT_uninitialize;
	void uninitialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("uninitialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stereo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stereo") = _GODOT_is_stereo;
	bool is_stereo()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_stereo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_recommended_render_targetsize;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recommended_render_targetsize") = _GODOT_get_recommended_render_targetsize;
	Vector2 get_recommended_render_targetsize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_recommended_render_targetsize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Vector2);
	}
	package(godot) static GodotMethod!(Transform, int, Transform) _GODOT_get_transform_for_eye;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform_for_eye") = _GODOT_get_transform_for_eye;
	Transform get_transform_for_eye(in int eye, in Transform cam_transform)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(eye);
		_GODOT_args.append(cam_transform);
		String _GODOT_method_name = String("get_transform_for_eye");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Transform);
	}
	package(godot) static GodotMethod!(void) _GODOT__get_projection_for_eye;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_projection_for_eye") = _GODOT__get_projection_for_eye;
	void _get_projection_for_eye()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_projection_for_eye");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, RID) _GODOT_commit_for_eye;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit_for_eye") = _GODOT_commit_for_eye;
	void commit_for_eye(in int eye, in RID render_target)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(eye);
		_GODOT_args.append(render_target);
		String _GODOT_method_name = String("commit_for_eye");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "process") = _GODOT_process;
	void process()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
