import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../data/local/movie_local_data_source.dart';
import '../../data/models/movie_details.dart';
import '../../data/models/movie_response.dart';
import '../../utils/api_client/api/dio/api_client.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._apiClient, this._localDataSource);

  final ApiClient _apiClient;
  final MovieLocalDataSource _localDataSource;

  @override
  Future<Either<Exception, MovieResponse>> getNowPlayingMovies({
    int page = 1,
  }) async {
    try {
      // Try to fetch from API
      final MovieResponse response = await _apiClient.getNowPlayingMovies(
        page: page,
      );
      // Cache the response
      await _localDataSource.cacheNowPlayingMovies(response, page);
      return Right(response);
    } on DioException catch (e) {
      // On network error, try to get from cache
      final MovieResponse? cachedResponse = await _localDataSource
          .getCachedNowPlayingMovies(page);
      if (cachedResponse != null) {
        return Right(cachedResponse);
      }
      return Left(Exception(e.message ?? 'Network error occurred'));
    } catch (e) {
      // On other errors, try cache
      final MovieResponse? cachedResponse = await _localDataSource
          .getCachedNowPlayingMovies(page);
      if (cachedResponse != null) {
        return Right(cachedResponse);
      }
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, MovieResponse>> getTrendingMovies({
    String timeWindow = 'day',
    int page = 1,
  }) async {
    try {
      // Try to fetch from API
      final MovieResponse response = await _apiClient.getTrendingMovies(
        timeWindow: timeWindow,
        page: page,
      );
      // Cache the response
      await _localDataSource.cacheTrendingMovies(response, timeWindow, page);
      return Right(response);
    } on DioException catch (e) {
      // On network error, try to get from cache
      final MovieResponse? cachedResponse = await _localDataSource
          .getCachedTrendingMovies(timeWindow, page);
      if (cachedResponse != null) {
        return Right(cachedResponse);
      }
      return Left(Exception(e.message ?? 'Network error occurred'));
    } catch (e) {
      // On other errors, try cache
      final MovieResponse? cachedResponse = await _localDataSource
          .getCachedTrendingMovies(timeWindow, page);
      if (cachedResponse != null) {
        return Right(cachedResponse);
      }
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, MovieDetails>> getMovieDetails({
    required int movieId,
    String language = 'en-US',
  }) async {
    try {
      // Try to fetch from API
      final MovieDetails response = await _apiClient.getMovieDetails(
        movieId: movieId,
        language: language,
      );
      // Cache the response
      await _localDataSource.cacheMovieDetails(response);
      return Right(response);
    } on DioException catch (e) {
      // On network error, try to get from cache
      final MovieDetails? cachedDetails = await _localDataSource
          .getCachedMovieDetails(movieId);
      if (cachedDetails != null) {
        return Right(cachedDetails);
      }
      return Left(Exception(e.message ?? 'Network error occurred'));
    } catch (e) {
      // On other errors, try cache
      final MovieDetails? cachedDetails = await _localDataSource
          .getCachedMovieDetails(movieId);
      if (cachedDetails != null) {
        return Right(cachedDetails);
      }
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, MovieResponse>> searchMovies({
    required String query,
    int page = 1,
  }) async {
    try {
      // Try to fetch from API
      final MovieResponse response = await _apiClient.searchMovies(
        query: query,
        page: page,
      );
      // Cache the response
      await _localDataSource.cacheSearchResults(response, query, page);
      return Right(response);
    } on DioException catch (e) {
      // On network error, try to get from cache
      final MovieResponse? cachedResponse = await _localDataSource
          .getCachedSearchResults(query, page);
      if (cachedResponse != null) {
        return Right(cachedResponse);
      }
      return Left(Exception(e.message ?? 'Network error occurred'));
    } catch (e) {
      // On other errors, try cache
      final MovieResponse? cachedResponse = await _localDataSource
          .getCachedSearchResults(query, page);
      if (cachedResponse != null) {
        return Right(cachedResponse);
      }
      return Left(Exception(e.toString()));
    }
  }
}
