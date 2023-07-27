part of 'animate_scroll_cubit.dart';

@freezed
class AnimateScrollState with _$AnimateScrollState {
  const factory AnimateScrollState.initial() = _Initial;
  const factory AnimateScrollState.loading() = _Loading;
  const factory AnimateScrollState.error(String message) = _Error;
  const factory AnimateScrollState.finished() = _Finished;
}
