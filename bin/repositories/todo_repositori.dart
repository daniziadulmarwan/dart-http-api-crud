import 'dart:convert';

import 'package:max_learn/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  final String baseUrl = 'https://619ee9581ac52a0017ba456b.mockapi.io/todos';

  Future fetchAll() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        Iterable it = await jsonDecode(response.body);
        var todos = it.map((e) => Todo.fromJson(e)).toList();
        return todos;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future getOne(String id) async {
    try {
      final response = await http.get(Uri.parse(baseUrl + '/$id'));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<Todo> getByPk(String id) async {
    final response = await http.get(Uri.parse(baseUrl + '/$id'));
    if (response.statusCode == 200) {
      return Todo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future create(String title, String body) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl), body: {'title': title, 'body': body});

      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future update(
      {required String title, required String body, required String id}) async {
    try {
      final response = await http.put(Uri.parse(baseUrl + '/$id'),
          body: {'title': title, 'body': body});
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<http.Response> updateTodo(String id, String title, String body) async {
    return http.put(Uri.parse(baseUrl + '/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{'title': title, 'body': body}));
  }

  Future destroy(String id) async {
    try {
      final response = await http.delete(Uri.parse(baseUrl + '/$id'));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
