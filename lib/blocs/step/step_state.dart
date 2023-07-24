part of 'step_cubit.dart';

@freezed
class StepState with _$StepState {
  const factory StepState.initial() = _Initial;
  const factory StepState.loading() = _Loading;
  const factory StepState.loaded() = _Loaded;
  const factory StepState.error() = _Error;
}
