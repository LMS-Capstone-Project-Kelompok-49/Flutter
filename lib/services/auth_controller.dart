import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:learnitnow/models/api/auth_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';
// import 'package:learnitnow/models/user_model.dart';

class AuthController {
  final AuthApi authApi = AuthApi();
  Future<User> getUser() async {
    return await authApi.getUser();
  }

  Future<String> login(String username, String password) =>
      authApi.login(username, password);

  Future<String> register(String name, String username, String password) =>
      authApi.register(name, username, password);

  Future<void> logOut() async {}
}
