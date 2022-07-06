import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:learnitnow/models/user_model.dart';

class AuthController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future loginUser() async {
    const url = 'http://3.95.181.246/auth/login';

    var response = await Dio().post(
      'http://3.95.181.246/auth/login',
      data: jsonEncode(
        {
          "username": usernameController.text,
          "password": passwordController.text,
        },
      ),
    );
    if (response.statusCode == 200) {
      var loginArr = json.decode(response.data);
      // save this token in shared prefrences and make user logged in and navigate

      print(loginArr['token']);
      // return user;
    } else {

    }
  }

  Future<void> logOut() async {}
}
