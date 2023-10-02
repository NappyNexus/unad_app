import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unad_app/Screens/forgot_password.dart';
import 'package:unad_app/Screens/log_in.dart';
import 'package:unad_app/Screens/Sign_up.dart';
import 'package:unad_app/Screens/new_password.dart';
import 'package:unad_app/Screens/reset_password_code_screen.dart';

void main() {
  runApp(const MyApp());
}

//Navigation with go_router
final GoRouter _router = GoRouter(
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: "home",
      builder: (BuildContext context, GoRouterState state) {
        return const LogIn();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Sign_up',
          name: "SignUpScreen",
          builder: (BuildContext context, GoRouterState state) {
            return const SignUp();
          },
        ),
        GoRoute(
          path: 'forgot_password',
          name: "ForgotPasswordScreen",
          builder: (BuildContext context, GoRouterState state) {
            return const ForgotPasswordScreen();
          },
        ),
        GoRoute(
          path: 'reset_password_code_screen',
          name: "CodeScreenPR",
          builder: (BuildContext context, GoRouterState state) {
            return const CodeScreenPR();
          },
        ),
        GoRoute(
          path: 'new_password',
          name: "NewPasswordScreen",
          builder: (BuildContext context, GoRouterState state) {
            return const NewPasswordScreen();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      // home: ForgotPasswordScreen(),
    );
  }
}
