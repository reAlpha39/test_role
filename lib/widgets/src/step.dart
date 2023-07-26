import 'package:flutter/material.dart';

class StepQuestion extends StatelessWidget {
  const StepQuestion({
    super.key,
    required this.positionY,
    required this.positionX,
    this.onTap,
    required this.isClear,
  });

  final double positionY;
  final double positionX;
  final Function()? onTap;
  final bool isClear;

  @override
  Widget build(BuildContext context) {
    final double size = 74;
    final halfWidth = (MediaQuery.sizeOf(context).width / 2) - (size / 2);
    return Positioned(
      top: positionY,
      left: halfWidth + (positionX),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: SizedBox(
          height: size,
          width: size,
          child: Image.asset(
            isClear
                ? 'assets/icons/done_step.png'
                : 'assets/icons/locked_step.png',
            height: size,
          ),
        ),
      ),
    );
  }
}
