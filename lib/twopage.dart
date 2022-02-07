import 'package:ao/main.dart';
import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            child: Stack(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: Cliperone(),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[100],
                    ),
                  ),
                ),
                ClipPath(
                  clipper: Clipertwo(),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.indigo[200],
                    ),
                  ),
                ),
                ClipPath(
                  clipper: Cliperthree(),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                    ),
                  ),
                ),
              ],
            ),

           Positioned(
                left: 50,
                top: 140,
                child:  Text("Sign in ",style: TextStyle(
                  fontSize: 35,
                  color: Colors.yellow[200],
                ),),),

            Positioned(
                left: 50,
                top: 660,
                child: FloatingActionButton(
                  backgroundColor: Colors.blueAccent[100],
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mypage()));},)),
            Positioned(
              left: 60,
              top: 660,
              child:  TextButton(child: Text("Log in ",style: TextStyle(
                fontSize: 35,
                color: Colors.yellow[200],
                fontWeight: FontWeight.normal
              ),),onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mypage()));},
              ),
            ),
            Positioned(
              bottom: 300,
                left: 30,
                right: 30,
                child: Container(
                  height: 200,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.yellow[200]),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.yellow[200]),

                    ),
                  ),
              ],
            ),
                )),
          ],
        ),),

    );
  }
}

class Cliperone extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(120, 0);
    path.lineTo(size.width, 100);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipertwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 500);
    path.lineTo(size.width, 250);
    path.lineTo(size.width, 100);
    path.lineTo(120, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Cliperthree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 500);
    path.lineTo(0, 650);
    path.lineTo(300, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 250);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
