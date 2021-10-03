import 'dart:convert';
// import 'dart:js';

// import 'package:bookish/models/loginModel.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../user_page.dart';

Future<Object> getUser(
    String firstName, String password, BuildContext context) async {
  final response = await http.post(
    Uri.parse('http://192.168.0.96:8080/bookish/login/loginUser'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(
        <String, String>{'first_name': firstName, 'password': password}),
  );
  if (response.statusCode == 200) {
    return Navigator.of(context).pushNamed(UserPage.tag);
  } else {
    throw Exception('Failed to get user');
  }
}
