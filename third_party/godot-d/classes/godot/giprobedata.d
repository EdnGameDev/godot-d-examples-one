module godot.giprobedata;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct GIProbeData
{
	static immutable string _GODOT_internal_name = "GIProbeData";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in GIProbeData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GIProbeData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GIProbeData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GIProbeData");
		if(constructor is null) return typeof(this).init;
		return cast(GIProbeData)(constructor());
	}
	package(godot) static GodotMethod!(void, Rect3) _GODOT_set_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounds") = _GODOT_set_bounds;
	void set_bounds(in Rect3 bounds)
	{
		_GODOT_set_bounds.bind("GIProbeData", "set_bounds");
		ptrcall!(void)(_GODOT_set_bounds, _godot_object, bounds);
	}
	package(godot) static GodotMethod!(Rect3) _GODOT_get_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounds") = _GODOT_get_bounds;
	Rect3 get_bounds() const
	{
		_GODOT_get_bounds.bind("GIProbeData", "get_bounds");
		return ptrcall!(Rect3)(_GODOT_get_bounds, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	void set_cell_size(in float cell_size)
	{
		_GODOT_set_cell_size.bind("GIProbeData", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, cell_size);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	float get_cell_size() const
	{
		_GODOT_get_cell_size.bind("GIProbeData", "get_cell_size");
		return ptrcall!(float)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_to_cell_xform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_to_cell_xform") = _GODOT_set_to_cell_xform;
	void set_to_cell_xform(in Transform to_cell_xform)
	{
		_GODOT_set_to_cell_xform.bind("GIProbeData", "set_to_cell_xform");
		ptrcall!(void)(_GODOT_set_to_cell_xform, _godot_object, to_cell_xform);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_to_cell_xform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_to_cell_xform") = _GODOT_get_to_cell_xform;
	Transform get_to_cell_xform() const
	{
		_GODOT_get_to_cell_xform.bind("GIProbeData", "get_to_cell_xform");
		return ptrcall!(Transform)(_GODOT_get_to_cell_xform, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_set_dynamic_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dynamic_data") = _GODOT_set_dynamic_data;
	void set_dynamic_data(in PoolIntArray dynamic_data)
	{
		_GODOT_set_dynamic_data.bind("GIProbeData", "set_dynamic_data");
		ptrcall!(void)(_GODOT_set_dynamic_data, _godot_object, dynamic_data);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_dynamic_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_data") = _GODOT_get_dynamic_data;
	PoolIntArray get_dynamic_data() const
	{
		_GODOT_get_dynamic_data.bind("GIProbeData", "get_dynamic_data");
		return ptrcall!(PoolIntArray)(_GODOT_get_dynamic_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dynamic_range") = _GODOT_set_dynamic_range;
	void set_dynamic_range(in int dynamic_range)
	{
		_GODOT_set_dynamic_range.bind("GIProbeData", "set_dynamic_range");
		ptrcall!(void)(_GODOT_set_dynamic_range, _godot_object, dynamic_range);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_range") = _GODOT_get_dynamic_range;
	int get_dynamic_range() const
	{
		_GODOT_get_dynamic_range.bind("GIProbeData", "get_dynamic_range");
		return ptrcall!(int)(_GODOT_get_dynamic_range, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	void set_energy(in float energy)
	{
		_GODOT_set_energy.bind("GIProbeData", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	float get_energy() const
	{
		_GODOT_get_energy.bind("GIProbeData", "get_energy");
		return ptrcall!(float)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bias") = _GODOT_set_bias;
	void set_bias(in float bias)
	{
		_GODOT_set_bias.bind("GIProbeData", "set_bias");
		ptrcall!(void)(_GODOT_set_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bias") = _GODOT_get_bias;
	float get_bias() const
	{
		_GODOT_get_bias.bind("GIProbeData", "get_bias");
		return ptrcall!(float)(_GODOT_get_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_bias") = _GODOT_set_normal_bias;
	void set_normal_bias(in float bias)
	{
		_GODOT_set_normal_bias.bind("GIProbeData", "set_normal_bias");
		ptrcall!(void)(_GODOT_set_normal_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_bias") = _GODOT_get_normal_bias;
	float get_normal_bias() const
	{
		_GODOT_get_normal_bias.bind("GIProbeData", "get_normal_bias");
		return ptrcall!(float)(_GODOT_get_normal_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_set_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_propagation") = _GODOT_set_propagation;
	void set_propagation(in float propagation)
	{
		_GODOT_set_propagation.bind("GIProbeData", "set_propagation");
		ptrcall!(void)(_GODOT_set_propagation, _godot_object, propagation);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_propagation") = _GODOT_get_propagation;
	float get_propagation() const
	{
		_GODOT_get_propagation.bind("GIProbeData", "get_propagation");
		return ptrcall!(float)(_GODOT_get_propagation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior") = _GODOT_set_interior;
	void set_interior(in bool interior)
	{
		_GODOT_set_interior.bind("GIProbeData", "set_interior");
		ptrcall!(void)(_GODOT_set_interior, _godot_object, interior);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_interior") = _GODOT_is_interior;
	bool is_interior() const
	{
		_GODOT_is_interior.bind("GIProbeData", "is_interior");
		return ptrcall!(bool)(_GODOT_is_interior, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_compress") = _GODOT_set_compress;
	void set_compress(in bool compress)
	{
		_GODOT_set_compress.bind("GIProbeData", "set_compress");
		ptrcall!(void)(_GODOT_set_compress, _godot_object, compress);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_compressed") = _GODOT_is_compressed;
	bool is_compressed() const
	{
		_GODOT_is_compressed.bind("GIProbeData", "is_compressed");
		return ptrcall!(bool)(_GODOT_is_compressed, _godot_object);
	}
}
