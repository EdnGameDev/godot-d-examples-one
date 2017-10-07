module godot.visualscriptcomment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
@GodotBaseClass struct VisualScriptComment
{
	static immutable string _GODOT_internal_name = "VisualScriptComment";
public:
	union { godot_object _godot_object; VisualScriptNode base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in VisualScriptComment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptComment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptComment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualScriptComment");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptComment)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_title") = _GODOT_set_title;
	void set_title(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_title.bind("VisualScriptComment", "set_title");
		ptrcall!(void)(_GODOT_set_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_title") = _GODOT_get_title;
	String get_title() const
	{
		_GODOT_get_title.bind("VisualScriptComment", "get_title");
		return ptrcall!(String)(_GODOT_get_title, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_description;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_description") = _GODOT_set_description;
	void set_description(StringArg0)(in StringArg0 description)
	{
		_GODOT_set_description.bind("VisualScriptComment", "set_description");
		ptrcall!(void)(_GODOT_set_description, _godot_object, description);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_description;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_description") = _GODOT_get_description;
	String get_description() const
	{
		_GODOT_get_description.bind("VisualScriptComment", "get_description");
		return ptrcall!(String)(_GODOT_get_description, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	void set_size(in Vector2 size)
	{
		_GODOT_set_size.bind("VisualScriptComment", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	Vector2 get_size() const
	{
		_GODOT_get_size.bind("VisualScriptComment", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
}
