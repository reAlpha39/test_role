import 'package:flutter/material.dart';

class CustomLoadingOverlay {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: false,
      builder: (context) => PopScope(
        canPop: false,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  static Future<void> hide(BuildContext context) async {
    await Navigator.maybePop(context);
  }
}
