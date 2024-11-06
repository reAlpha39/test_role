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

  saveData({String? name, String? phone}) async {
    if (isSuccess) {
      return emit(const _Success());
    }

    emit(const _Loading());

    final params = TestRoleEntity(
      name: name,
      noHp: phone,
      takeDate: DateTime.now(),
      image: "",
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
