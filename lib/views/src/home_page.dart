import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:test_role/blocs/blocs.dart';
import 'package:test_role/blocs/save_test_record/save_test_record_cubit.dart';
import 'package:test_role/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<StepQuestionCubit, StepQuestionState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () {
              if (context.read<StepQuestionCubit>().name.isEmpty) {
                InputNameDialog.open(context: context);
              }
              return;
            },
            result: (id) => context.read<SaveTestRecordCubit>().saveData(
                  resultId: context.read<StepQuestionCubit>().result,
                  name: context.read<StepQuestionCubit>().nameController.text,
                  phone: context.read<StepQuestionCubit>().phoneController.text,
                  prodi: context.read<StepQuestionCubit>().prodiController.text,
                ),
          ),
        ),
        BlocListener<SaveTestRecordCubit, SaveTestRecordState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => null,
            // loading: () => CustomLoadingOverlay.show(context),
            error: (_) => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                    'Oops, sedang terjadi kesalahan. Mohon coba beberapa saat lagi.'),
              ),
            ),
            success: () async {
              // await CustomLoadingOverlay.hide(context);
              ResultDialog.open(
                context: context,
                id: context.read<StepQuestionCubit>().result,
              );
              return;
            },
          ),
        ),
      ],
      child: const Scaffold(
        backgroundColor: Color(0xff3E4095),
        body: _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<StepQuestionCubit>();
    return Stack(
      children: [
        MultiHitStack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            SingleChildScrollView(
              controller: context.read<AnimateScrollCubit>().controller,
              physics: const ClampingScrollPhysics(),
              child: Stack(
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
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const StepQuestion(
                    positionY: 220,
                    positionX: -80,
                    qId: 1,
                  ),
                  const StepQuestion(
                    positionY: 220,
                    positionX: 80,
                    qId: 2,
                  ),
                  const StepQuestion(
                    positionY: 355,
                    positionX: 0,
                    qId: 3,
                  ),
                  const StepQuestion(
                    positionY: 485,
                    positionX: -80,
                    qId: 4,
                  ),
                  const StepQuestion(
                    positionY: 485,
                    positionX: 80,
                    qId: 5,
                  ),
                  const StepQuestion(
                    positionY: 617,
                    positionX: 0,
                    qId: 6,
                  ),
                  const StepQuestion(
                    positionY: 745,
                    positionX: -80,
                    qId: 7,
                  ),
                  const StepQuestion(
                    positionY: 745,
                    positionX: 80,
                    qId: 8,
                  ),
                  const StepQuestion(
                    positionY: 875,
                    positionX: 0,
                    qId: 9,
                  ),
                  const StepQuestion(
                    positionY: 1005,
                    positionX: -80,
                    qId: 10,
                  ),
                  const StepQuestion(
                    positionY: 1005,
                    positionX: 80,
                    qId: 11,
                  ),
                  const StepQuestion(
                    positionY: 1140,
                    positionX: 0,
                    qId: 12,
                  ),
                  const StepQuestion(
                    positionY: 1270,
                    positionX: -80,
                    qId: 13,
                  ),
                  const StepQuestion(
                    positionY: 1270,
                    positionX: 80,
                    qId: 14,
                  ),
                  const StepQuestion(
                    positionY: 1400,
                    positionX: 0,
                    qId: 15,
                  ),
                  const StepQuestion(
                    positionY: 1530,
                    positionX: -80,
                    qId: 16,
                  ),
                  const StepQuestion(
                    positionY: 1530,
                    positionX: 80,
                    qId: 17,
                  ),
                  const StepQuestion(
                    positionY: 1660,
                    positionX: 0,
                    qId: 18,
                  ),
                  const StepQuestion(
                    positionY: 1790,
                    positionX: -80,
                    qId: 19,
                  ),
                  const StepQuestion(
                    positionY: 1790,
                    positionX: 80,
                    qId: 20,
                  ),
                  BlocBuilder<StepQuestionCubit, StepQuestionState>(
                    builder: (context, state) {
                      if (cubit.isNotDif) {
                        return Positioned(
                          top: 1975,
                          left: MediaQuery.sizeOf(context).width / 2 - 50,
                          child: GestureDetector(
                            onTap: () =>
                                QuestionDialog.open(context: context, id: 21),
                            child: SvgPicture.asset(
                              'assets/icons/extra_step.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  BlocBuilder<StepQuestionCubit, StepQuestionState>(
                    builder: (context, state) {
                      bool isAllAnswered = false;
                      if (cubit.qaModels != null) {
                        isAllAnswered = cubit.qaModels!
                                .where((element) => element.answer != null)
                                .length ==
                            cubit.qaModels!.length;
                      }

                      if (isAllAnswered) {
                        return Positioned(
                          top: 2070,
                          left: MediaQuery.sizeOf(context).width / 2 - 75,
                          child: GestureDetector(
                            onTap: () => cubit.checkResult(context),
                            child: SvgPicture.asset(
                              'assets/icons/result_button.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
            IgnorePointer(
              child: Container(
                width: 394,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      const SizedBox(height: 4),
                      BlocBuilder<StepQuestionCubit, StepQuestionState>(
                        builder: (context, state) {
                          final cubit = context.read<StepQuestionCubit>();

                          double percent = 0;
                          if (cubit.qaModels != null) {
                            percent = cubit.qaModels!
                                    .where((element) => element.answer != null)
                                    .length /
                                cubit.qaModels!.length;
                          }

                          final double position = (290 * percent) - 25 < 10
                              ? 10
                              : (290 * percent) -
                                  25 +
                                  (2 * percent) +
                                  (30 * percent);
                          return Stack(
                            children: [
                              UnconstrainedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 44),
                                  child: LinearPercentIndicator(
                                    width: 350.0,
                                    lineHeight: 10.0,
                                    percent: percent,
                                    barRadius: const Radius.circular(100),
                                    backgroundColor:
                                        Colors.grey.withOpacity(.25),
                                    progressColor: const Color(0xFFFFB819),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: position,
                                child: Image.asset(
                                  'assets/icons/progress_step.png',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        BlocBuilder<SaveTestRecordCubit, SaveTestRecordState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => Container(
              height: double.infinity,
              color: Colors.black.withOpacity(.5),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
