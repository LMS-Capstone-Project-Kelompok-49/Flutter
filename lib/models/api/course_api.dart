import 'package:dio/dio.dart';
import '../course_model.dart';

class CourseApi {
  Future<Course?> getCourse() async {
    final response =
        await Dio().get('http://3.95.181.246/api/course/all');

      final course = Course.fromJson(response.data);
    
    if (response.statusCode == 200) {
      return course;
    } else {
      return null;
    }
  }
}
