part of 'search_bloc.dart';

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String query,
    @Default(<Movie>[]) List<Movie> movies,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
    @Default(SearchProgressState.idle()) SearchProgressState progressState,
  }) = _SearchState;
}

@freezed
sealed class SearchProgressState with _$SearchProgressState {
  const factory SearchProgressState.idle() = _Idle;
  const factory SearchProgressState.loading() = _Loading;
  const factory SearchProgressState.loaded() = _Loaded;
  const factory SearchProgressState.error({String? message}) = _Error;
}
