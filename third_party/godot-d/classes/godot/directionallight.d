module godot.directionallight;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.light;
@GodotBaseClass struct DirectionalLight
{
	static immutable string _GODOT_internal_name = "DirectionalLight";
public:
	union { godot_object _godot_object; Light base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in DirectionalLight other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DirectionalLight opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DirectionalLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("DirectionalLight");
		if(constructor is null) return typeof(this).init;
		return cast(DirectionalLight)(constructor());
	}
	enum ShadowMode : int
	{
		SHADOW_PARALLEL_4_SPLITS = 2,
		SHADOW_ORTHOGONAL = 0,
		SHADOW_PARALLEL_2_SPLITS = 1,
	}
	enum ShadowDepthRange : int
	{
		SHADOW_DEPTH_RANGE_OPTIMIZED = 1,
		SHADOW_DEPTH_RANGE_STABLE = 0,
	}
	enum int SHADOW_DEPTH_RANGE_STABLE = 0;
	enum int SHADOW_PARALLEL_4_SPLITS = 2;
	enum int SHADOW_ORTHOGONAL = 0;
	enum int SHADOW_PARALLEL_2_SPLITS = 1;
	enum int SHADOW_DEPTH_RANGE_OPTIMIZED = 1;
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_mode") = _GODOT_set_shadow_mode;
	void set_shadow_mode(in int mode)
	{
		_GODOT_set_shadow_mode.bind("DirectionalLight", "set_shadow_mode");
		ptrcall!(void)(_GODOT_set_shadow_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(DirectionalLight.ShadowMode) _GODOT_get_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_mode") = _GODOT_get_shadow_mode;
	DirectionalLight.ShadowMode get_shadow_mode() const
	{
		_GODOT_get_shadow_mode.bind("DirectionalLight", "get_shadow_mode");
		return ptrcall!(DirectionalLight.ShadowMode)(_GODOT_get_shadow_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_shadow_depth_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_depth_range") = _GODOT_set_shadow_depth_range;
	void set_shadow_depth_range(in int mode)
	{
		_GODOT_set_shadow_depth_range.bind("DirectionalLight", "set_shadow_depth_range");
		ptrcall!(void)(_GODOT_set_shadow_depth_range, _godot_object, mode);
	}
	package(godot) static GodotMethod!(DirectionalLight.ShadowDepthRange) _GODOT_get_shadow_depth_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_depth_range") = _GODOT_get_shadow_depth_range;
	DirectionalLight.ShadowDepthRange get_shadow_depth_range() const
	{
		_GODOT_get_shadow_depth_range.bind("DirectionalLight", "get_shadow_depth_range");
		return ptrcall!(DirectionalLight.ShadowDepthRange)(_GODOT_get_shadow_depth_range, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_blend_splits;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_splits") = _GODOT_set_blend_splits;
	void set_blend_splits(in bool enabled)
	{
		_GODOT_set_blend_splits.bind("DirectionalLight", "set_blend_splits");
		ptrcall!(void)(_GODOT_set_blend_splits, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_blend_splits_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_blend_splits_enabled") = _GODOT_is_blend_splits_enabled;
	bool is_blend_splits_enabled() const
	{
		_GODOT_is_blend_splits_enabled.bind("DirectionalLight", "is_blend_splits_enabled");
		return ptrcall!(bool)(_GODOT_is_blend_splits_enabled, _godot_object);
	}
}
