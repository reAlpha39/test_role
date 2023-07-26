import 'dart:convert';

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

  bool isNotDif = false;
  String sameTypeA = '';
  String sameTypeB = '';

  loadQa() async {
    emit(const StepQuestionState.loading());
    final jsonText = await rootBundle.loadString('assets/question_answer.json');
    final data = jsonDecode(jsonText);
    qaModels = List<QaModel>.from(data['data'].map((x) => QaModel.fromJson(x)));
    emit(const StepQuestionState.loaded());
  }

  selectAnswer(int index) {
    emit(const StepQuestionState.loading());
    selectedAnswer = index;
    emit(const StepQuestionState.loaded());
  }

  _resetAnswer() {
    emit(const StepQuestionState.loading());
    selectedAnswer = -1;
    emit(const StepQuestionState.loaded());
  }

  saveAnswer({required int qId}) {
    emit(const StepQuestionState.loading());
    qaModels![qId] = qaModels![qId].copyWith(
      answer: selectedAnswer.toString(),
    );

    _resetAnswer();

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

    if (typeA == typeB) {
      isNotDif = true;
      sameTypeA = '1';
      sameTypeB = '2';
    }
    if (typeA == typeC) {
      isNotDif = true;
      sameTypeA = '1';
      sameTypeB = '3';
    }
    if (typeB == typeC) {
      isNotDif = true;
      sameTypeA = '2';
      sameTypeB = '3';
    }
    emit(const StepQuestionState.loaded());
  }

  void checkResult() {
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

    if (typeA > typeB && typeA > typeC) {
      print('A');
      return;
    }

    if (typeB > typeA && typeB > typeC) {
      print('B');
      return;
    }

    if (typeC > typeA && typeC > typeB) {
      print('C');
      return;
    }
  }
}
