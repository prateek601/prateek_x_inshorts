part of 'bookmarks_bloc.dart';

@freezed
sealed class BookmarksState with _$BookmarksState {
  const factory BookmarksState({
    required List<Movie> movies,
    required Map<int, bool> bookmarkStatus,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _BookmarksState;
}
