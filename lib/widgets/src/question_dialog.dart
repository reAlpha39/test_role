import 'package:flutter/material.dart';

class QuestionDialog {
  static void open({required BuildContext context}) {
    print('v');
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.8,
          child: Card(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Question',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis nisl eget nunc aliquam aliquet. Donec quis nisl eget nunc aliquam aliquet.',
                  textAlign: TextAlign.center,
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
      ),
    );
  }

  static void hide({required BuildContext context}) {
    if (ModalRoute.of(context)?.isCurrent != true) {
      Navigator.of(context).pop();
    }
  }
}
