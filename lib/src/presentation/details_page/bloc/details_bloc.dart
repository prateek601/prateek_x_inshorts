import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/movie_repository.dart';
import '../../../data/models/movie_details.dart';

part 'details_state.dart';
part 'details_event.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(this._movieRepository) : super(const DetailsState()) {
    on<_FetchDetails>(_fetchDetails);
  }

  final MovieRepository _movieRepository;

  FutureOr<void> _fetchDetails(
    _FetchDetails event,
    Emitter<DetailsState> emit,
  ) async {
    emit(state.copyWith(progressState: const DetailsProgressState.loading()));

    final Either<Exception, MovieDetails> result = await _movieRepository
        .getMovieDetails(movieId: event.movieId);

    result.fold(
      (Exception error) {
        emit(
          state.copyWith(
            progressState: DetailsProgressState.error(message: error.toString()),
          ),
        );
      },
      (MovieDetails movieDetails) {
        emit(
          state.copyWith(
            movieDetails: movieDetails,
            progressState: const DetailsProgressState.loaded(),
          ),
        );
      },
    );
  }
}
