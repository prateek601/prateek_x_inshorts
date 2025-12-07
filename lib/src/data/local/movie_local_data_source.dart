import 'package:hive_flutter/hive_flutter.dart';

import '../models/movie_details.dart';
import '../models/movie_response.dart';
import '../../utils/storage/storage.dart';

/// Local data source for caching movie data
class MovieLocalDataSource {
  MovieLocalDataSource();

  // Cache keys
  static const String _nowPlayingKey = 'now_playing';
  static const String _trendingKey = 'trending';
  static const String _movieDetailsPrefix = 'movie_details_';
  static const String _searchPrefix = 'search_';

  Future<Box<MovieResponse>> get _movieResponseBox async =>
      await HiveStorage.openBox<MovieResponse>(StorageBoxes.movieResponses);

  Future<Box<MovieDetails>> get _movieDetailsBox async =>
      await HiveStorage.openBox<MovieDetails>(StorageBoxes.movieDetails);

  /// Cache now playing movies
  Future<void> cacheNowPlayingMovies(
    MovieResponse response,
    int page,
  ) async {
    final Box<MovieResponse> box = await _movieResponseBox;
    await box.put('$_nowPlayingKey$page', response);
  }

  /// Get cached now playing movies
  Future<MovieResponse?> getCachedNowPlayingMovies(int page) async {
    final Box<MovieResponse> box = await _movieResponseBox;
    return box.get('$_nowPlayingKey$page');
  }

  /// Cache trending movies
  Future<void> cacheTrendingMovies(
    MovieResponse response,
    String timeWindow,
    int page,
  ) async {
    final Box<MovieResponse> box = await _movieResponseBox;
    await box.put('$_trendingKey${timeWindow}_$page', response);
  }

  /// Get cached trending movies
  Future<MovieResponse?> getCachedTrendingMovies(
    String timeWindow,
    int page,
  ) async {
    final Box<MovieResponse> box = await _movieResponseBox;
    return box.get('$_trendingKey${timeWindow}_$page');
  }

  /// Cache movie details
  Future<void> cacheMovieDetails(MovieDetails details) async {
    final Box<MovieDetails> box = await _movieDetailsBox;
    await box.put('$_movieDetailsPrefix${details.id}', details);
  }

  /// Get cached movie details
  Future<MovieDetails?> getCachedMovieDetails(int movieId) async {
    final Box<MovieDetails> box = await _movieDetailsBox;
    return box.get('$_movieDetailsPrefix$movieId');
  }

  /// Cache search results
  Future<void> cacheSearchResults(
    MovieResponse response,
    String query,
    int page,
  ) async {
    final Box<MovieResponse> box = await _movieResponseBox;
    final String normalizedQuery = query.toLowerCase().trim();
    await box.put('$_searchPrefix${normalizedQuery}_$page', response);
  }

  /// Get cached search results
  Future<MovieResponse?> getCachedSearchResults(String query, int page) async {
    final Box<MovieResponse> box = await _movieResponseBox;
    final String normalizedQuery = query.toLowerCase().trim();
    return box.get('$_searchPrefix${normalizedQuery}_$page');
  }

  /// Clear all cached data
  Future<void> clearAllCache() async {
    await HiveStorage.clearBox(StorageBoxes.movieResponses);
    await HiveStorage.clearBox(StorageBoxes.movieDetails);
  }

  /// Clear search cache only
  Future<void> clearSearchCache() async {
    final Box<MovieResponse> box = await _movieResponseBox;
    final List<String> keysToDelete = <String>[];
    for (final String key in box.keys) {
      if (key.toString().startsWith(_searchPrefix)) {
        keysToDelete.add(key.toString());
      }
    }
    for (final String key in keysToDelete) {
      await box.delete(key);
    }
  }
}

