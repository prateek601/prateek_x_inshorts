part of 'search_bloc.dart';

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState({
    @Default(0) int someValue,
    @Default(SearchProgressState.loading()) SearchProgressState progressState,
  }) = _SearchState;
}

@freezed
sealed class SearchProgressState with _$SearchProgressState {
  const factory SearchProgressState.loading() = _Loading;
  const factory SearchProgressState.loaded() = _Loaded;
  const factory SearchProgressState.error({String? message}) = _Error;
}
