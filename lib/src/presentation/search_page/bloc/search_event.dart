part of 'search_bloc.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchQueryChanged(String query) = _SearchQueryChanged;
  const factory SearchEvent.searchMovies({
    required String query,
    @Default(1) int page,
  }) = _SearchMovies;
}
