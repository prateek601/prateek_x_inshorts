import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/movie_response.dart';
import '../../../domain/repository/movie_repository.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._movieRepository) : super(const SearchState()) {
    on<_SearchQueryChanged>(_onSearchQueryChanged);
    on<_SearchMovies>(_onSearchMovies);
  }

  final MovieRepository _movieRepository;
  Timer? _debounceTimer;

  FutureOr<void> _onSearchQueryChanged(
    _SearchQueryChanged event,
    Emitter<SearchState> emit,
  ) {
    emit(state.copyWith(query: event.query));

    // Cancel previous timer
    _debounceTimer?.cancel();

    // If query is empty, reset state
    if (event.query.isEmpty) {
      emit(
        state.copyWith(
          movies: <Movie>[],
          currentPage: 1,
          hasMore: false,
          progressState: const SearchProgressState.idle(),
        ),
      );
      return Future<void>.value();
    }

    // Debounce: wait 500ms after user stops typing
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      add(SearchEvent.searchMovies(query: event.query));
    });
  }

  FutureOr<void> _onSearchMovies(
    _SearchMovies event,
    Emitter<SearchState> emit,
  ) async {
    final bool isInitialLoad = event.page == 1;
    final bool isLoadingMore = event.page > 1;

    // Set loading state
    if (isInitialLoad) {
      emit(
        state.copyWith(
          progressState: const SearchProgressState.loading(),
          query: event.query,
        ),
      );
    } else if (isLoadingMore) {
      emit(state.copyWith(isLoadingMore: true, isLoadMoreError: false));
    }

    // Search movies
    final Either<Exception, MovieResponse> result = await _movieRepository
        .searchMovies(query: event.query, page: event.page);

    result.fold(
      (Exception error) {
        // Handle error - only show error state for initial load (page 1)
        // For page > 1, just stop loading without changing the screen state
        if (isInitialLoad) {
          emit(
            state.copyWith(
              progressState: SearchProgressState.error(
                message: error.toString(),
              ),
              isLoadingMore: false,
            ),
          );
        } else {
          // For loading more, just stop the loading indicator
          emit(state.copyWith(isLoadingMore: false, isLoadMoreError: true));
        }
      },
      (MovieResponse movieResponse) {
        // Handle success
        final List<Movie> updatedMovies =
            isInitialLoad
                ? movieResponse.results
                : <Movie>[...state.movies, ...movieResponse.results];

        final bool hasMore = movieResponse.page < movieResponse.totalPages;

        emit(
          state.copyWith(
            movies: updatedMovies,
            currentPage: movieResponse.page,
            hasMore: hasMore,
            isLoadingMore: false,
            isLoadMoreError: false,
            progressState: const SearchProgressState.loaded(),
            query: event.query,
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
