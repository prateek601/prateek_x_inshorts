import 'package:fpdart/fpdart.dart';

import '../../data/models/movie_details.dart';
import '../../data/models/movie_response.dart';

abstract class MovieRepository {
  Future<Either<Exception, MovieResponse>> getNowPlayingMovies({int page = 1});
  Future<Either<Exception, MovieResponse>> getTrendingMovies({
    String timeWindow = 'day',
    int page = 1,
  });
  Future<Either<Exception, MovieDetails>> getMovieDetails({
    required int movieId,
    String language = 'en-US',
  });
}
