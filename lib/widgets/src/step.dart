import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_role/blocs/blocs.dart';
import 'package:test_role/widgets/widgets.dart';

class StepQuestion extends StatelessWidget {
  const StepQuestion({
    super.key,
    required this.positionY,
    required this.positionX,
    required this.qId,
  });

  final double positionY;
  final double positionX;
  final int qId;

  bool clickable(StepQuestionCubit cubit) {
    bool isClickable = false;

    if (qId == 1) {
      isClickable = true;
    } else if (cubit.qaModels?[qId - 2].answer != null) {
      isClickable = true;
    }
    if (cubit.qaModels?[qId - 1].answer != null) {
      isClickable = false;
    }

    return isClickable;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<StepQuestionCubit>();

    const double size = 74;
    final halfWidth = (MediaQuery.sizeOf(context).width / 2) - (size / 2);

    return BlocBuilder<StepQuestionCubit, StepQuestionState>(
      builder: (context, state) {
        bool isClear = false;
        bool isClickable = false;
        try {
          isClear = cubit.qaModels?[qId - 1].answer == null ? false : true;
          isClickable = clickable(cubit);
        } catch (e) {
          return const SizedBox();
        }
        return Positioned(
          top: positionY,
          left: halfWidth + (positionX),
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: isClickable
                ? () => QuestionDialog.open(context: context, id: qId)
                : null,
            child: SizedBox(
              height: size,
              width: size,
              child: Image.asset(
                isClickable
                    ? 'assets/icons/current_step.png'
                    : isClear
                        ? 'assets/icons/done_step.png'
                        : 'assets/icons/locked_step.png',
                height: size,
              ),
            ),
          ),
        );
      },
    );
  }
}
