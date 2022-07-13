import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/course_cate_api.dart';
import 'package:learnitnow/models/course_cate_model.dart';

class CourseCategoryViewModel extends ChangeNotifier {
  late CourseCategory _courseCategory;
  CourseCategory get courseCategory => _courseCategory;

  Future<void> getCourseCategory() async {
    final allCategory = CourseCategoryApi();

    try {
      final newCategory = await allCategory.getCategory();

      _courseCategory = newCategory!;

      print('hasilviewmodelsucces: $_courseCategory');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}