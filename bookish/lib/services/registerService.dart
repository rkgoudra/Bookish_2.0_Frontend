import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bookish/models/registerModel.dart';

Future<RegisterModel> createUser(String firstName, String lastName,
    String email, String password, String phoneNumber) async {
  final response = await http
      .put(Uri.parse('http://localhost:8080/bookish/login/createUser'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return RegisterModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
