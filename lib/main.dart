import 'package:flutter/material.dart';
import 'package:unad_app/Screens/log_in.dart';
import 'package:unad_app/Screens/Sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
