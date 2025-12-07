part of 'details_bloc.dart';

@freezed
sealed class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.fetchDetails({required int movieId}) = _FetchDetails;
}
