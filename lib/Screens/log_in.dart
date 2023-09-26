import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unad_app/components/password_textfield.dart';
import 'package:unad_app/components/login_button.dart';
import 'package:unad_app/components/login_textfield.dart';
//import 'package:go_router/go_router.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LogInState();
  }
}

class _LogInState extends State<LogIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF06483A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF06483A),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          //logo
          Image.asset(
            "assets/logo-light-official.png",
            width: 300,
          ),
          const SizedBox(height: 50),

          //Login box
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 30,
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        //login
                        Text(
                          "Log in",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(height: 30),

                        //user textfield
                        const LoginTextfield(
                          hintText: "Cédula o pasaporte",
                        ),
                        const SizedBox(height: 25),

                        //password textfield
                        PasswordTextField(
                          eyeIcon: "assets/icons/vision.png",
                          controller: passwordController,
                          hintText: "Contraseña",
                        ),

                        const SizedBox(height: 20),

                        //log in button
                        LogInGenerlButton(
                          buttonText: "INICAR SESION",
                          onPressed: () => context.go("/"),
                        ),
                        const SizedBox(height: 20),

                        //sign in button
                        LogInGenerlButton(
                          buttonText: "REGISTRARME",
                          onPressed: () => context.go("/Sign_up"),
                        ),
                        const SizedBox(height: 20),

                        //forgot password
                        GestureDetector(
                          onTap: () =>
                              GoRouter.of(context).go("/forgot_password"),
                          child: Text(
                            "Olvidé mi contraseña",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              color: const Color(0xFF06483A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //contact info
                  const Flexible(
                    flex: 2,
                    child: Text("SOPORTE UNAD (809) 674 8407"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
