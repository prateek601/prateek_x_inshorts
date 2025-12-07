import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../data/models/movie_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3')
abstract class ApiClient {
  factory ApiClient(Dio dio, {required String baseUrl}) = _ApiClient;

  @GET('/movie/now_playing')
  Future<MovieResponse> getNowPlayingMovies({@Query('page') int page = 1});
}
