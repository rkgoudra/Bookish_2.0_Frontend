import 'package:bookish/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 0.9),
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
                bottom: 500.0,
                left: 130.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      'BOOKISH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                      height: 780.0,
                      child: GridView.builder(
                          padding:
                              EdgeInsets.only(top: 350, left: 20, right: 20),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 250,
                                  childAspectRatio: 2.7 / 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 70),
                          itemCount: 4,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              alignment: Alignment.center,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/tbooks.png')),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(0.0, 3.0),
                                        blurRadius: 10.0)
                                  ]),
                            );
                          })))
            ],
          ))
        ],
      ),
      bottomNavigationBar: BootomNavbar(),
    );
  }
}
