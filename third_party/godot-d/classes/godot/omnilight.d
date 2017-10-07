module godot.omnilight;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.light;
@GodotBaseClass struct OmniLight
{
	static immutable string _GODOT_internal_name = "OmniLight";
public:
	union { godot_object _godot_object; Light base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in OmniLight other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OmniLight opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OmniLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("OmniLight");
		if(constructor is null) return typeof(this).init;
		return cast(OmniLight)(constructor());
	}
	enum ShadowMode : int
	{
		SHADOW_DUAL_PARABOLOID = 0,
		SHADOW_CUBE = 1,
	}
	enum ShadowDetail : int
	{
		SHADOW_DETAIL_HORIZONTAL = 1,
		SHADOW_DETAIL_VERTICAL = 0,
	}
	enum int SHADOW_DETAIL_HORIZONTAL = 1;
	enum int SHADOW_DUAL_PARABOLOID = 0;
	enum int SHADOW_CUBE = 1;
	enum int SHADOW_DETAIL_VERTICAL = 0;
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_mode") = _GODOT_set_shadow_mode;
	void set_shadow_mode(in int mode)
	{
		_GODOT_set_shadow_mode.bind("OmniLight", "set_shadow_mode");
		ptrcall!(void)(_GODOT_set_shadow_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(OmniLight.ShadowMode) _GODOT_get_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_mode") = _GODOT_get_shadow_mode;
	OmniLight.ShadowMode get_shadow_mode() const
	{
		_GODOT_get_shadow_mode.bind("OmniLight", "get_shadow_mode");
		return ptrcall!(OmniLight.ShadowMode)(_GODOT_get_shadow_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_detail") = _GODOT_set_shadow_detail;
	void set_shadow_detail(in int detail)
	{
		_GODOT_set_shadow_detail.bind("OmniLight", "set_shadow_detail");
		ptrcall!(void)(_GODOT_set_shadow_detail, _godot_object, detail);
	}
	package(godot) static GodotMethod!(OmniLight.ShadowDetail) _GODOT_get_shadow_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_detail") = _GODOT_get_shadow_detail;
	OmniLight.ShadowDetail get_shadow_detail() const
	{
		_GODOT_get_shadow_detail.bind("OmniLight", "get_shadow_detail");
		return ptrcall!(OmniLight.ShadowDetail)(_GODOT_get_shadow_detail, _godot_object);
	}
}
