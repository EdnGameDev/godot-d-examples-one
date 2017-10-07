module godot.phashtranslation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.translation;
@GodotBaseClass struct PHashTranslation
{
	static immutable string _GODOT_internal_name = "PHashTranslation";
public:
	union { godot_object _godot_object; Translation base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PHashTranslation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PHashTranslation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PHashTranslation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PHashTranslation");
		if(constructor is null) return typeof(this).init;
		return cast(PHashTranslation)(constructor());
	}
	package(godot) static GodotMethod!(void, Translation) _GODOT_generate;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate") = _GODOT_generate;
	void generate(in Translation from)
	{
		_GODOT_generate.bind("PHashTranslation", "generate");
		ptrcall!(void)(_GODOT_generate, _godot_object, from);
	}
}
