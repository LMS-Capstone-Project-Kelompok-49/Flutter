import 'package:learnitnow/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:learnitnow/viewmodels/user_viewmodel.dart';

class AuthApi {
  Future<User> getUser() async {
    final response = await Dio().get('http://52.202.229.239/api/user/all');

    final user = User.fromJson(response.data);

    if (response.statusCode == 200) {
      return user;
    } else {
      throw Exception();
    }
  }

  Future<String> login(String username, String password) async {
    final Response response =
        await Dio().post('http://52.202.229.239/auth/login');

    final token = response.data['token'];

    if (response.statusCode == 200) {
      return token;
    } else {
      throw Exception();
    }
  }

  Future<String> register(String name, String username, String password) async {
    final Response response =
        await Dio().post('http://52.202.229.239/auth/register');

    final token = response.data['token'];

    if (response.statusCode == 200) {
      return token;
    } else {
      throw Exception();
    }
  }
}
