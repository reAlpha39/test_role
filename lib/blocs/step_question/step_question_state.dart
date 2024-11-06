part of 'step_question_cubit.dart';

@freezed
class StepQuestionState with _$StepQuestionState {
  const factory StepQuestionState.initial() = _Initial;
  const factory StepQuestionState.loading() = _Loading;
  const factory StepQuestionState.loaded() = _Loaded;
  const factory StepQuestionState.result(int id) = _Result;
  const factory StepQuestionState.error() = _Error;
}
