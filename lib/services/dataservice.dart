import 'dart:convert';
import 'package:testing_programming/model/datamodel.dart';
import 'package:http/http.dart' as http;

class DataService {
  var uri = "https://fakestoreapi.com/products/1";
  Future<DataModel?> getService() async {
    var response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return DataModel.fromjson(data);
    } else {
      throw Exception("404!.");
    }
  }
}
