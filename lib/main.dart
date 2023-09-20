import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unad_app/Screens/log_in.dart';
import 'package:unad_app/Screens/Sign_up.dart';

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
      // home: SignUp(),
    );
  }
}
