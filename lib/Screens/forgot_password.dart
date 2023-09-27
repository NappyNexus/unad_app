import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unad_app/features/email_validation.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final usernameController = TextEditingController();

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
                          "Olvidaste tu Contraseña?",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          "Por favor introduzca su correo institucional",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: const Color(0xFFA1A1A1),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 370,
                          child: Text(
                            "Será enviado un código a su correo institucional para un rápido restablecimiento de contraseña",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Color(0xFFA1A1A1),
                              height: 1.4,
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // user textfield
                        EmailValidationForm(),
                        const SizedBox(height: 25),
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
