import 'package:ao/twopage.dart';
import 'package:flutter/material.dart';
import 'package:udp/udp.dart';
import "dart:io";

import 'cliper.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  TwoPage(),
    );
  }
}

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {

  @override
  Widget build(BuildContext context) {
    print ("hello pull")
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Stack(
              children: [
                ClipPath(
               clipper: Cliperred(),
               child:
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                  ),
                ),
              ),
              ClipPath(
                clipper: Cliperindiog(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo[200],
                  ),
                ),
              ),
              ClipPath(
                clipper: Cliperblue(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                  ),
                ),
              ),
                ClipPath(
                  clipper:Cliperwhite(),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                padding:const  EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                height: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "     Create${"\n"}    An Account",
                      style: TextStyle(fontSize: 25,
                    color:  Colors.yellow[100],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Nme ",
                        labelText: "Name",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.yellow[200]),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password ",
                        labelText: "Password",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.yellow[200]),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Confic pass",
                        labelText: "Confic pass",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.yellow[200]),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 220,
              top: 620,
              child: FloatingActionButton(
                backgroundColor: Colors.red[100],
                onPressed: () {},
              ),
            ),
            Positioned(
              left: 240,
              top: 620,
              child: Text(
                "Register",

                style: TextStyle(fontSize: 35,
                    color: Colors.yellow[100]
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class Cliperwhite extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 600);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 700);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
class Cliperindiog extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0,200);
    path.lineTo(0,500);
    path.lineTo(size.width,300);
    path.lineTo(size.width,0);
    path.lineTo(170,0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
class Cliperblue extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 500);
    path.lineTo(0, 600);
    path.lineTo(size.width, 700);
    path.lineTo(size.width, 300);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}





class Cliperred extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 200);
    path.lineTo(170, 0);
    path.lineTo(170, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
