part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchNowPlayingMovies({@Default(1) int page}) =
      _FetchNowPlayingMovies;
}
