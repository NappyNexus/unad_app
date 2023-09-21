import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unad_app/components/login_button.dart';
import 'package:unad_app/components/login_textfield.dart';
import 'package:unad_app/components/password_textfield.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF06483A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF06483A),
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).go("/"),
          child: const Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Icon(
              CupertinoIcons.arrow_left_square,
              size: 40,
            ),
          ),
        ),
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
                        //Crear cuenta
                        Text(
                          "Crear una cuenta",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(height: 20),

                        //user textfield
                        const LoginTextfield(
                          hintText: "Cédula o pasaporte",
                        ),
                        const SizedBox(height: 20),

                        //Numero de matricula textfield
                        const LoginTextfield(
                          hintText: "No. Matrícula",
                        ),
                        const SizedBox(height: 20),

                        //Numero de matricula textfield
                        const LoginTextfield(
                          hintText: "Correo institucional",
                        ),
                        const SizedBox(height: 20),

                        //password textfield
                        PasswordTextField(
                          eyeIcon: "assets/icons/vision.png",
                          controller: passwordController,
                          hintText: "Contraseña",
                        ),

                        const SizedBox(height: 20),

                        //sign in button
                        const LogInGenerlButton("REGISTRARME"),
                        const SizedBox(height: 60),

                        Text(
                          "Ya tienes una cuenta?",
                          style: GoogleFonts.inter(
                              fontSize: 16, color: const Color(0xffA1A1A1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //log in button
                        const LogInGenerlButton("INICAR SESION"),
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
