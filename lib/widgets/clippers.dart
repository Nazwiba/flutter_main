import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: ClippersEg(),
  ));
}

class ClippersEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child:Align(widthFactor: .4,heightFactor: .6,
            child: Image.asset(
                "assets/images/taj.jpg",),),
          ),
          const SizedBox(height: 20,),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/images/taj.jpg"),
          ),
          const SizedBox(height: 20,),
          ClipOval(
            child: Image.asset("assets/images/taj.jpg"),
          ),
          const SizedBox(height:20),
          ClipPath(
            clipper:TriangleClipper(),
            child: Image.asset("assets/images/taj.jpg"),
          ),
          const SizedBox(height: 20,),
          ClipPath(
            clipper:MovieTicketBothSidesClipper(),
            child: Container(
              color: Colors.blue,
              height: 300,
              child: Image.asset("assets/images/taj.jpg")),
          ),
          const SizedBox(height: 20,),
          ClipPath(
            clipper:MultipleRoundedCurveClipper(),
            child: Image.asset("assets/images/taj.jpg"),
          ),
        ],
      ),
    );
  }
}
