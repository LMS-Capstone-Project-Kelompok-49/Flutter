// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class AuthController {
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   Future loginUser() async {
//     const url = 'http://ec2-54-242-195-218.compute-1.amazonaws.com/auth/login';

//     var response = await http.post(Uri.parse(url),
//         body: jsonEncode({
//           "username": usernameController.text,
//           "password": passwordController.text,
//         }));
//     if (response.statusCode == 200) {
//       var loginArr = json.decode(response.body);
//       // save this token in shared prefrences and make user logged in and navigate

//       print(loginArr['token']);
//     } else {
      
//     }
//   }
// }
