part of 'save_test_record_cubit.dart';

@freezed
class SaveTestRecordState with _$SaveTestRecordState {
  const factory SaveTestRecordState.initial() = _Initial;
  const factory SaveTestRecordState.loading() = _Loading;
  const factory SaveTestRecordState.success() = _Success;
  const factory SaveTestRecordState.error(AppException error) = _Error;
}
