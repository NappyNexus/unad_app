import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailValidationForm extends StatefulWidget {
  @override
  _EmailValidationFormState createState() => _EmailValidationFormState();
}

class _EmailValidationFormState extends State<EmailValidationForm> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF545f71),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF545f71),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Correo Institucional',
                    labelStyle: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.375,
                      letterSpacing: -0.32,
                      color: const Color(0xff9aa5b6),
                    )),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email address.';
                  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 25),
            //ConfirmationAlert(),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Email is valid, perform further actions.
                  // You can send it to a server or use it as needed.
                  // String enteredEmail = _emailController.text;
                  // print('Valid email: $enteredEmail');
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Image.asset(
                        "assets/icons/check.png",
                        height: 150,
                      ),
                      content: Text(
                        'Enviado',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 34,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      // actions: <Widget>[
                      //   TextButton(
                      //     onPressed: () => Navigator.pop(context, 'OK'),
                      //     child: const Text('OK'),
                      //   ),
                      // ],
                    ),
                  );
                  Future.delayed(
                    Duration(seconds: 2),
                    () {
                      // <-- Delay here
                      setState(
                        () {
                          GoRouter.of(context).go(
                              '/reset_password_code_screen'); // <-- Code run after delay
                        },
                      );
                    },
                  );
                }
              },
              style: TextButton.styleFrom(
                minimumSize: const Size(200, 50),
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xfffab61a),
                textStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.375,
                  letterSpacing: -0.32,
                  color: const Color(0xffffffff),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text('SIGUIENTE'),
            ),
          ],
        ),
      ),
    );
  }
}
