import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_main/welcompage.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _Splash2state(); // create a mutable state for this widget
}

class _Splash2state extends State<Splash2> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(
            builder: (context) => WelcomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Lottie.asset("assets/animation/musicanimation.json",
            height: 400, width: 400),
        //Lottie.network("https://lottie.host/79ba43aa-941e-461b-ae6f-bf779581aaa5/M502IAGoSn.json")
      ),
    );
  }
}
