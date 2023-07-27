import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'animate_scroll_state.dart';
part 'animate_scroll_cubit.freezed.dart';

@injectable
class AnimateScrollCubit extends Cubit<AnimateScrollState> {
  AnimateScrollCubit() : super(const AnimateScrollState.initial());

  final ScrollController controller = ScrollController();

  @override
  close() {
    controller.dispose();
    return super.close();
  }

  void animateToIndex(int index) {
    controller.animateTo(
      (70 * index).toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
