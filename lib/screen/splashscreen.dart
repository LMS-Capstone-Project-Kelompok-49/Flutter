import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnitnow/screen/home.dart';
import 'package:learnitnow/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:learnitnow/services/wrapper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Widget _screen = spalashScreen;
// @override
//   void initState() {
//   _screen = spalashScreen;
//     super.initState();
//   }
  Widget get spalashScreen => Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 75,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Selogan disini',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const CircularProgressIndicator(
                color: Color(0XFF00AFB9),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      setState(() {
        _screen = AuthScreen();
      });
    });
    return _screen;
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String?> _token;
  @override
  void initState() {
    _checkToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _token,
        builder: ((context, snapshot) => snapshot.data == ''
            ? LoginScreen()
            : Home(onLogout: () async {
                final preference = await _prefs;
                preference.setString('token', '');
                _checkToken();
              })));
  }

  Future<void> _checkToken() async {
    _token = _prefs.then((value) => value.getString('token'));
  }
}
