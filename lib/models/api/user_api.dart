import 'package:learnitnow/models/user_model.dart';
import 'package:dio/dio.dart';

class UserApi {
  Future<User?> getUser() async {
    final response =
        await Dio().get('http://3.95.181.246/api/user/all');

      final user = User.fromJson(response.data);
    
    if (response.statusCode == 200) {
      return user;
    } else {
      return null;
    }
  }
}
