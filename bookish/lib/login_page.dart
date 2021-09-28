import 'package:bookish/user_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final imageboxed = Hero(
        tag: 'hero',
        child: Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0)
                ]),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image(
                    image: AssetImage('assets/images/book.jpg'),
                    color: Color.fromRGBO(75, 75, 75, 0.7),
                    colorBlendMode: BlendMode.modulate,
                    fit: BoxFit.cover)),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 400,
            padding: EdgeInsets.only(bottom: 0),
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
          )
        ]));

    final email = Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            initialValue: 'abc@gmail.com',
            decoration: InputDecoration(
              hintText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
      )
    ]);

    final password = Stack(children: <Widget>[
      Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextFormField(
            autofocus: false,
            initialValue: 'Some Password',
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ))
    ]);

    final loginButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(UserPage.tag);
            },
            child: Text("Sign In"),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width - 250, 40.0),
                primary: Colors.blueGrey),
          ),
          new ElevatedButton(
            onPressed: () {},
            child: Text("Register"),
            style: ElevatedButton.styleFrom(
                fixedSize:
                    Size(MediaQuery.of(context).size.width - 250.0, 40.0),
                primary: Colors.blueGrey),
          )
        ],
      ),
    );
    final forgotLabel = TextButton(
        onPressed: () {},
        child: Text(
          'forgot password?',
          style: TextStyle(color: Colors.black54),
        ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          // shrinkWrap: true,
          // padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            imageboxed,
            SizedBox(height: 24.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            SizedBox(height: MediaQuery.of(context).size.height - 750),
            new Expanded(
              child: new Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text("Made with "),
                      new Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                      new Text(" in India")
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
