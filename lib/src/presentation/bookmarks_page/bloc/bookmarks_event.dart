part of 'bookmarks_bloc.dart';

@freezed
sealed class BookmarksEvent with _$BookmarksEvent {
  const factory BookmarksEvent.loadBookmarks() = LoadBookmarks;
  const factory BookmarksEvent.addBookmark(Movie movie) = AddBookmark;
  const factory BookmarksEvent.removeBookmark(int movieId) = RemoveBookmark;
  const factory BookmarksEvent.checkBookmarkStatus(int movieId) =
      CheckBookmarkStatus;
}
