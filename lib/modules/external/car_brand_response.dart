import 'dart:convert';
import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/external/http_request.dart';

class CarBrandResponse {
  Future get() async {
    List<CarBrandEntity> list = [];
    var response = await HttpRequest()
        .request("https://parallelum.com.br/fipe/api/v1/carros/marcas");
    if (response == null) {
      return list;
    }
    var data = jsonDecode(response.body);
    data.forEach((item) {
      list.add(CarBrandEntity.fromJson(item));
    });
    return list;
  }
}
