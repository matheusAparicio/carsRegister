import 'dart:convert';
import 'package:carsregister/modules/domain/model/car_year_entity.dart';
import 'package:carsregister/modules/external/http_request.dart';

class CarYearResponse {
  Future get({required String brandCode, required String modelCode}) async {
    List<CarYearEntity> list = [];
    var response = await HttpRequest().request(
        "https://parallelum.com.br/fipe/api/v1/carros/marcas/$brandCode/modelos/$modelCode/anos");
    if (response == null) {
      return list;
    }
    var data = jsonDecode(response.body);
    data.forEach((item) {
      list.add(CarYearEntity.fromJson(item));
    });
    return list;
  }
}
