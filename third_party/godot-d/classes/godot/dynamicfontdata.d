module godot.dynamicfontdata;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct DynamicFontData
{
	static immutable string _GODOT_internal_name = "DynamicFontData";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in DynamicFontData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DynamicFontData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DynamicFontData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("DynamicFontData");
		if(constructor is null) return typeof(this).init;
		return cast(DynamicFontData)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_font_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_font_path") = _GODOT_set_font_path;
	void set_font_path(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_font_path.bind("DynamicFontData", "set_font_path");
		ptrcall!(void)(_GODOT_set_font_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_font_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font_path") = _GODOT_get_font_path;
	String get_font_path() const
	{
		_GODOT_get_font_path.bind("DynamicFontData", "get_font_path");
		return ptrcall!(String)(_GODOT_get_font_path, _godot_object);
	}
}
