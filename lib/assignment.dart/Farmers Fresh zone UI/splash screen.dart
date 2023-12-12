import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/Farmers%20Fresh%20zone%20UI/farmerhome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FarmerSplash(),
  ));
}

class FarmerSplash extends StatefulWidget {
  @override
  State<FarmerSplash> createState() => _FarmerSplashState();
}

class _FarmerSplashState extends State<FarmerSplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FarmerHome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 184, 123),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/framer3456.png",
            height: 500,
            width:100,)
          ],
        ),
      ),
    );
  }
}
