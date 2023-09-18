//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LogInTextField extends StatefulWidget {
  LogInTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.initiallyObscure = true,
    required this.eyeIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  bool initiallyObscure;
  final String eyeIcon;

  @override
  State<LogInTextField> createState() => _LogInTextFieldState();

  // Public method to toggle the obscureText state
  void toggleObscureText() {
    _LogInTextFieldState.toggleObscureText();
  }

  // Public property to set the obscureText state
  set isObscureText(bool value) {
    _LogInTextFieldState.obscureText = value;
  }
}

class _LogInTextFieldState extends State<LogInTextField> {
  static bool obscureText = true; // Store the current state of text obscuring

  @override
  void initState() {
    super.initState();
    obscureText = widget.initiallyObscure;
  }

  // Static method to toggle the obscureText state
  static void toggleObscureText() {
    obscureText = !obscureText;
  }

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
              scrollPadding: EdgeInsets.only(bottom: 60),
              controller: widget.controller,
              obscureText:
                  obscureText, // Use the current state of text obscuring
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.375,
                  letterSpacing: -0.32,
                  color: const Color(0xff9aa5b6),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      toggleObscureText(); // Toggle the visibility state
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      obscureText
                          ? widget.eyeIcon
                          : 'assets/icons/hide.png', // Use a different icon for showing/hiding password
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// TextField(
//       controller: controller,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//           enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.black),
//           ),
//           hintText: hintText,
//           hintStyle: GoogleFonts.poppins()),
//     );