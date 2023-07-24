import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'step_question_state.dart';
part 'step_question_cubit.freezed.dart';

@injectable
class StepQuestionCubit extends Cubit<StepQuestionState> {
  StepQuestionCubit() : super(const StepQuestionState.initial());

  List<bool> steps = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
}
