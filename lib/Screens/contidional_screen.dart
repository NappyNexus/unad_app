import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:unad_app/Screens/forgot_password.dart';

class ConditionalForgotPasswordScreen extends StatefulWidget {
  const ConditionalForgotPasswordScreen({super.key});

  @override
  State<ConditionalForgotPasswordScreen> createState() =>
      _ConditionalForgotPasswordScreenState();
}

class _ConditionalForgotPasswordScreenState
    extends State<ConditionalForgotPasswordScreen> {
  Widget activeScreen = const ForgotPasswordScreen();

  void switchScreen() {
    setState(() {
      activeScreen = const ConditionalForgotPasswordScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}
