import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unad_app/components/login_button.dart';
import 'package:unad_app/components/login_textfield.dart';
import 'package:unad_app/components/password_textfield.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                          "Restablecer Contraseña",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(height: 20),
                        Container(
                          width: 370,
                          child: Text(
                            "Por favor, introduzca su nueva contraseña",
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
                        PasswordTextField(
                            controller: passwordController,
                            hintText: "Nueva Contraseña",
                            eyeIcon: "assets/icons/vision.png"),
                        const SizedBox(height: 20),
                        PasswordTextField(
                            controller: passwordController,
                            hintText: "Otra vez",
                            eyeIcon: "assets/icons/vision.png"),
                        const SizedBox(height: 20),
                        LogInGenerlButton(
                            buttonText: "SIGUIENTE", onPressed: () {})
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
