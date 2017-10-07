module godot.arvrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.reference;
@GodotBaseClass struct ARVRInterface
{
	static immutable string _GODOT_internal_name = "ARVRInterface";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in ARVRInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRInterface");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRInterface)(constructor());
	}
	enum Eyes : int
	{
		EYE_LEFT = 1,
		EYE_RIGHT = 2,
		EYE_MONO = 0,
	}
	enum int EYE_LEFT = 1;
	enum int EYE_RIGHT = 2;
	enum int EYE_MONO = 0;
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	String get_name() const
	{
		_GODOT_get_name.bind("ARVRInterface", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_primary;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_primary") = _GODOT_is_primary;
	bool is_primary()
	{
		_GODOT_is_primary.bind("ARVRInterface", "is_primary");
		return ptrcall!(bool)(_GODOT_is_primary, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_is_primary;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_is_primary") = _GODOT_set_is_primary;
	void set_is_primary(in bool enable)
	{
		_GODOT_set_is_primary.bind("ARVRInterface", "set_is_primary");
		ptrcall!(void)(_GODOT_set_is_primary, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_installed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_installed") = _GODOT_is_installed;
	bool is_installed()
	{
		_GODOT_is_installed.bind("ARVRInterface", "is_installed");
		return ptrcall!(bool)(_GODOT_is_installed, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_hmd_is_present;
	package(godot) alias _GODOT_methodBindInfo(string name : "hmd_is_present") = _GODOT_hmd_is_present;
	bool hmd_is_present()
	{
		_GODOT_hmd_is_present.bind("ARVRInterface", "hmd_is_present");
		return ptrcall!(bool)(_GODOT_hmd_is_present, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_supports_hmd;
	package(godot) alias _GODOT_methodBindInfo(string name : "supports_hmd") = _GODOT_supports_hmd;
	bool supports_hmd()
	{
		_GODOT_supports_hmd.bind("ARVRInterface", "supports_hmd");
		return ptrcall!(bool)(_GODOT_supports_hmd, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_initialized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_initialized") = _GODOT_is_initialized;
	bool is_initialized()
	{
		_GODOT_is_initialized.bind("ARVRInterface", "is_initialized");
		return ptrcall!(bool)(_GODOT_is_initialized, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_initialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "initialize") = _GODOT_initialize;
	bool initialize()
	{
		_GODOT_initialize.bind("ARVRInterface", "initialize");
		return ptrcall!(bool)(_GODOT_initialize, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_uninitialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "uninitialize") = _GODOT_uninitialize;
	void uninitialize()
	{
		_GODOT_uninitialize.bind("ARVRInterface", "uninitialize");
		ptrcall!(void)(_GODOT_uninitialize, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_recommended_render_targetsize;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recommended_render_targetsize") = _GODOT_get_recommended_render_targetsize;
	Vector2 get_recommended_render_targetsize()
	{
		_GODOT_get_recommended_render_targetsize.bind("ARVRInterface", "get_recommended_render_targetsize");
		return ptrcall!(Vector2)(_GODOT_get_recommended_render_targetsize, _godot_object);
	}
}
