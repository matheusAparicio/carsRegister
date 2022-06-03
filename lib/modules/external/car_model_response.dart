import 'dart:convert';
import 'package:carsregister/modules/domain/model/car_model_entity.dart';
import 'package:carsregister/modules/external/http_request.dart';

class CarModelResponse {
  Future get({required String brandCode}) async {
    List<CarModelEntity> list = [];
    var response = await HttpRequest()
        .request("https://parallelum.com.br/fipe/api/v1/carros/marcas/$brandCode/modelos");
    if (response == null) {
      return list;
    }
    // print("response body:");
    var data = jsonDecode(response.body);
    data["modelos"].forEach((item) {
      list.add(CarModelEntity.fromJson(item));
    });
    return list;
  }
}
