import 'package:flutter/material.dart';
import 'package:learnitnow/models/api/material_api.dart';
import 'package:learnitnow/models/material_model.dart';

class MaterialViewModel extends ChangeNotifier {
  late MaterialModel _material;
  MaterialModel get material => _material;

  Future<void> getAMaterial() async {
    final dataMaterial = MaterialApi();

    try {
      final newMaterial = await dataMaterial.getMaterial();

      _material = newMaterial!;

      print('hasilviewmodelsucces: $_material');
    } catch (e) {
      print('hasilviewmodelerror: $e');

      notifyListeners();
    }
  }
}