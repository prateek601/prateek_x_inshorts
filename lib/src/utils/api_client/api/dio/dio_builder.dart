import 'package:dio/dio.dart';

class DioBuilder {
  String? _baseUrl;
  final List<Interceptor> _interceptors = [];
  HttpClientAdapter? _clientAdapter;
  Duration _connectTimeout = const Duration(seconds: 30);
  Duration _receiveTimeout = const Duration(seconds: 30);
  Duration _sendTimeout = const Duration(seconds: 30);
  Map<String, dynamic> _headers = {};

  DioBuilder setBaseUrl(String baseUrl) {
    _baseUrl = baseUrl;
    return this;
  }

  DioBuilder addInterceptor(Interceptor interceptor) {
    _interceptors.add(interceptor);
    return this;
  }

  DioBuilder setClientAdapter(HttpClientAdapter adapter) {
    _clientAdapter = adapter;
    return this;
  }

  DioBuilder setConnectTimeout(Duration timeout) {
    _connectTimeout = timeout;
    return this;
  }

  DioBuilder setReceiveTimeout(Duration timeout) {
    _receiveTimeout = timeout;
    return this;
  }

  DioBuilder setSendTimeout(Duration timeout) {
    _sendTimeout = timeout;
    return this;
  }

  DioBuilder setHeaders(Map<String, dynamic> headers) {
    _headers = headers;
    return this;
  }

  DioBuilder addHeader(String key, String value) {
    _headers[key] = value;
    return this;
  }

  Dio build() {
    final dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl ?? '',
        connectTimeout: _connectTimeout,
        receiveTimeout: _receiveTimeout,
        sendTimeout: _sendTimeout,
        headers: _headers,
      ),
    );

    for (final interceptor in _interceptors) {
      dio.interceptors.add(interceptor);
    }

    if (_clientAdapter != null) {
      dio.httpClientAdapter = _clientAdapter!;
    }

    dio.options.validateStatus = (status) => status! < 500;

    return dio;
  }
}
