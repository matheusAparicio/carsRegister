import 'dart:convert';
import 'package:carsregister/modules/external/http_request.dart';

class CarFipeResponse {
  Future get({required String brandCode, required String modelCode, required String yearCode}) async {
    var response = await HttpRequest()
        .request("https://parallelum.com.br/fipe/api/v1/carros/marcas/$brandCode/modelos/$modelCode/anos/$yearCode");
    if (response == null) {
      return "";
    }
    var data = jsonDecode(response.body);
    return data["Valor"];
  }
}
