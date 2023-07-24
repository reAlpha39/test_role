import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_role/blocs/blocs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final stepQuestionCubit = context.read<StepQuestionCubit>();
    return Scaffold(
      backgroundColor: const Color(0xff3E4095),
      body: Stack(
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
                    Step(
                      offsetDx: 1.2,
                      offsetDy: 3.9,
                      onTap: () {},
                      isClear: stepQuestionCubit.steps[0],
                    ),
                    Step(
                      offsetDx: -1,
                      offsetDy: 3.9,
                      onTap: () {},
                      isClear: stepQuestionCubit.steps[1],
                    ),
                    Step(
                      offsetDx: 0,
                      offsetDy: 6.1,
                      onTap: () {},
                      isClear: false,
                    ),
                    Step(
                      offsetDx: 1.2,
                      offsetDy: 8.3,
                      onTap: () {},
                      isClear: false,
                    ),
                    Step(
                      offsetDx: -1,
                      offsetDy: 8.3,
                      onTap: () {},
                      isClear: false,
                    ),
                    Step(
                      offsetDx: 0,
                      offsetDy: 10.5,
                      onTap: () {},
                      isClear: false,
                    ),
                    Step(
                      offsetDx: 1.2,
                      offsetDy: 12.5,
                      onTap: () {},
                      isClear: false,
                    ),
                    Step(
                      offsetDx: -1,
                      offsetDy: 12.5,
                      onTap: () {},
                      isClear: false,
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}

class Step extends StatelessWidget {
  const Step({
    super.key,
    required this.offsetDx,
    required this.offsetDy,
    this.onTap,
    required this.isClear,
  });

  final double offsetDx;
  final double offsetDy;
  final Function()? onTap;
  final bool isClear;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionalTranslation(
        translation: Offset(offsetDx, offsetDy),
        child: GestureDetector(
          onTap: isClear ? null : onTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Image.asset(
              //   'assets/images/bubble.gif',
              //   height: 100,
              //   width: 100,
              // ),
              Image.asset(
                isClear
                    ? 'assets/icons/done_step.png'
                    : 'assets/icons/locked_step.png',
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}