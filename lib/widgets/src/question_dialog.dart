import 'package:flutter/material.dart';

class QuestionDialog {
  static void open({required BuildContext context}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: 500,
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
                    const SizedBox(height: 60),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis nisl eget nunc aliquam aliquet. Donec quis nisl eget nunc aliquam aliquet.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Close'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: (MediaQuery.sizeOf(context).width / 2) - 125,
              child: Container(
                width: 250,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xff3E4095),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFFFFB819),
                    width: 10,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Pertanyaan 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
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
