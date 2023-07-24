import 'package:flutter/material.dart';

class StepQuestion extends StatelessWidget {
  const StepQuestion({
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
