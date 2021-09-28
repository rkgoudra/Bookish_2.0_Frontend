import 'dart:convert';

import 'package:bookish/models/loginModel.dart';
import 'package:http/http.dart' as http;

Future<LoginModel> getUser(String firstName, String password) async {
  final response = await http.post(
    Uri.parse('http://localhost:8080/bookish/login/loginUser'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
        <String, String>{'first_name': firstName, 'password': password}),
  );
  if (response.statusCode == 200) {
    return LoginModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to get user');
  }
}
