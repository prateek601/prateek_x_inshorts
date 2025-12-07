part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchNowPlayingMovies({@Default(1) int page}) =
      _FetchNowPlayingMovies;
  const factory HomeEvent.fetchTrendingMovies({
    @Default('day') String timeWindow,
    @Default(1) int page,
  }) = _FetchTrendingMovies;
  const factory HomeEvent.switchMovieType(MovieType movieType) =
      _SwitchMovieType;
}
