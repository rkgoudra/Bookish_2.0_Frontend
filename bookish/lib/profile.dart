import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile Page"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFF3F5F7), Color(0xFF3EBACE)])),
                child: Container(
                  width: double.infinity,
                  height: 350.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/26497364?v=4",
                          ),
                          radius: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Vishwanath Rathod",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Followers",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "21.2K",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Follow",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Info:",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontStyle: FontStyle.normal,
                          fontSize: 28.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'My name is Vishwanath and I am  a freelance mobile app developper.\n'
                      'Having Experiece in Flutter and Android',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                width: 300.00,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Contact Me"),
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 250.0, 40.0),
                      primary: Colors.blueGrey),
                )),
          ],
        ),
      ),
    );
  }
}
