import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:learnitnow/models/user_model.dart';

class AuthController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future loginUser() async {
    Response response = await Dio().post(
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
      // save token di shared preference
      
      print(loginArr['token']);
      // return user;
    } else {

    }
  }


  Future<void> logOut() async {}
}
