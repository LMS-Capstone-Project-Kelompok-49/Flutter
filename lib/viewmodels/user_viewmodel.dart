import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/auth_api.dart';
import 'package:learnitnow/models/user_model.dart';
import 'package:learnitnow/services/auth_controller.dart';

class UserViewModel with ChangeNotifier {
  late User _user;
  User get user => _user;

  Future<void> getAllUser() async {
    final authController = AuthController();

    try {
      final newUser = await authController.getUser();

      _user = newUser;

      print('hasilviewmodelsucces: $_user');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }


  }



  
}

class AuthResponse{
  String token;
  User user;

  AuthResponse(this.token, this.user);
}