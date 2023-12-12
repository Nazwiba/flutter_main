import 'package:flutter/material.dart';
import 'package:flutter_main/login_page.dart';
import 'package:flutter_main/signuppage.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Hello There!!",
              style: GoogleFonts.notoSerif(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent), 
            ),
          ),
          Text(
     "Automatic identity verification which enable you to verify your identity",
            style: GoogleFonts.notoSerif(
                fontSize: 20, color: Colors.black),
          ),
          //const Image(image:NetworkImage("https://tse3.mm.bing.net/th?id=OIP.z5IdmdcHXBULnTS4Qee5IwHaGB&pid=Api&P=0&h=220"),height: 400,width: 400,),
          const Image(image:
          AssetImage("assets/images/musicimage3.jpg"),
          height: 400,width: 400,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => 
                      LoginPage()));
              },
              height: 50,
              minWidth: 400,
              color: Colors.blue,
              shape: const StadiumBorder(),
              child: const Text("Login"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: 
                    (context) => 
                    SignUpPage()));
              },
              height: 50,
              minWidth: 400,
              color: Colors.blue,
              shape: const StadiumBorder(),
              child: const Text("Sign Up"),
            )),
        ])));
         }}
