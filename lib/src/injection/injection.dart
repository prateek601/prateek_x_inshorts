import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../domain/repository/movie_repository.dart';
import '../domain/repository/movie_repository_impl.dart';
import '../presentation/home_page/bloc/home_bloc.dart';
import '../utils/api_client/api/dio/api_client.dart';
import '../utils/api_client/api/dio/dio_builder.dart';
import '../utils/api_client/utils/connectivity_interceptor.dart';
import '../utils/api_client/utils/logging_interceptor.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  // Dio
  getIt.registerLazySingleton<Dio>(() {
    return DioBuilder()
        .setBaseUrl('https://api.themoviedb.org/3')
        .setConnectTimeout(const Duration(seconds: 30))
        .setReceiveTimeout(const Duration(seconds: 30))
        .setSendTimeout(const Duration(seconds: 30))
        .addHeader('Content-Type', 'application/json')
        .addHeader('Accept', 'application/json')
        .addHeader(
          'Authorization',
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhOTA5ODA0NTZjOTdmOWUzMDg1Y2E0ZTdkZGM4N2QwMiIsIm5iZiI6MTY2MjE5NjQxNC4wOTQsInN1YiI6IjYzMTMxYWJlYmExMzFiMDA3OWIyODdhOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.l_tr_9lcZjw0AIBpJ1ifx0rHfJjC5VsVkD_KMWkngqg',
        )
        .addInterceptor(ConnectivityInterceptor())
        .addInterceptor(const LoggingInterceptor())
        .build();
  });

  // ApiClient (Retrofit)
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(getIt<Dio>(), baseUrl: 'https://api.themoviedb.org/3'),
  );

  // Repository
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(getIt<ApiClient>()),
  );

  // Blocs
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt<MovieRepository>()));
}
