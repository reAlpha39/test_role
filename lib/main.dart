import 'package:flutter/material.dart';
import 'package:test_role/views/views.dart';

import 'injection.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3E4095)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
