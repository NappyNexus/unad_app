import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextfield extends StatelessWidget {
  const LoginTextfield(
      {super.key, required this.controller, required this.hintText});

  final String hintText;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 420,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFF545f71),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              scrollPadding: const EdgeInsets.only(bottom: 60),
              controller: controller, // Use the current state of text obscuring
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.375,
                  letterSpacing: -0.32,
                  color: const Color(0xff9aa5b6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
