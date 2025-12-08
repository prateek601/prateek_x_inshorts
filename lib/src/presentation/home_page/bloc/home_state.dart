part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<Movie>[]) List<Movie> movies,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isLoadMoreError,
    @Default(HomeProgressState.loading()) HomeProgressState progressState,
    @Default(MovieType.nowPlaying()) MovieType movieType,
  }) = _HomeState;
}

@freezed
sealed class MovieType with _$MovieType {
  const factory MovieType.nowPlaying() = _NowPlaying;
  const factory MovieType.trending() = _Trending;
}

@freezed
sealed class HomeProgressState with _$HomeProgressState {
  const factory HomeProgressState.loading() = _Loading;
  const factory HomeProgressState.loaded() = _Loaded;
  const factory HomeProgressState.error({String? message}) = _Error;
}
