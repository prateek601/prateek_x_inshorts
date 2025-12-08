import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/movie_response.dart';
import '../../../domain/repository/movie_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._movieRepository) : super(const HomeState()) {
    on<_FetchNowPlayingMovies>(_fetchNowPlayingMovies);
    on<_FetchTrendingMovies>(_fetchTrendingMovies);
    on<_SwitchMovieType>(_switchMovieType);
  }

  final MovieRepository _movieRepository;

  FutureOr<void> _fetchNowPlayingMovies(
    _FetchNowPlayingMovies event,
    Emitter<HomeState> emit,
  ) async {
    final bool isInitialLoad = event.page == 1;
    final bool isLoadingMore = event.page > 1;

    // Set loading state
    if (isInitialLoad) {
      emit(
        state.copyWith(
          progressState: const HomeProgressState.loading(),
          movieType: const MovieType.nowPlaying(),
        ),
      );
    } else if (isLoadingMore) {
      emit(state.copyWith(isLoadingMore: true, isLoadMoreError: false));
    }

    // Fetch movies
    final Either<Exception, MovieResponse> result = await _movieRepository
        .getNowPlayingMovies(page: event.page);

    result.fold(
      (Exception error) {
        // Handle error - only show error state for initial load (page 1)
        // For page > 1, just stop loading without changing the screen state
        if (isInitialLoad) {
          emit(
            state.copyWith(
              progressState: HomeProgressState.error(message: error.toString()),
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
            progressState: const HomeProgressState.loaded(),
            movieType: const MovieType.nowPlaying(),
            isLoadMoreError: false,
          ),
        );
      },
    );
  }

  FutureOr<void> _fetchTrendingMovies(
    _FetchTrendingMovies event,
    Emitter<HomeState> emit,
  ) async {
    final bool isInitialLoad = event.page == 1;
    final bool isLoadingMore = event.page > 1;

    // Set loading state
    if (isInitialLoad) {
      emit(
        state.copyWith(
          progressState: const HomeProgressState.loading(),
          movieType: const MovieType.trending(),
        ),
      );
    } else if (isLoadingMore) {
      emit(state.copyWith(isLoadingMore: true));
    }

    // Fetch movies
    final Either<Exception, MovieResponse> result = await _movieRepository
        .getTrendingMovies(timeWindow: event.timeWindow, page: event.page);

    result.fold(
      (Exception error) {
        // Handle error - only show error state for initial load (page 1)
        // For page > 1, just stop loading without changing the screen state
        if (isInitialLoad) {
          emit(
            state.copyWith(
              progressState: HomeProgressState.error(message: error.toString()),
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
            progressState: const HomeProgressState.loaded(),
            movieType: const MovieType.trending(),
          ),
        );
      },
    );
  }

  FutureOr<void> _switchMovieType(
    _SwitchMovieType event,
    Emitter<HomeState> emit,
  ) async {
    // Reset state when switching movie type
    emit(
      state.copyWith(
        movies: <Movie>[],
        currentPage: 1,
        hasMore: false,
        isLoadingMore: false,
        movieType: event.movieType,
      ),
    );

    // Fetch movies based on selected type
    event.movieType.when(
      nowPlaying: () {
        add(const HomeEvent.fetchNowPlayingMovies());
      },
      trending: () {
        add(const HomeEvent.fetchTrendingMovies());
      },
    );
  }
}
