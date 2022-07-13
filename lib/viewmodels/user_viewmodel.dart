import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/user_api.dart';
import 'package:learnitnow/models/user_model.dart';

class UserViewModel extends ChangeNotifier {
  late User _user;
  User get user => _user;

  Future<void> getAllUser() async {
    final allUser = UserApi();

    try {
      final newUser = await allUser.getUser();

      _user = newUser!;

      print('hasilviewmodelsucces: $_user');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}