import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInGenerlButton extends StatelessWidget {
  const LogInGenerlButton(
      {super.key, required this.buttonText, required this.onPressed});

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
      child: Text(buttonText),
    );
  }
}
