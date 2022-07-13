import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/course_api.dart';
import '../models/course_model.dart';

class CourseViewModel extends ChangeNotifier {
  late Course _course;
  Course get course => _course;

  Future<void> getAllCourse() async {
    final allCourse = CourseApi();

    try {
      final newCourse = await allCourse.getCourse();

      _course = newCourse!;

      print('hasilviewmodelsucces: $_course');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}