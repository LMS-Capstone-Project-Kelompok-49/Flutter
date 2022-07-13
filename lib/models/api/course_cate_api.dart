import 'package:dio/dio.dart';
import 'package:learnitnow/models/course_cate_model.dart';

class CourseCategoryApi {
  Future<CourseCategory?> getCategory() async {
    final response =
        await Dio().get('http://3.95.181.246/api/course_category');

      final courseCategory = CourseCategory.fromJson(response.data);
    
    if (response.statusCode == 200) {
      return courseCategory;
    } else {
      return null;
    }
  }
}
