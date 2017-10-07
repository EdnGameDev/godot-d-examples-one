module godot.httprequest;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.node;
import godot.httpclient;
@GodotBaseClass struct HTTPRequest
{
	static immutable string _GODOT_internal_name = "HTTPRequest";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in HTTPRequest other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HTTPRequest opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HTTPRequest _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HTTPRequest");
		if(constructor is null) return typeof(this).init;
		return cast(HTTPRequest)(constructor());
	}
	enum Result : int
	{
		RESULT_CHUNKED_BODY_SIZE_MISMATCH = 1,
		RESULT_CANT_RESOLVE = 3,
		RESULT_DOWNLOAD_FILE_WRITE_ERROR = 10,
		RESULT_REDIRECT_LIMIT_REACHED = 11,
		RESULT_SSL_HANDSHAKE_ERROR = 5,
		RESULT_REQUEST_FAILED = 8,
		RESULT_CONNECTION_ERROR = 4,
		RESULT_NO_RESPONSE = 6,
		RESULT_SUCCESS = 0,
		RESULT_CANT_CONNECT = 2,
		RESULT_DOWNLOAD_FILE_CANT_OPEN = 9,
		RESULT_BODY_SIZE_LIMIT_EXCEEDED = 7,
	}
	enum int RESULT_CHUNKED_BODY_SIZE_MISMATCH = 1;
	enum int RESULT_CANT_RESOLVE = 3;
	enum int RESULT_DOWNLOAD_FILE_WRITE_ERROR = 10;
	enum int RESULT_REDIRECT_LIMIT_REACHED = 11;
	enum int RESULT_SSL_HANDSHAKE_ERROR = 5;
	enum int RESULT_REQUEST_FAILED = 8;
	enum int RESULT_CONNECTION_ERROR = 4;
	enum int RESULT_NO_RESPONSE = 6;
	enum int RESULT_SUCCESS = 0;
	enum int RESULT_CANT_CONNECT = 2;
	enum int RESULT_DOWNLOAD_FILE_CANT_OPEN = 9;
	enum int RESULT_BODY_SIZE_LIMIT_EXCEEDED = 7;
	package(godot) static GodotMethod!(GodotError, String, PoolStringArray, bool, int, String) _GODOT_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "request") = _GODOT_request;
	GodotError request(StringArg0, StringArg4)(in StringArg0 url, in PoolStringArray custom_headers = PoolStringArray.empty, in bool ssl_validate_domain = true, in int method = 0, in StringArg4 request_data = "")
	{
		_GODOT_request.bind("HTTPRequest", "request");
		return ptrcall!(GodotError)(_GODOT_request, _godot_object, url, custom_headers, ssl_validate_domain, method, request_data);
	}
	package(godot) static GodotMethod!(void) _GODOT_cancel_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "cancel_request") = _GODOT_cancel_request;
	void cancel_request()
	{
		_GODOT_cancel_request.bind("HTTPRequest", "cancel_request");
		ptrcall!(void)(_GODOT_cancel_request, _godot_object);
	}
	package(godot) static GodotMethod!(HTTPClient.Status) _GODOT_get_http_client_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_http_client_status") = _GODOT_get_http_client_status;
	HTTPClient.Status get_http_client_status() const
	{
		_GODOT_get_http_client_status.bind("HTTPRequest", "get_http_client_status");
		return ptrcall!(HTTPClient.Status)(_GODOT_get_http_client_status, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_threads;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_threads") = _GODOT_set_use_threads;
	void set_use_threads(in bool enable)
	{
		_GODOT_set_use_threads.bind("HTTPRequest", "set_use_threads");
		ptrcall!(void)(_GODOT_set_use_threads, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_threads;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_threads") = _GODOT_is_using_threads;
	bool is_using_threads() const
	{
		_GODOT_is_using_threads.bind("HTTPRequest", "is_using_threads");
		return ptrcall!(bool)(_GODOT_is_using_threads, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_body_size_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_body_size_limit") = _GODOT_set_body_size_limit;
	void set_body_size_limit(in int bytes)
	{
		_GODOT_set_body_size_limit.bind("HTTPRequest", "set_body_size_limit");
		ptrcall!(void)(_GODOT_set_body_size_limit, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_body_size_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_body_size_limit") = _GODOT_get_body_size_limit;
	int get_body_size_limit() const
	{
		_GODOT_get_body_size_limit.bind("HTTPRequest", "get_body_size_limit");
		return ptrcall!(int)(_GODOT_get_body_size_limit, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_max_redirects;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_redirects") = _GODOT_set_max_redirects;
	void set_max_redirects(in int amount)
	{
		_GODOT_set_max_redirects.bind("HTTPRequest", "set_max_redirects");
		ptrcall!(void)(_GODOT_set_max_redirects, _godot_object, amount);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_max_redirects;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_redirects") = _GODOT_get_max_redirects;
	int get_max_redirects() const
	{
		_GODOT_get_max_redirects.bind("HTTPRequest", "get_max_redirects");
		return ptrcall!(int)(_GODOT_get_max_redirects, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_download_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_download_file") = _GODOT_set_download_file;
	void set_download_file(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_download_file.bind("HTTPRequest", "set_download_file");
		ptrcall!(void)(_GODOT_set_download_file, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_download_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_download_file") = _GODOT_get_download_file;
	String get_download_file() const
	{
		_GODOT_get_download_file.bind("HTTPRequest", "get_download_file");
		return ptrcall!(String)(_GODOT_get_download_file, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_downloaded_bytes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_downloaded_bytes") = _GODOT_get_downloaded_bytes;
	int get_downloaded_bytes() const
	{
		_GODOT_get_downloaded_bytes.bind("HTTPRequest", "get_downloaded_bytes");
		return ptrcall!(int)(_GODOT_get_downloaded_bytes, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_body_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_body_size") = _GODOT_get_body_size;
	int get_body_size() const
	{
		_GODOT_get_body_size.bind("HTTPRequest", "get_body_size");
		return ptrcall!(int)(_GODOT_get_body_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__redirect_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "_redirect_request") = _GODOT__redirect_request;
	void _redirect_request(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_redirect_request");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, int, int, PoolStringArray, PoolByteArray) _GODOT__request_done;
	package(godot) alias _GODOT_methodBindInfo(string name : "_request_done") = _GODOT__request_done;
	void _request_done(in int arg0, in int arg1, in PoolStringArray arg2, in PoolByteArray arg3)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_request_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
