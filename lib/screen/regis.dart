import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnitnow/screen/login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Image.asset('assets/images/regis.png',
                width: 250,),
                const SizedBox(height: 50),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 8,
                  child: Form(
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          cursorColor: const Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: "Email",
                            labelStyle: GoogleFonts.poppins(),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.email_outlined),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          textInputAction: TextInputAction.next,
                          cursorColor: const Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: "Password",
                            labelStyle: GoogleFonts.poppins(),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.lock_outline),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          textInputAction: TextInputAction.done,
                          cursorColor: const Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: "Retype Password",
                            labelStyle: GoogleFonts.poppins(),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.lock_outline),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: MediaQuery.of(context).size.height,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0XFF00AFB9),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Sign Up".toUpperCase(),
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            text: "Already have an Account ? ",
                            style: GoogleFonts.poppins(),
                            children: [
                              TextSpan(
                                text: 'Sign In',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const LoginScreen();
                                        },
                                      ),
                                    );
                                  },
                                style: const TextStyle(
                                  color: Color(0XFF00AFB9),
                                ),
                              ),
                            ],
                          ),
                        ),
      
                        // const Text(
                        //   "Don’t have an Account ? ",
                        //   style: TextStyle(
                        //     color: Color(0xFF6F35A5),
                        //   ),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) {
                        //           return const SignUpScreen();
                        //         },
                        //       ),
                        //     );
                        //   },
                        //   child: const Text(
                        //     "Sign Up",
                        //     style: TextStyle(
                        //       color: Color(0xFF6F35A5),
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
