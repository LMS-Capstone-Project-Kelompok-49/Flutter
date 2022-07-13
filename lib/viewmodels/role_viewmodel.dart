import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/role_api.dart';
import 'package:learnitnow/models/role_model.dart';

class RoleViewModel extends ChangeNotifier {
  late Role _role;
  Role get role => _role;

  Future<void> getARole() async {
    final dataRole = RoleApi();

    try {
      final newRole = await dataRole.getRole();

      _role = newRole!;

      print('hasilviewmodelsucces: $_role');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}