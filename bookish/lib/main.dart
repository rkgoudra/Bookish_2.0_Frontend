import 'package:bookish/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFFF3F5F7),
        primaryColor: Color(0xFF3EBACE),
      ),
      home: HomeScreen(),
    );
  }
}
