import 'package:fpdart/fpdart.dart';

import '../../data/models/movie_response.dart';

/// Abstract interface for bookmarks repository
abstract class BookmarksRepository {
  /// Get all bookmarked movies
  Future<Either<Exception, List<Movie>>> getBookmarks();

  /// Add a movie to bookmarks
  Future<Either<Exception, void>> addBookmark(Movie movie);

  /// Remove a movie from bookmarks
  Future<Either<Exception, void>> removeBookmark(int movieId);

  /// Check if a movie is bookmarked
  Future<Either<Exception, bool>> isBookmarked(int movieId);
}

