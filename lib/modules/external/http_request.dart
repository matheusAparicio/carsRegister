import 'dart:convert';
import 'package:carsregister/modules/external/i_request.dart';
import 'package:http/http.dart' as http;

class HttpRequest implements IRequest {
  @override
  Future request(String url) async {
    var basicAuth = 'Basic ' + base64Encode(utf8.encode('admin:admin'));
    http.Response response;
    try {
      Uri uri = Uri.parse(url);
      response = await http.get(
        uri,
        headers: {
          'authorization': basicAuth
        },
      ).timeout(const Duration(milliseconds: 10000));
    } catch (error) {
      return null;
    }
    return response;
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}