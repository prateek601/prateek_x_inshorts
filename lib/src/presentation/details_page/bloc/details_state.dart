part of 'details_bloc.dart';

@freezed
sealed class DetailsState with _$DetailsState {
  const factory DetailsState({
    @Default(0) int someValue,
    @Default(DetailsProgressState.loading()) DetailsProgressState progressState,
  }) = _DetailsState;
}

@freezed
sealed class DetailsProgressState with _$DetailsProgressState {
  const factory DetailsProgressState.loading() = _Loading;
  const factory DetailsProgressState.loaded() = _Loaded;
  const factory DetailsProgressState.error({String? message}) = _Error;
}
