import 'package:dio/dio.dart';
import 'package:learnitnow/models/material_model.dart';

class MaterialApi {
  Future<MaterialModel?> getMaterial() async {
    final response =
        await Dio().get('http://3.95.181.246/material/course/1');

      final material = MaterialModel.fromJson(response.data);
    
    if (response.statusCode == 200) {
      return material;
    } else {
      return null;
    }
  }
}
