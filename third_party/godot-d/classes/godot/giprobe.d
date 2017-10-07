module godot.giprobe;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.visualinstance;
import godot.giprobedata;
@GodotBaseClass struct GIProbe
{
	static immutable string _GODOT_internal_name = "GIProbe";
public:
	union { godot_object _godot_object; VisualInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GIProbe other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GIProbe opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GIProbe _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GIProbe");
		if(constructor is null) return typeof(this).init;
		return cast(GIProbe)(constructor());
	}
	enum Subdiv : int
	{
		SUBDIV_128 = 1,
		SUBDIV_MAX = 4,
		SUBDIV_64 = 0,
		SUBDIV_256 = 2,
	}
	enum int SUBDIV_128 = 1;
	enum int SUBDIV_MAX = 4;
	enum int SUBDIV_64 = 0;
	enum int SUBDIV_256 = 2;
	package(godot) static GodotMethod!(void, GIProbeData) _GODOT_set_probe_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_probe_data") = _GODOT_set_probe_data;
	void set_probe_data(in GIProbeData data)
	{
		_GODOT_set_probe_data.bind("GIProbe", "set_probe_data");
		ptrcall!(void)(_GODOT_set_probe_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(GIProbeData) _GODOT_get_probe_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_probe_data") = _GODOT_get_probe_data;
	GIProbeData get_probe_data() const
	{
		_GODOT_get_probe_data.bind("GIProbe", "get_probe_data");
		return ptrcall!(GIProbeData)(_GODOT_get_probe_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdiv") = _GODOT_set_subdiv;
	void set_subdiv(in int subdiv)
	{
		_GODOT_set_subdiv.bind("GIProbe", "set_subdiv");
		ptrcall!(void)(_GODOT_set_subdiv, _godot_object, subdiv);
	}
	package(godot) static GodotMethod!(GIProbe.Subdiv) _GODOT_get_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdiv") = _GODOT_get_subdiv;
	GIProbe.Subdiv get_subdiv() const
	{
		_GODOT_get_subdiv.bind("GIProbe", "get_subdiv");
		return ptrcall!(GIProbe.Subdiv)(_GODOT_get_subdiv, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	void set_extents(in Vector3 extents)
	{
		_GODOT_set_extents.bind("GIProbe", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	Vector3 get_extents() const
	{
		_GODOT_get_extents.bind("GIProbe", "get_extents");
		return ptrcall!(Vector3)(_GODOT_get_extents, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dynamic_range") = _GODOT_set_dynamic_range;
	void set_dynamic_range(in int max)
	{
		_GODOT_set_dynamic_range.bind("GIProbe", "set_dynamic_range");
		ptrcall!(void)(_GODOT_set_dynamic_range, _godot_object, max);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_range") = _GODOT_get_dynamic_range;
	int get_dynamic_range() const
	{
		_GODOT_get_dynamic_range.bind("GIProbe", "get_dynamic_range");
		return ptrcall!(int)(_GODOT_get_dynamic_range, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	void set_energy(in float max)
	{
		_GODOT_set_energy.bind("GIProbe", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, max);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	float get_energy() const
	{
		_GODOT_get_energy.bind("GIProbe", "get_energy");
		return ptrcall!(float)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bias") = _GODOT_set_bias;
	void set_bias(in float max)
	{
		_GODOT_set_bias.bind("GIProbe", "set_bias");
		ptrcall!(void)(_GODOT_set_bias, _godot_object, max);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bias") = _GODOT_get_bias;
	float get_bias() const
	{
		_GODOT_get_bias.bind("GIProbe", "get_bias");
		return ptrcall!(float)(_GODOT_get_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_bias") = _GODOT_set_normal_bias;
	void set_normal_bias(in float max)
	{
		_GODOT_set_normal_bias.bind("GIProbe", "set_normal_bias");
		ptrcall!(void)(_GODOT_set_normal_bias, _godot_object, max);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_bias") = _GODOT_get_normal_bias;
	float get_normal_bias() const
	{
		_GODOT_get_normal_bias.bind("GIProbe", "get_normal_bias");
		return ptrcall!(float)(_GODOT_get_normal_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_propagation") = _GODOT_set_propagation;
	void set_propagation(in float max)
	{
		_GODOT_set_propagation.bind("GIProbe", "set_propagation");
		ptrcall!(void)(_GODOT_set_propagation, _godot_object, max);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_propagation") = _GODOT_get_propagation;
	float get_propagation() const
	{
		_GODOT_get_propagation.bind("GIProbe", "get_propagation");
		return ptrcall!(float)(_GODOT_get_propagation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior") = _GODOT_set_interior;
	void set_interior(in bool enable)
	{
		_GODOT_set_interior.bind("GIProbe", "set_interior");
		ptrcall!(void)(_GODOT_set_interior, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_interior") = _GODOT_is_interior;
	bool is_interior() const
	{
		_GODOT_is_interior.bind("GIProbe", "is_interior");
		return ptrcall!(bool)(_GODOT_is_interior, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_compress") = _GODOT_set_compress;
	void set_compress(in bool enable)
	{
		_GODOT_set_compress.bind("GIProbe", "set_compress");
		ptrcall!(void)(_GODOT_set_compress, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_compressed") = _GODOT_is_compressed;
	bool is_compressed() const
	{
		_GODOT_is_compressed.bind("GIProbe", "is_compressed");
		return ptrcall!(bool)(_GODOT_is_compressed, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject, bool) _GODOT_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "bake") = _GODOT_bake;
	void bake(in GodotObject from_node = GodotObject.init, in bool create_visual_debug = false)
	{
		_GODOT_bake.bind("GIProbe", "bake");
		ptrcall!(void)(_GODOT_bake, _godot_object, from_node, create_visual_debug);
	}
	package(godot) static GodotMethod!(void) _GODOT_debug_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "debug_bake") = _GODOT_debug_bake;
	void debug_bake()
	{
		_GODOT_debug_bake.bind("GIProbe", "debug_bake");
		ptrcall!(void)(_GODOT_debug_bake, _godot_object);
	}
}
