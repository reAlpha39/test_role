import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_role/models/qa_model/qa_model.dart';

part 'step_question_state.dart';
part 'step_question_cubit.freezed.dart';

@injectable
class StepQuestionCubit extends Cubit<StepQuestionState> {
  StepQuestionCubit() : super(const StepQuestionState.initial());

  List<QaModel>? qaModels;
  int selectedAnswer = -1;

  String name = '';

  bool isNotDif = false;
  String sameTypeA = '';
  String sameTypeB = '';

  int result = 0;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  close() async {
    nameController.dispose();
    phoneController.dispose();
    return super.close();
  }

  loadQa() async {
    emit(const StepQuestionState.loading());
    final jsonText = await rootBundle.loadString('assets/question_answer.json');
    final data = jsonDecode(jsonText);
    qaModels = List<QaModel>.from(data['data'].map((x) => QaModel.fromJson(x)));
    emit(const StepQuestionState.loaded());
  }

  saveName() {
    emit(const StepQuestionState.loading());
    name = nameController.text;
    emit(const StepQuestionState.loaded());
  }

  selectAnswer(int index) {
    emit(const StepQuestionState.loading());
    selectedAnswer = index;
    emit(const StepQuestionState.loaded());
  }

  resetAnswer() {
    emit(const StepQuestionState.loading());
    selectedAnswer = -1;
    emit(const StepQuestionState.loaded());
  }

  saveAnswer({required int qId}) {
    emit(const StepQuestionState.loading());
    qaModels![qId] = qaModels![qId].copyWith(
      answer: selectedAnswer.toString(),
    );

    resetAnswer();

    if (qId == 19) {
      checkPoint();
    }

    emit(const StepQuestionState.loaded());
  }

  checkPoint() {
    emit(const StepQuestionState.loading());
    int typeA = 0;
    int typeB = 0;
    int typeC = 0;

    for (QaModel data in qaModels!) {
      switch (data.answer) {
        case '1':
          typeA++;
          break;
        case '2':
          typeB++;
        case '3':
          typeC++;
        default:
      }
    }

    // print(
    //   'typeA: ' +
    //       typeA.toString() +
    //       ', typeB: ' +
    //       typeB.toString() +
    //       ', typeC: ' +
    //       typeC.toString(),
    // );

    if (typeA == typeB && typeA > typeC) {
      isNotDif = true;
      sameTypeA = '1';
      sameTypeB = '2';
    }
    if (typeA == typeC && typeA > typeB) {
      isNotDif = true;
      sameTypeA = '1';
      sameTypeB = '3';
    }
    if (typeB == typeC && typeB > typeA) {
      isNotDif = true;
      sameTypeA = '2';
      sameTypeB = '3';
    }

    if (!isNotDif) {
      qaModels!.last = qaModels!.last.copyWith(answer: '1');
    }

    emit(const StepQuestionState.loaded());
  }

  void checkResult(BuildContext context) {
    int typeA = 0;
    int typeB = 0;
    int typeC = 0;

    final temp = qaModels!;

    if (!isNotDif && result == 0) {
      // remove last question if no total answer the same
      temp.removeAt(20);
    }

    for (QaModel data in temp) {
      switch (data.answer) {
        case '1':
          typeA++;
          break;
        case '2':
          typeB++;
        case '3':
          typeC++;
        default:
      }
    }

    if (typeA > typeB && typeA > typeC) {
      result = 1;
      emit(_Result(result));
      return;
    }

    if (typeB > typeA && typeB > typeC) {
      result = 2;
      emit(_Result(result));
      return;
    }

    if (typeC > typeA && typeC > typeB) {
      result = 3;
      emit(_Result(result));
      return;
    }
  }
}
