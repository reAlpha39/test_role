import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'step_state.dart';
part 'step_cubit.freezed.dart';

@injectable
class StepCubit extends Cubit<StepState> {
  StepCubit() : super(const StepState.initial());
}
