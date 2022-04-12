import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:max_learn/user_model.dart';

class UserRepository {
  final baseUrl = 'https://reqres.in/api/users/2';

  Future<User> getData() async {
    final result = await http.get(Uri.parse(baseUrl));

    final jsonObject = jsonDecode(result.body);
    final userData = User.fromJson(jsonObject['data']);
    return userData;
  }

  Future<List<User>> fetchAll() async {
    final result =
        await http.get(Uri.parse('https://reqres.in/api/users?page=1'));
    final object = jsonDecode(result.body);
    List data = object['data'];
    var it = data.map((e) => User.fromJson(e)).toList();
    return it;
  }
}
