module godot.httpclient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.streampeer;
@GodotBaseClass struct HTTPClient
{
	static immutable string _GODOT_internal_name = "HTTPClient";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	bool opEquals(in HTTPClient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HTTPClient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HTTPClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HTTPClient");
		if(constructor is null) return typeof(this).init;
		return cast(HTTPClient)(constructor());
	}
	enum Status : int
	{
		STATUS_CONNECTED = 5,
		STATUS_CONNECTING = 3,
		STATUS_CANT_RESOLVE = 2,
		STATUS_DISCONNECTED = 0,
		STATUS_CONNECTION_ERROR = 8,
		STATUS_SSL_HANDSHAKE_ERROR = 9,
		STATUS_BODY = 7,
		STATUS_REQUESTING = 6,
		STATUS_RESOLVING = 1,
		STATUS_CANT_CONNECT = 4,
	}
	enum Method : int
	{
		METHOD_HEAD = 1,
		METHOD_OPTIONS = 5,
		METHOD_MAX = 8,
		METHOD_PUT = 3,
		METHOD_GET = 0,
		METHOD_TRACE = 6,
		METHOD_POST = 2,
		METHOD_CONNECT = 7,
		METHOD_DELETE = 4,
	}
	enum ResponseCode : int
	{
		RESPONSE_NOT_ACCEPTABLE = 406,
		RESPONSE_MOVED_PERMANENTLY = 301,
		RESPONSE_CONTINUE = 100,
		RESPONSE_BAD_GATEWAY = 502,
		RESPONSE_UNAUTHORIZED = 401,
		RESPONSE_SEE_OTHER = 303,
		RESPONSE_METHOD_NOT_ALLOWED = 405,
		RESPONSE_LOCKED = 423,
		RESPONSE_INTERNAL_SERVER_ERROR = 500,
		RESPONSE_NON_AUTHORITATIVE_INFORMATION = 203,
		RESPONSE_OK = 200,
		RESPONSE_REQUEST_URI_TOO_LONG = 414,
		RESPONSE_INSUFFICIENT_STORAGE = 507,
		RESPONSE_FOUND = 302,
		RESPONSE_CONFLICT = 409,
		RESPONSE_BAD_REQUEST = 400,
		RESPONSE_FORBIDDEN = 403,
		RESPONSE_PAYMENT_REQUIRED = 402,
		RESPONSE_HTTP_VERSION_NOT_SUPPORTED = 505,
		RESPONSE_REQUEST_ENTITY_TOO_LARGE = 413,
		RESPONSE_ACCEPTED = 202,
		RESPONSE_USE_PROXY = 305,
		RESPONSE_REQUEST_TIMEOUT = 408,
		RESPONSE_PRECONDITION_FAILED = 412,
		RESPONSE_SERVICE_UNAVAILABLE = 503,
		RESPONSE_PROXY_AUTHENTICATION_REQUIRED = 407,
		RESPONSE_GATEWAY_TIMEOUT = 504,
		RESPONSE_RESET_CONTENT = 205,
		RESPONSE_PARTIAL_CONTENT = 206,
		RESPONSE_EXPECTATION_FAILED = 417,
		RESPONSE_FAILED_DEPENDENCY = 424,
		RESPONSE_MULTIPLE_CHOICES = 300,
		RESPONSE_UNSUPPORTED_MEDIA_TYPE = 415,
		RESPONSE_UNPROCESSABLE_ENTITY = 422,
		RESPONSE_CREATED = 201,
		RESPONSE_MULTI_STATUS = 207,
		RESPONSE_UPGRADE_REQUIRED = 426,
		RESPONSE_NOT_EXTENDED = 510,
		RESPONSE_LENGTH_REQUIRED = 411,
		RESPONSE_NO_CONTENT = 204,
		RESPONSE_NOT_MODIFIED = 304,
		RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE = 416,
		RESPONSE_TEMPORARY_REDIRECT = 307,
		RESPONSE_PROCESSING = 102,
		RESPONSE_NOT_IMPLEMENTED = 501,
		RESPONSE_SWITCHING_PROTOCOLS = 101,
		RESPONSE_GONE = 410,
		RESPONSE_IM_USED = 226,
		RESPONSE_NOT_FOUND = 404,
	}
	enum int RESPONSE_NOT_ACCEPTABLE = 406;
	enum int RESPONSE_MOVED_PERMANENTLY = 301;
	enum int RESPONSE_CONTINUE = 100;
	enum int RESPONSE_BAD_GATEWAY = 502;
	enum int RESPONSE_UNAUTHORIZED = 401;
	enum int RESPONSE_SEE_OTHER = 303;
	enum int STATUS_DISCONNECTED = 0;
	enum int STATUS_CONNECTION_ERROR = 8;
	enum int METHOD_CONNECT = 7;
	enum int RESPONSE_LOCKED = 423;
	enum int RESPONSE_METHOD_NOT_ALLOWED = 405;
	enum int RESPONSE_INTERNAL_SERVER_ERROR = 500;
	enum int RESPONSE_NON_AUTHORITATIVE_INFORMATION = 203;
	enum int RESPONSE_OK = 200;
	enum int RESPONSE_REQUEST_URI_TOO_LONG = 414;
	enum int RESPONSE_INSUFFICIENT_STORAGE = 507;
	enum int RESPONSE_FOUND = 302;
	enum int METHOD_MAX = 8;
	enum int RESPONSE_CONFLICT = 409;
	enum int RESPONSE_BAD_REQUEST = 400;
	enum int RESPONSE_FORBIDDEN = 403;
	enum int RESPONSE_PAYMENT_REQUIRED = 402;
	enum int STATUS_REQUESTING = 6;
	enum int RESPONSE_REQUEST_ENTITY_TOO_LARGE = 413;
	enum int RESPONSE_ACCEPTED = 202;
	enum int STATUS_RESOLVING = 1;
	enum int RESPONSE_USE_PROXY = 305;
	enum int RESPONSE_HTTP_VERSION_NOT_SUPPORTED = 505;
	enum int RESPONSE_REQUEST_TIMEOUT = 408;
	enum int METHOD_OPTIONS = 5;
	enum int RESPONSE_SERVICE_UNAVAILABLE = 503;
	enum int RESPONSE_PRECONDITION_FAILED = 412;
	enum int METHOD_PUT = 3;
	enum int RESPONSE_PROXY_AUTHENTICATION_REQUIRED = 407;
	enum int METHOD_GET = 0;
	enum int METHOD_TRACE = 6;
	enum int STATUS_SSL_HANDSHAKE_ERROR = 9;
	enum int RESPONSE_GATEWAY_TIMEOUT = 504;
	enum int RESPONSE_RESET_CONTENT = 205;
	enum int RESPONSE_PARTIAL_CONTENT = 206;
	enum int RESPONSE_EXPECTATION_FAILED = 417;
	enum int RESPONSE_FAILED_DEPENDENCY = 424;
	enum int RESPONSE_MULTIPLE_CHOICES = 300;
	enum int RESPONSE_UNSUPPORTED_MEDIA_TYPE = 415;
	enum int METHOD_DELETE = 4;
	enum int RESPONSE_CREATED = 201;
	enum int RESPONSE_MULTI_STATUS = 207;
	enum int STATUS_CONNECTED = 5;
	enum int METHOD_HEAD = 1;
	enum int STATUS_CONNECTING = 3;
	enum int RESPONSE_LENGTH_REQUIRED = 411;
	enum int RESPONSE_UNPROCESSABLE_ENTITY = 422;
	enum int STATUS_CANT_RESOLVE = 2;
	enum int RESPONSE_NO_CONTENT = 204;
	enum int RESPONSE_NOT_MODIFIED = 304;
	enum int RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE = 416;
	enum int METHOD_POST = 2;
	enum int RESPONSE_TEMPORARY_REDIRECT = 307;
	enum int RESPONSE_UPGRADE_REQUIRED = 426;
	enum int RESPONSE_PROCESSING = 102;
	enum int STATUS_BODY = 7;
	enum int RESPONSE_NOT_IMPLEMENTED = 501;
	enum int RESPONSE_SWITCHING_PROTOCOLS = 101;
	enum int RESPONSE_GONE = 410;
	enum int RESPONSE_IM_USED = 226;
	enum int RESPONSE_NOT_FOUND = 404;
	enum int RESPONSE_NOT_EXTENDED = 510;
	enum int STATUS_CANT_CONNECT = 4;
	package(godot) static GodotMethod!(GodotError, String, int, bool, bool) _GODOT_connect_to_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_host") = _GODOT_connect_to_host;
	GodotError connect_to_host(StringArg0)(in StringArg0 host, in int port, in bool use_ssl = false, in bool verify_host = true)
	{
		_GODOT_connect_to_host.bind("HTTPClient", "connect_to_host");
		return ptrcall!(GodotError)(_GODOT_connect_to_host, _godot_object, host, port, use_ssl, verify_host);
	}
	package(godot) static GodotMethod!(void, StreamPeer) _GODOT_set_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_connection") = _GODOT_set_connection;
	void set_connection(in StreamPeer connection)
	{
		_GODOT_set_connection.bind("HTTPClient", "set_connection");
		ptrcall!(void)(_GODOT_set_connection, _godot_object, connection);
	}
	package(godot) static GodotMethod!(StreamPeer) _GODOT_get_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection") = _GODOT_get_connection;
	StreamPeer get_connection() const
	{
		_GODOT_get_connection.bind("HTTPClient", "get_connection");
		return ptrcall!(StreamPeer)(_GODOT_get_connection, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, int, String, PoolStringArray, PoolByteArray) _GODOT_request_raw;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_raw") = _GODOT_request_raw;
	GodotError request_raw(StringArg1)(in int method, in StringArg1 url, in PoolStringArray headers, in PoolByteArray _body)
	{
		_GODOT_request_raw.bind("HTTPClient", "request_raw");
		return ptrcall!(GodotError)(_GODOT_request_raw, _godot_object, method, url, headers, _body);
	}
	package(godot) static GodotMethod!(GodotError, int, String, PoolStringArray, String) _GODOT_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "request") = _GODOT_request;
	GodotError request(StringArg1, StringArg3)(in int method, in StringArg1 url, in PoolStringArray headers, in StringArg3 _body = "")
	{
		_GODOT_request.bind("HTTPClient", "request");
		return ptrcall!(GodotError)(_GODOT_request, _godot_object, method, url, headers, _body);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_send_body_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "send_body_text") = _GODOT_send_body_text;
	GodotError send_body_text(StringArg0)(in StringArg0 _body)
	{
		_GODOT_send_body_text.bind("HTTPClient", "send_body_text");
		return ptrcall!(GodotError)(_GODOT_send_body_text, _godot_object, _body);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_send_body_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "send_body_data") = _GODOT_send_body_data;
	GodotError send_body_data(in PoolByteArray _body)
	{
		_GODOT_send_body_data.bind("HTTPClient", "send_body_data");
		return ptrcall!(GodotError)(_GODOT_send_body_data, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void) _GODOT_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "close") = _GODOT_close;
	void close()
	{
		_GODOT_close.bind("HTTPClient", "close");
		ptrcall!(void)(_GODOT_close, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_response;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_response") = _GODOT_has_response;
	bool has_response() const
	{
		_GODOT_has_response.bind("HTTPClient", "has_response");
		return ptrcall!(bool)(_GODOT_has_response, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_response_chunked;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_response_chunked") = _GODOT_is_response_chunked;
	bool is_response_chunked() const
	{
		_GODOT_is_response_chunked.bind("HTTPClient", "is_response_chunked");
		return ptrcall!(bool)(_GODOT_is_response_chunked, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_response_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_response_code") = _GODOT_get_response_code;
	int get_response_code() const
	{
		_GODOT_get_response_code.bind("HTTPClient", "get_response_code");
		return ptrcall!(int)(_GODOT_get_response_code, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_response_headers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_response_headers") = _GODOT_get_response_headers;
	PoolStringArray get_response_headers()
	{
		_GODOT_get_response_headers.bind("HTTPClient", "get_response_headers");
		return ptrcall!(PoolStringArray)(_GODOT_get_response_headers, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_response_headers_as_dictionary;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_response_headers_as_dictionary") = _GODOT_get_response_headers_as_dictionary;
	Dictionary get_response_headers_as_dictionary()
	{
		_GODOT_get_response_headers_as_dictionary.bind("HTTPClient", "get_response_headers_as_dictionary");
		return ptrcall!(Dictionary)(_GODOT_get_response_headers_as_dictionary, _godot_object);
	}
	package(godot) static GodotMethod!(int) _GODOT_get_response_body_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_response_body_length") = _GODOT_get_response_body_length;
	int get_response_body_length() const
	{
		_GODOT_get_response_body_length.bind("HTTPClient", "get_response_body_length");
		return ptrcall!(int)(_GODOT_get_response_body_length, _godot_object);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_read_response_body_chunk;
	package(godot) alias _GODOT_methodBindInfo(string name : "read_response_body_chunk") = _GODOT_read_response_body_chunk;
	PoolByteArray read_response_body_chunk()
	{
		_GODOT_read_response_body_chunk.bind("HTTPClient", "read_response_body_chunk");
		return ptrcall!(PoolByteArray)(_GODOT_read_response_body_chunk, _godot_object);
	}
	package(godot) static GodotMethod!(void, int) _GODOT_set_read_chunk_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_read_chunk_size") = _GODOT_set_read_chunk_size;
	void set_read_chunk_size(in int bytes)
	{
		_GODOT_set_read_chunk_size.bind("HTTPClient", "set_read_chunk_size");
		ptrcall!(void)(_GODOT_set_read_chunk_size, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_blocking_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blocking_mode") = _GODOT_set_blocking_mode;
	void set_blocking_mode(in bool enabled)
	{
		_GODOT_set_blocking_mode.bind("HTTPClient", "set_blocking_mode");
		ptrcall!(void)(_GODOT_set_blocking_mode, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_blocking_mode_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_blocking_mode_enabled") = _GODOT_is_blocking_mode_enabled;
	bool is_blocking_mode_enabled() const
	{
		_GODOT_is_blocking_mode_enabled.bind("HTTPClient", "is_blocking_mode_enabled");
		return ptrcall!(bool)(_GODOT_is_blocking_mode_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(HTTPClient.Status) _GODOT_get_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_status") = _GODOT_get_status;
	HTTPClient.Status get_status() const
	{
		_GODOT_get_status.bind("HTTPClient", "get_status");
		return ptrcall!(HTTPClient.Status)(_GODOT_get_status, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_poll;
	package(godot) alias _GODOT_methodBindInfo(string name : "poll") = _GODOT_poll;
	GodotError poll()
	{
		_GODOT_poll.bind("HTTPClient", "poll");
		return ptrcall!(GodotError)(_GODOT_poll, _godot_object);
	}
	package(godot) static GodotMethod!(String, Dictionary) _GODOT_query_string_from_dict;
	package(godot) alias _GODOT_methodBindInfo(string name : "query_string_from_dict") = _GODOT_query_string_from_dict;
	String query_string_from_dict(in Dictionary fields)
	{
		_GODOT_query_string_from_dict.bind("HTTPClient", "query_string_from_dict");
		return ptrcall!(String)(_GODOT_query_string_from_dict, _godot_object, fields);
	}
}
