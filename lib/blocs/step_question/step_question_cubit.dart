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

  loadQa() async {
    emit(const StepQuestionState.loading());
    final jsonText = await rootBundle.loadString('assets/question_answer.json');
    final data = jsonDecode(jsonText);
    qaModels = List<QaModel>.from(data['data'].map((x) => QaModel.fromJson(x)));
    emit(const StepQuestionState.loaded());
  }
}
