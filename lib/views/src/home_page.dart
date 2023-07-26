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
                      positionY: 200,
                      positionX: 5,
                      onTap: () => QuestionDialog.open(context: context, id: 1),
                      isClear: true,
                    ),
                    StepQuestion(
                      positionY: 300,
                      positionX: -1,
                      onTap: () => print('x'),
                      isClear: false,
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
