import 'package:bookish/login_page.dart';
import 'package:bookish/user_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    UserPage.tag: (context) => UserPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookish',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        secondaryHeaderColor: Color(0xFFF3F5F7),
        primaryColor: Color(0xFF3EBACE),
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
