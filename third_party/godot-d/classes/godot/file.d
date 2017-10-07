module godot.file;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct File
{
	static immutable string _GODOT_internal_name = "_File";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in File other) const { return _godot_object.ptr is other._godot_object.ptr; }
	File opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static File _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_File");
		if(constructor is null) return typeof(this).init;
		return cast(File)(constructor());
	}
	enum CompressionMode : int
	{
		COMPRESSION_ZSTD = 2,
		COMPRESSION_DEFLATE = 1,
		COMPRESSION_GZIP = 3,
		COMPRESSION_FASTLZ = 0,
	}
	enum ModeFlags : int
	{
		WRITE_READ = 7,
		READ_WRITE = 3,
		WRITE = 2,
		READ = 1,
	}
	enum int READ = 1;
	enum int COMPRESSION_GZIP = 3;
	enum int READ_WRITE = 3;
	enum int COMPRESSION_ZSTD = 2;
	enum int COMPRESSION_FASTLZ = 0;
	enum int COMPRESSION_DEFLATE = 1;
	enum int WRITE = 2;
	enum int WRITE_READ = 7;
	package(godot) static GodotMethod!(GodotError, String, int, PoolByteArray) _GODOT_open_encrypted;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_encrypted") = _GODOT_open_encrypted;
	GodotError open_encrypted(StringArg0)(in StringArg0 path, in int mode_flags, in PoolByteArray key)
	{
		_GODOT_open_encrypted.bind("_File", "open_encrypted");
		return ptrcall!(GodotError)(_GODOT_open_encrypted, _godot_object, path, mode_flags, key);
	}
	package(godot) static GodotMethod!(GodotError, String, int, String) _GODOT_open_encrypted_with_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_encrypted_with_pass") = _GODOT_open_encrypted_with_pass;
	GodotError open_encrypted_with_pass(StringArg0, StringArg2)(in StringArg0 path, in int mode_flags, in StringArg2 pass)
	{
		_GODOT_open_encrypted_with_pass.bind("_File", "open_encrypted_with_pass");
		return ptrcall!(GodotError)(_GODOT_open_encrypted_with_pass, _godot_object, path, mode_flags, pass);
	}
	package(godot) static GodotMethod!(GodotError, String, int, int) _GODOT_open_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_compressed") = _GODOT_open_compressed;
	GodotError open_compressed(StringArg0)(in StringArg0 path, in int mode_flags, in int compression_mode = 0)
	{
		_GODOT_open_compressed.bind("_File", "open_compressed");
		return ptrcall!(GodotError)(_GODOT_open_compressed, _godot_object, path, mode_flags, compression_mode);
	}
	package(godot) static GodotMethod!(GodotError, String, int) _GODOT_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "open") = _GODOT_open;
	GodotError open(StringArg0)(in StringArg0 path, in int flags)
	{
		_GODOT_open.bind("_File", "open");
		return ptrcall!(GodotError)(_GODOT_open, _godot_object, path, flags);
	}
	package(godot) static GodotMethod!(void) _GODOT_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "close") = _GODOT_close;
	void close()
	{
		_GODOT_close.bind("_File", "close");
		ptrcall!(void)(_GODOT_close, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_open") = _GODOT_is_open;
	bool is_open() const
	{
		_GODOT_is_open.bind("_File", "is_open");
		return ptrcall!(bool)(_GODOT_is_open, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	void seek(in int position)
	{
		_GODOT_seek.bind("_File", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_seek_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek_end") = _GODOT_seek_end;
	void seek_end(in int position = 0)
	{
		_GODOT_seek_end.bind("_File", "seek_end");
		ptrcall!(void)(_GODOT_seek_end, _godot_object, position);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	int get_position() const
	{
		_GODOT_get_position.bind("_File", "get_position");
		return ptrcall!(int)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_len") = _GODOT_get_len;
	int get_len() const
	{
		_GODOT_get_len.bind("_File", "get_len");
		return ptrcall!(int)(_GODOT_get_len, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_eof_reached;
	package(godot) alias _GODOT_methodBindInfo(string name : "eof_reached") = _GODOT_eof_reached;
	bool eof_reached() const
	{
		_GODOT_eof_reached.bind("_File", "eof_reached");
		return ptrcall!(bool)(_GODOT_eof_reached, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_8") = _GODOT_get_8;
	int get_8() const
	{
		_GODOT_get_8.bind("_File", "get_8");
		return ptrcall!(int)(_GODOT_get_8, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_16") = _GODOT_get_16;
	int get_16() const
	{
		_GODOT_get_16.bind("_File", "get_16");
		return ptrcall!(int)(_GODOT_get_16, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_32") = _GODOT_get_32;
	int get_32() const
	{
		_GODOT_get_32.bind("_File", "get_32");
		return ptrcall!(int)(_GODOT_get_32, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_64") = _GODOT_get_64;
	int get_64() const
	{
		_GODOT_get_64.bind("_File", "get_64");
		return ptrcall!(int)(_GODOT_get_64, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_float") = _GODOT_get_float;
	float get_float() const
	{
		_GODOT_get_float.bind("_File", "get_float");
		return ptrcall!(float)(_GODOT_get_float, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_double") = _GODOT_get_double;
	float get_double() const
	{
		_GODOT_get_double.bind("_File", "get_double");
		return ptrcall!(float)(_GODOT_get_double, _godot_object);
	}
	package(godot) static GodotMethod!(float) _GODOT_get_real;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_real") = _GODOT_get_real;
	float get_real() const
	{
		_GODOT_get_real.bind("_File", "get_real");
		return ptrcall!(float)(_GODOT_get_real, _godot_object);
	}
	package(godot) static GodotMethod!(PoolByteArray, int) _GODOT_get_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_buffer") = _GODOT_get_buffer;
	PoolByteArray get_buffer(in int len) const
	{
		_GODOT_get_buffer.bind("_File", "get_buffer");
		return ptrcall!(PoolByteArray)(_GODOT_get_buffer, _godot_object, len);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line") = _GODOT_get_line;
	String get_line() const
	{
		_GODOT_get_line.bind("_File", "get_line");
		return ptrcall!(String)(_GODOT_get_line, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_as_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_text") = _GODOT_get_as_text;
	String get_as_text() const
	{
		_GODOT_get_as_text.bind("_File", "get_as_text");
		return ptrcall!(String)(_GODOT_get_as_text, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_md5;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_md5") = _GODOT_get_md5;
	String get_md5(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_md5.bind("_File", "get_md5");
		return ptrcall!(String)(_GODOT_get_md5, _godot_object, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_sha256;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sha256") = _GODOT_get_sha256;
	String get_sha256(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_sha256.bind("_File", "get_sha256");
		return ptrcall!(String)(_GODOT_get_sha256, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_endian_swap;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_endian_swap") = _GODOT_get_endian_swap;
	bool get_endian_swap()
	{
		_GODOT_get_endian_swap.bind("_File", "get_endian_swap");
		return ptrcall!(bool)(_GODOT_get_endian_swap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_endian_swap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_endian_swap") = _GODOT_set_endian_swap;
	void set_endian_swap(in bool enable)
	{
		_GODOT_set_endian_swap.bind("_File", "set_endian_swap");
		ptrcall!(void)(_GODOT_set_endian_swap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_get_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error") = _GODOT_get_error;
	GodotError get_error() const
	{
		_GODOT_get_error.bind("_File", "get_error");
		return ptrcall!(GodotError)(_GODOT_get_error, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var") = _GODOT_get_var;
	Variant get_var() const
	{
		_GODOT_get_var.bind("_File", "get_var");
		return ptrcall!(Variant)(_GODOT_get_var, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_csv_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_csv_line") = _GODOT_get_csv_line;
	PoolStringArray get_csv_line(StringArg0)(in StringArg0 delim = ",") const
	{
		_GODOT_get_csv_line.bind("_File", "get_csv_line");
		return ptrcall!(PoolStringArray)(_GODOT_get_csv_line, _godot_object, delim);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_store_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_8") = _GODOT_store_8;
	void store_8(in int value)
	{
		_GODOT_store_8.bind("_File", "store_8");
		ptrcall!(void)(_GODOT_store_8, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_store_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_16") = _GODOT_store_16;
	void store_16(in int value)
	{
		_GODOT_store_16.bind("_File", "store_16");
		ptrcall!(void)(_GODOT_store_16, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_store_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_32") = _GODOT_store_32;
	void store_32(in int value)
	{
		_GODOT_store_32.bind("_File", "store_32");
		ptrcall!(void)(_GODOT_store_32, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_store_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_64") = _GODOT_store_64;
	void store_64(in int value)
	{
		_GODOT_store_64.bind("_File", "store_64");
		ptrcall!(void)(_GODOT_store_64, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_store_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_float") = _GODOT_store_float;
	void store_float(in float value)
	{
		_GODOT_store_float.bind("_File", "store_float");
		ptrcall!(void)(_GODOT_store_float, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_store_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_double") = _GODOT_store_double;
	void store_double(in float value)
	{
		_GODOT_store_double.bind("_File", "store_double");
		ptrcall!(void)(_GODOT_store_double, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, float) _GODOT_store_real;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_real") = _GODOT_store_real;
	void store_real(in float value)
	{
		_GODOT_store_real.bind("_File", "store_real");
		ptrcall!(void)(_GODOT_store_real, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_store_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_buffer") = _GODOT_store_buffer;
	void store_buffer(in PoolByteArray buffer)
	{
		_GODOT_store_buffer.bind("_File", "store_buffer");
		ptrcall!(void)(_GODOT_store_buffer, _godot_object, buffer);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_store_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_line") = _GODOT_store_line;
	void store_line(StringArg0)(in StringArg0 line)
	{
		_GODOT_store_line.bind("_File", "store_line");
		ptrcall!(void)(_GODOT_store_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_store_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_string") = _GODOT_store_string;
	void store_string(StringArg0)(in StringArg0 string)
	{
		_GODOT_store_string.bind("_File", "store_string");
		ptrcall!(void)(_GODOT_store_string, _godot_object, string);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_store_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_var") = _GODOT_store_var;
	void store_var(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_store_var.bind("_File", "store_var");
		ptrcall!(void)(_GODOT_store_var, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_store_pascal_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_pascal_string") = _GODOT_store_pascal_string;
	void store_pascal_string(StringArg0)(in StringArg0 string)
	{
		_GODOT_store_pascal_string.bind("_File", "store_pascal_string");
		ptrcall!(void)(_GODOT_store_pascal_string, _godot_object, string);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_pascal_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pascal_string") = _GODOT_get_pascal_string;
	String get_pascal_string()
	{
		_GODOT_get_pascal_string.bind("_File", "get_pascal_string");
		return ptrcall!(String)(_GODOT_get_pascal_string, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_file_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "file_exists") = _GODOT_file_exists;
	bool file_exists(StringArg0)(in StringArg0 path) const
	{
		_GODOT_file_exists.bind("_File", "file_exists");
		return ptrcall!(bool)(_GODOT_file_exists, _godot_object, path);
	}
	package(godot) static GodotMethod!(int, String) _GODOT_get_modified_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modified_time") = _GODOT_get_modified_time;
	int get_modified_time(StringArg0)(in StringArg0 file) const
	{
		_GODOT_get_modified_time.bind("_File", "get_modified_time");
		return ptrcall!(int)(_GODOT_get_modified_time, _godot_object, file);
	}
}
