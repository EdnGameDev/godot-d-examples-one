module godot.audioeffecthighshelffilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.audioeffectfilter;
@GodotBaseClass struct AudioEffectHighShelfFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectHighShelfFilter";
public:
	union { godot_object _godot_object; AudioEffectFilter base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in AudioEffectHighShelfFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectHighShelfFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectHighShelfFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectHighShelfFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectHighShelfFilter)(constructor());
	}
}
