import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegiterButton extends StatelessWidget {
  const RegiterButton(this.buttonText, {super.key});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go("/Sign_up"),
      child: Text(buttonText),
      style: TextButton.styleFrom(
        minimumSize: const Size(200, 50),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xfffab61a),
        textStyle: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.375,
          letterSpacing: -0.32,
          color: const Color(0xffffffff),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
