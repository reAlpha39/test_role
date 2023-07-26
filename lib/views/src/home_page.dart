import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_role/blocs/blocs.dart';
import 'package:test_role/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final stepQuestionCubit = context.read<StepQuestionCubit>();
    return Scaffold(
      backgroundColor: const Color(0xff3E4095),
      body: MultiHitStack(
        children: [
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: BlocBuilder<StepQuestionCubit, StepQuestionState>(
              builder: (context, state) {
                return Stack(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 20,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: SvgPicture.asset(
                          'assets/images/step_bg.svg',
                        ),
                      ),
                    ),
                    StepQuestion(
                      positionY: 220,
                      positionX: -80,
                      onTap: () => QuestionDialog.open(context: context, id: 1),
                      isClear: stepQuestionCubit.qaModels?[0].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 220,
                      positionX: 80,
                      onTap: () => QuestionDialog.open(context: context, id: 2),
                      isClear: stepQuestionCubit.qaModels?[1].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 355,
                      positionX: 0,
                      onTap: () => QuestionDialog.open(context: context, id: 3),
                      isClear: stepQuestionCubit.qaModels?[2].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 485,
                      positionX: 80,
                      onTap: () => QuestionDialog.open(context: context, id: 4),
                      isClear: stepQuestionCubit.qaModels?[3].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 485,
                      positionX: -80,
                      onTap: () => QuestionDialog.open(context: context, id: 5),
                      isClear: stepQuestionCubit.qaModels?[4].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 617,
                      positionX: 0,
                      onTap: () => QuestionDialog.open(context: context, id: 6),
                      isClear: stepQuestionCubit.qaModels?[5].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 745,
                      positionX: -80,
                      onTap: () => QuestionDialog.open(context: context, id: 7),
                      isClear: stepQuestionCubit.qaModels?[6].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 745,
                      positionX: 80,
                      onTap: () => QuestionDialog.open(context: context, id: 8),
                      isClear: stepQuestionCubit.qaModels?[7].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 875,
                      positionX: 0,
                      onTap: () => QuestionDialog.open(context: context, id: 9),
                      isClear: stepQuestionCubit.qaModels?[8].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1005,
                      positionX: -80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 10),
                      isClear: stepQuestionCubit.qaModels?[9].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1005,
                      positionX: 80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 11),
                      isClear: stepQuestionCubit.qaModels?[10].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1140,
                      positionX: 0,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 12),
                      isClear: stepQuestionCubit.qaModels?[11].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1270,
                      positionX: -80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 13),
                      isClear: stepQuestionCubit.qaModels?[12].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1270,
                      positionX: 80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 14),
                      isClear: stepQuestionCubit.qaModels?[13].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1400,
                      positionX: 0,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 15),
                      isClear: stepQuestionCubit.qaModels?[14].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1530,
                      positionX: -80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 16),
                      isClear: stepQuestionCubit.qaModels?[15].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1530,
                      positionX: 80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 17),
                      isClear: stepQuestionCubit.qaModels?[16].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1660,
                      positionX: 0,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 18),
                      isClear: stepQuestionCubit.qaModels?[17].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1790,
                      positionX: -80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 19),
                      isClear: stepQuestionCubit.qaModels?[18].answer == null
                          ? false
                          : true,
                    ),
                    StepQuestion(
                      positionY: 1790,
                      positionX: 80,
                      onTap: () =>
                          QuestionDialog.open(context: context, id: 20),
                      isClear: stepQuestionCubit.qaModels?[19].answer == null
                          ? false
                          : true,
                    ),
                  ],
                );
              },
            ),
          ),
          IgnorePointer(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff3E4095),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Perjalanan',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Yang Akan Mengetahui Siapa diri mu',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
