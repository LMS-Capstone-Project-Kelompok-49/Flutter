import 'package:learnitnow/models/role_model.dart';
import 'package:dio/dio.dart';

class RoleApi {
  Future<Role?> getRole() async {
    final response =
        await Dio().get('http://3.95.181.246/api/role/2');

      final role = Role.fromJson(response.data);
    
    if (response.statusCode == 200) {
      return role;
    } else {
      return null;
    }
  }
}
