import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/movie_response.dart';
import '../../../domain/repository/bookmarks_repository.dart';

part 'bookmarks_bloc.freezed.dart';
part 'bookmarks_event.dart';
part 'bookmarks_state.dart';

class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc(this._bookmarksRepository)
    : super(
        const BookmarksState(movies: <Movie>[], bookmarkStatus: <int, bool>{}),
      ) {
    on<LoadBookmarks>(_onLoadBookmarks);
    on<AddBookmark>(_onAddBookmark);
    on<RemoveBookmark>(_onRemoveBookmark);
    on<CheckBookmarkStatus>(_onCheckBookmarkStatus);
  }

  final BookmarksRepository _bookmarksRepository;

  Future<void> _onLoadBookmarks(
    LoadBookmarks event,
    Emitter<BookmarksState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final Either<Exception, List<Movie>> result =
        await _bookmarksRepository.getBookmarks();
    result.fold(
      (Exception error) => emit(
        state.copyWith(isLoading: false, errorMessage: error.toString()),
      ),
      (List<Movie> movies) {
        final Map<int, bool> statusMap = <int, bool>{};
        for (final Movie movie in movies) {
          statusMap[movie.id] = true;
        }
        emit(
          state.copyWith(
            movies: movies,
            bookmarkStatus: statusMap,
            isLoading: false,
          ),
        );
      },
    );
  }

  Future<void> _onAddBookmark(
    AddBookmark event,
    Emitter<BookmarksState> emit,
  ) async {
    final Either<Exception, void> result = await _bookmarksRepository
        .addBookmark(event.movie);
    result.fold(
      (Exception error) => emit(state.copyWith(errorMessage: error.toString())),
      (_) {
        final List<Movie> updatedMovies = <Movie>[...state.movies, event.movie];
        final Map<int, bool> updatedStatus = Map<int, bool>.from(
          state.bookmarkStatus,
        );
        updatedStatus[event.movie.id] = true;
        emit(
          state.copyWith(movies: updatedMovies, bookmarkStatus: updatedStatus),
        );
      },
    );
  }

  Future<void> _onRemoveBookmark(
    RemoveBookmark event,
    Emitter<BookmarksState> emit,
  ) async {
    final Either<Exception, void> result = await _bookmarksRepository
        .removeBookmark(event.movieId);
    result.fold(
      (Exception error) => emit(state.copyWith(errorMessage: error.toString())),
      (_) {
        final List<Movie> updatedMovies =
            state.movies
                .where((Movie movie) => movie.id != event.movieId)
                .toList();
        final Map<int, bool> updatedStatus = Map<int, bool>.from(
          state.bookmarkStatus,
        );
        updatedStatus[event.movieId] = false;
        emit(
          state.copyWith(movies: updatedMovies, bookmarkStatus: updatedStatus),
        );
      },
    );
  }

  Future<void> _onCheckBookmarkStatus(
    CheckBookmarkStatus event,
    Emitter<BookmarksState> emit,
  ) async {
    final Either<Exception, bool> result = await _bookmarksRepository
        .isBookmarked(event.movieId);
    result.fold(
      (Exception error) => emit(state.copyWith(errorMessage: error.toString())),
      (bool isBookmarked) {
        final Map<int, bool> updatedStatus = Map<int, bool>.from(
          state.bookmarkStatus,
        );
        updatedStatus[event.movieId] = isBookmarked;
        emit(state.copyWith(bookmarkStatus: updatedStatus));
      },
    );
  }
}
