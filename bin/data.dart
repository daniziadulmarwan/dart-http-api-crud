import 'dart:convert';

import 'package:max_learn/data_model.dart';
import 'package:http/http.dart' as http;

Future<Data> getData() async {
  var response = await http.get(Uri.parse('https://reqres.in/api/unknown/2'));
  var result;
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    result = Data.fromJson(jsonResponse['data']);
    print(result);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return result;
}

void main() async {
  // var response = await http.get(Uri.parse('https://reqres.in/api/unknown/2'));
  // if (response.statusCode == 200) {
  //   var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
  //   print(jsonResponse);
  //   print('Number of books about http: ${jsonResponse['data']['name']}.');
  // } else {
  //   print('Request failed with status: ${response.statusCode}.');
  // }

  var v = await getData();
  print(v.name);
}
