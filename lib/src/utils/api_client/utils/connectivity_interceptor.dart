import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../api/model/http_api_exception.dart';

class ConnectivityInterceptor extends Interceptor {
  final Connectivity _connectivity;

  ConnectivityInterceptor() : _connectivity = Connectivity();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResults = await _connectivity.checkConnectivity();

    if (connectivityResults.contains(ConnectivityResult.none)) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const ConnectionException(
            message: 'No internet connection available',
          ),
          type: DioExceptionType.connectionError,
        ),
      );
    }

    handler.next(options);
  }
}
