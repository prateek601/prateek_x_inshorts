import 'dart:developer';
import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  final bool logRequests;
  final bool logResponses;
  final bool logErrors;

  const LoggingInterceptor({
    this.logRequests = true,
    this.logResponses = true,
    this.logErrors = true,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (logRequests) {
      log('🚀 [REQUEST] ${options.method} ${options.uri}');
      if (options.headers.isNotEmpty) {
        log('📋 Headers: ${options.headers}');
      }
      if (options.data != null) {
        log('📦 Data: ${options.data}');
      }
      if (options.queryParameters.isNotEmpty) {
        log('🔍 Query Parameters: ${options.queryParameters}');
      }
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (logResponses) {
      log('✅ [RESPONSE] ${response.statusCode} ${response.requestOptions.uri}');
      log('📨 Response Data: ${response.data}');
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (logErrors) {
      log(
        '❌ [ERROR] ${err.response?.statusCode ?? 'NO CODE'} ${err.requestOptions.uri}',
      );
      log('💥 Error: ${err.message}');
      if (err.response?.data != null) {
        log('📨 Error Response: ${err.response?.data}');
      }
    }
    handler.next(err);
  }
}
