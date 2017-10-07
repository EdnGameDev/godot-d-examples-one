module godot.pckpacker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct PCKPacker
{
	static immutable string _GODOT_internal_name = "PCKPacker";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in PCKPacker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PCKPacker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PCKPacker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PCKPacker");
		if(constructor is null) return typeof(this).init;
		return cast(PCKPacker)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String, int) _GODOT_pck_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "pck_start") = _GODOT_pck_start;
	GodotError pck_start(StringArg0)(in StringArg0 pck_name, in int alignment)
	{
		_GODOT_pck_start.bind("PCKPacker", "pck_start");
		return ptrcall!(GodotError)(_GODOT_pck_start, _godot_object, pck_name, alignment);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_add_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_file") = _GODOT_add_file;
	GodotError add_file(StringArg0, StringArg1)(in StringArg0 pck_path, in StringArg1 source_path)
	{
		_GODOT_add_file.bind("PCKPacker", "add_file");
		return ptrcall!(GodotError)(_GODOT_add_file, _godot_object, pck_path, source_path);
	}
	package(godot) static GodotMethod!(GodotError, bool) _GODOT_flush;
	package(godot) alias _GODOT_methodBindInfo(string name : "flush") = _GODOT_flush;
	GodotError flush(in bool verbose)
	{
		_GODOT_flush.bind("PCKPacker", "flush");
		return ptrcall!(GodotError)(_GODOT_flush, _godot_object, verbose);
	}
}
