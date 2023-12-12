import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_main/practice/instagram.dart/instawelcomepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: InstagramSplash(),
  ));
}

class InstagramSplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InstagramSplash();
}

class _InstagramSplash extends State<InstagramSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => InstaWelcomPage()));
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/animation/Instagram.json",height: 100,width: 100),
          Text("Instagram",
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 40,
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold)),
        ],
      )),
    );
  }
}
