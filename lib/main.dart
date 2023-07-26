import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_role/blocs/blocs.dart';
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
    return BlocProvider(
      create: (context) => getIt<StepQuestionCubit>()..loadQa(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3E4095)),
          useMaterial3: true,
        ).copyWith(
          textTheme: GoogleFonts.mochiyPopOneTextTheme(),
        ),
        home: const HomePage(),
      ),
    );
  }
}
