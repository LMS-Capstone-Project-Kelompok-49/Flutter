import 'package:flutter/cupertino.dart';
import 'package:learnitnow/models/auth_model.dart';
import 'package:learnitnow/services/auth_controller.dart';

import '../models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  late AuthController _authController;
  AuthController get authController => _authController;
  bool isLoading = false;
  String token = '';
  String? error;

  Future<void> getUser() async {
    try {
      isLoading = true;
      final User user = await _authController.getUser();
      isLoading = false;
      print('hasilviewmodelsucces: $_authController');
    } catch (e) {
      error = e.toString();
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }

  Future<void> login(String username, String password) async {
    try {
      token = await _authController.login(username, password);

      print('hasilviewmodelsucces: $_authController');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }

  Future<void> register(String name, String username, String password) async {
    try {
      final String user = await _authController.login(username, password);

      print('hasilviewmodelsucces: $_authController');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}
