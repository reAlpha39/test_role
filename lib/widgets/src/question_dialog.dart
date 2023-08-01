import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_role/blocs/blocs.dart';

class QuestionDialog {
  static void open({
    required BuildContext context,
    required int id,
    bool extra = false,
    bool isPreview = false,
  }) {
    showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: true,
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
                child: _buildBody(
                  context: context,
                  id: id,
                  extra: extra,
                  isPreview: isPreview,
                ),
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

  static _buildBody({
    required BuildContext context,
    required int id,
    bool extra = false,
    bool isPreview = false,
  }) {
    final cubit = context.read<StepQuestionCubit>();
    if (isPreview) {
      final answer = cubit.qaModels![id - 1].answer ?? '';
      cubit.selectAnswer(int.parse(answer));
    }
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
        if (cubit.isNotDif)
          ...List.generate(
            cubit.qaModels?[id - 1].answers?.length ?? 0,
            (index) {
              final answer =
                  cubit.qaModels![id - 1].answers![index].split('_')[0];

              if (answer == cubit.sameTypeB || answer == cubit.sameTypeA) {
                return BlocBuilder<StepQuestionCubit, StepQuestionState>(
                  builder: (context, state) {
                    final answer = cubit.qaModels![id - 1].answers![index];
                    return GestureDetector(
                      onTap: () => isPreview
                          ? null
                          : cubit.selectAnswer(int.parse(answer.split('_')[0])),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 32,
                        ),
                        decoration: BoxDecoration(
                          color: cubit.selectedAnswer ==
                                  int.parse(answer.split('_')[0])
                              ? Colors.white
                              : const Color(0xff3E4095),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            answer.split('_')[1],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: cubit.selectedAnswer ==
                                      int.parse(answer.split('_')[0])
                                  ? const Color(0xff3E4095)
                                  : Colors.white,
                            ).copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          )
        else
          ...List.generate(
            cubit.qaModels?[id - 1].answers?.length ?? 0,
            (index) => BlocBuilder<StepQuestionCubit, StepQuestionState>(
              builder: (context, state) {
                final answer = cubit.qaModels![id - 1].answers![index];
                return GestureDetector(
                  onTap: () => isPreview
                      ? null
                      : cubit.selectAnswer(int.parse(answer.split('_')[0])),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 32,
                    ),
                    decoration: BoxDecoration(
                      color: cubit.selectedAnswer ==
                              int.parse(answer.split('_')[0])
                          ? Colors.white
                          : const Color(0xff3E4095),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        answer.split('_')[1],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: cubit.selectedAnswer ==
                                  int.parse(answer.split('_')[0])
                              ? const Color(0xff3E4095)
                              : Colors.white,
                        ).copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        const SizedBox(height: 20),
        if (isPreview) ...[
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 32,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff3E4095),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFFFB819),
                  width: 10,
                ),
              ),
              child: const Text(
                'Tutup',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ] else ...[
          GestureDetector(
            onTap: () {
              if (cubit.selectedAnswer == -1) {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Pilih jawaban terlebih dahulu'),
                  ),
                );
              } else {
                cubit.saveAnswer(qId: id - 1);
                Navigator.of(context).pop();
                if (id < 3) return;
                if (id % 3 == 0 || id == 19) {
                  context.read<AnimateScrollCubit>().animateToIndex((id));
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 32,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff3E4095),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFFFB819),
                  width: 10,
                ),
              ),
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
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
