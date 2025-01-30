import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_role/domain/domain.dart';
import 'package:test_role/helper/helper.dart';

part 'save_test_record_state.dart';
part 'save_test_record_cubit.freezed.dart';

@injectable
class SaveTestRecordCubit extends Cubit<SaveTestRecordState> {
  final InsertTestRoleUseCase _insertTestRoleUseCase;

  bool isSuccess = false;

  SaveTestRecordCubit(
    this._insertTestRoleUseCase,
  ) : super(const SaveTestRecordState.initial());

  saveData({
    required int resultId,
    String? name,
    String? phone,
    String? prodi,
  }) async {
    emit(const _Loading());

    if (isSuccess) {
      await Future.delayed(const Duration(milliseconds: 100));
      return emit(const _Success());
    }

    final params = TestRoleEntity(
      name: name,
      noHp: phone,
      prodi: prodi,
      takeDate: DateTime.now(),
      image: "",
      resultId: resultId,
    );
    final result = await _insertTestRoleUseCase.call(params);
    result.fold(
      (l) => emit(_Error(l)),
      (r) {
        isSuccess = true;
        emit(const _Success());
      },
    );
  }
}
