import 'package:learnitnow/models/type_course_model.dart';
import 'package:dio/dio.dart';

class TypeCourseApi {
  Future<TypeCourse?> getTypeCourse() async {
    final response =
        await Dio().get('http://3.95.181.246/api/type_course');

      final typeCourse = TypeCourse.fromJson(response.data);
    
    if (response.statusCode == 200) {
      return typeCourse;
    } else {
      return null;
    }
  }
}
