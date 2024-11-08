import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_role/blocs/blocs.dart';

class ResultDialog {
  static void open({
    required BuildContext context,
    required int id,
  }) {
    final cubit = context.read<StepQuestionCubit>();
    final shareCubit = context.read<ShareCubit>();
    showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: true,
      builder: (context) => Center(
        child: Material(
          type: MaterialType.transparency,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 32),
                      if (id == 1) ...[
                        RepaintBoundary(
                          key: shareCubit.globalKey,
                          child: Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              Image.asset(
                                'assets/images/hipster_card.png',
                                width: 400,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Text(
                                  'Congratulations!!\n${cubit.name}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bubblegumSans(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      if (id == 2) ...[
                        RepaintBoundary(
                          key: shareCubit.globalKey,
                          child: Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              Image.asset(
                                'assets/images/hustler_card.png',
                                width: 400,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Text(
                                  'Congratulations!!\n${cubit.name}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bubblegumSans(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      if (id == 3) ...[
                        RepaintBoundary(
                          key: shareCubit.globalKey,
                          child: Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              Image.asset(
                                'assets/images/hacker_card.png',
                                width: 400,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Text(
                                  'Congratulations!!\n${cubit.name}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bubblegumSans(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await shareCubit.downloadImage();
                              // Navigator.of(context).pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
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
                                'Download',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () async {
                              await shareCubit.shareImage();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
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
                                'Share',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xff3E4095),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFFFFB819),
                    width: 10,
                  ),
                ),
                child: const Text(
                  'Hasil',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void hide({required BuildContext context}) {
    if (ModalRoute.of(context)?.isCurrent != true) {
      Navigator.of(context).pop();
    }
  }
}
