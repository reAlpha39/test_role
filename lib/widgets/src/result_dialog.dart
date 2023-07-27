import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultDialog {
  static void open({
    required BuildContext context,
    required int id,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (id == 1) ...[
                      Image.asset('assets/images/hipster_card.jpg'),
                    ],
                    if (id == 2) ...[
                      Image.asset('assets/images/hustler_card.jpg'),
                    ],
                    if (id == 3) ...[
                      Image.asset('assets/images/hacker_card.jpg'),
                    ],
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Share.shareXFiles(
                          [
                            if (id == 1) ...[
                              XFile('assets/images/hipster_card.jpg'),
                            ],
                            if (id == 2) ...[
                              XFile('assets/images/hustler_card.jpg'),
                            ],
                            if (id == 3) ...[
                              XFile('assets/images/hacker_card.jpg'),
                            ]
                          ],
                          subject: 'Share',
                          text: switch (id) {
                            1 => 'Hipster',
                            2 => 'Hustler',
                            _ => 'Hacker',
                          },
                        );
                        Navigator.of(context).pop();
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
                          'Share',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
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
    );
  }

  static void hide({required BuildContext context}) {
    if (ModalRoute.of(context)?.isCurrent != true) {
      Navigator.of(context).pop();
    }
  }
}
