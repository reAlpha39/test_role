import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_role/blocs/blocs.dart';

class InputNameDialog {
  static void open({
    required BuildContext context,
  }) {
    final cubit = context.read<StepQuestionCubit>();
    showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: true,
      builder: (context) => Center(
        child: Padding(
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
            child: Material(
              color: const Color(0xff3E4095),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Nama Panggilan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller:
                        context.read<StepQuestionCubit>().nameController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan nama panggilan...',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller:
                        context.read<StepQuestionCubit>().phoneController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan nomer telepon...',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      if (cubit.nameController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Nama tidak boleh kosong'),
                          ),
                        );
                        return;
                      }
                      if (cubit.nameController.text.length >= 15) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Nama tidak boleh lebih dari 15 huruf'),
                          ),
                        );
                        return;
                      }
                      cubit.saveName();
                      return Navigator.of(context).pop();
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
                        'Simpan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
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
