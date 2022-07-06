import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnitnow/screen/regis.dart';
import 'package:learnitnow/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                const SizedBox(height: 75),
                Image.asset(
                  'assets/images/login.png',
                  width: 250,
                ),
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
                        TextFormField(
                          controller: usernameController,
                          onSaved: (String? val){
                            usernameController.text = val!;
                          },
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.white,
                          autofocus: false,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: "Email",
                            labelStyle: GoogleFonts.poppins(),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(1),
                              child: Icon(Icons.email_outlined),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: TextFormField(
                            controller: passwordController,
                            onSaved: (String? val){
                              passwordController.text = val!;
                            },
                            textInputAction: TextInputAction.done,
                            obscureText: true,
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
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: MediaQuery.of(context).size.height,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0XFF00899F),
                            ),
                            onPressed: () {
                              authController.loginUser();
                            },
                            child: Text(
                              "Sign In".toUpperCase(),
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            text: "Don’t have an Account ? ",
                            style: GoogleFonts.poppins(),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const SignUpScreen();
                                        },
                                      ),
                                    );
                                  },
                                style: const TextStyle(
                                  color: Color(0XFF00899F),
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
