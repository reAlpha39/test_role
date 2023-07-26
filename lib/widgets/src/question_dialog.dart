import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_role/blocs/blocs.dart';
import 'package:test_role/widgets/src/inner_shadow.dart';

class QuestionDialog {
  static void open({required BuildContext context, required int id}) {
    showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 36,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff3E4095),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFFFFB819),
                    width: 10,
                  ),
                ),
                child: _buildBody(context: context, id: id),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xff3E4095),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xFFFFB819),
                  width: 10,
                ),
              ),
              child: Text(
                'Pertanyaan $id',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static _buildBody({required BuildContext context, required int id}) {
    final cubit = context.read<StepQuestionCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 48),
        Text(
          cubit.qaModels?[id - 1].question ?? '-',
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        ...List.generate(
          cubit.qaModels?[id - 1].answers?.length ?? 0,
          (index) => BlocBuilder<StepQuestionCubit, StepQuestionState>(
            builder: (context, state) {
              final answer = cubit.qaModels![id - 1].answers![index];
              return GestureDetector(
                onTap: () =>
                    cubit.selectAnswer(int.parse(answer.split('_')[0])),
                child: InnerShadow(
                  blur: 10,
                  color: Colors.black26,
                  offset: const Offset(5, 5),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 32,
                    ),
                    decoration: BoxDecoration(
                      color: cubit.selectedAnswer ==
                              int.parse(answer.split('_')[0])
                          ? const Color(0xFFFFB819)
                          : const Color(0xff3E4095),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      answer.split('_')[1],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  static void hide({required BuildContext context}) {
    if (ModalRoute.of(context)?.isCurrent != true) {
      Navigator.of(context).pop();
    }
  }
}
