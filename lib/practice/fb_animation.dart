import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Facebook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Facebookstate();
}

class _Facebookstate extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset("assets/animation/facebookanimation.json",height: 300,width:300),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    home: Facebook(),
  ));
}