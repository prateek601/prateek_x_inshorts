import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../data/models/movie_details.dart';
import '../../../../data/models/movie_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3')
abstract class ApiClient {
  factory ApiClient(Dio dio, {required String baseUrl}) = _ApiClient;

  @GET('/movie/now_playing')
  Future<MovieResponse> getNowPlayingMovies({@Query('page') int page = 1});

  @GET('/trending/movie/{time_window}')
  Future<MovieResponse> getTrendingMovies({
    @Path('time_window') required String timeWindow,
    @Query('page') int page = 1,
  });

  @GET('/movie/{movie_id}')
  Future<MovieDetails> getMovieDetails({
    @Path('movie_id') required int movieId,
    @Query('language') String language = 'en-US',
  });
}
