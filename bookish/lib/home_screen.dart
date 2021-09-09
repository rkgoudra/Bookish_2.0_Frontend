import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          (Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          image: AssetImage('assets/images/book.jpg'),
                          color: Color.fromRGBO(75, 75, 75, 0.7),
                          colorBlendMode: BlendMode.modulate,
                          fit: BoxFit.cover))),
              Positioned(
                bottom: 170.0,
                left: 130.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      'BOOKISH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'bold',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
