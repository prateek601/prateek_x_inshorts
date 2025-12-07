import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/movie_response.dart';
import '../../utils/storage/storage.dart';
import 'bookmarks_repository.dart';

/// Implementation of BookmarksRepository using Hive
class BookmarksRepositoryImpl implements BookmarksRepository {
  BookmarksRepositoryImpl();

  Future<Box<Movie>> get _box async =>
      await HiveStorage.openBox<Movie>(StorageBoxes.bookmarks);

  @override
  Future<Either<Exception, List<Movie>>> getBookmarks() async {
    try {
      final Box<Movie> box = await _box;
      return Right(box.values.toList());
    } catch (e) {
      return Left(Exception('Failed to get bookmarks: $e'));
    }
  }

  @override
  Future<Either<Exception, void>> addBookmark(Movie movie) async {
    try {
      final Box<Movie> box = await _box;
      await box.put(movie.id, movie);
      return const Right(null);
    } catch (e) {
      return Left(Exception('Failed to add bookmark: $e'));
    }
  }

  @override
  Future<Either<Exception, void>> removeBookmark(int movieId) async {
    try {
      final Box<Movie> box = await _box;
      await box.delete(movieId);
      return const Right(null);
    } catch (e) {
      return Left(Exception('Failed to remove bookmark: $e'));
    }
  }

  @override
  Future<Either<Exception, bool>> isBookmarked(int movieId) async {
    try {
      final Box<Movie> box = await _box;
      return Right(box.containsKey(movieId));
    } catch (e) {
      return Left(Exception('Failed to check bookmark status: $e'));
    }
  }
}
