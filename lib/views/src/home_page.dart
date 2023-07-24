import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3E4095),
      body: SingleChildScrollView(
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
                ),
              ),
            ),

            Step(
              offsetDx: 1.2,
              offsetDy: 3.8,
              onTap: () {},
              isClear: false,
            ),
            Step(
              offsetDx: -1,
              offsetDy: 3.8,
              onTap: () {},
              isClear: false,
            ),
            Step(
              offsetDx: 1.2,
              offsetDy: 6,
              onTap: () {},
              isClear: false,
            ),
            Step(
              offsetDx: -1,
              offsetDy: 6,
              onTap: () {},
              isClear: false,
            ),
            Step(
              offsetDx: 0,
              offsetDy: 8.2,
              onTap: () {},
              isClear: false,
            ),
          ],
        ),
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
          child: Image.asset(
            isClear
                ? 'assets/icons/done_step.png'
                : 'assets/icons/locked_step.png',
            height: 60,
          ),
        ),
      ),
    );
  }
}
