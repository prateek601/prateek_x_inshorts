import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../data/models/movie_response.dart';
import '../../utils/api_client/api/dio/api_client.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Exception, MovieResponse>> getNowPlayingMovies({
    int page = 1,
  }) async {
    try {
      final MovieResponse response = await _apiClient.getNowPlayingMovies(
        page: page,
      );
      return Right(response);
    } on DioException catch (e) {
      return Left(Exception(e.message ?? 'Network error occurred'));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
