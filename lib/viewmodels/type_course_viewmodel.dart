import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/type_course_api.dart';
import 'package:learnitnow/models/type_course_model.dart';

class TypeCourseViewModel extends ChangeNotifier {
  late TypeCourse _typeCourse;
  TypeCourse get typeCourse => _typeCourse;

  Future<void> getATypeCourse() async {
    final dataType = TypeCourseApi();

    try {
      final newType = await dataType.getTypeCourse();

      _typeCourse = newType!;

      print('hasilviewmodelsucces: $_typeCourse');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}