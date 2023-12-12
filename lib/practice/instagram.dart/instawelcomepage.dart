import 'package:flutter/material.dart';
import 'package:flutter_main/practice/instagram.dart/instaloginpage.dart';
import 'package:flutter_main/practice/instagram.dart/instasignup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class InstaWelcomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to wrap with container for adding mixing of clors in the background
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.deepPurple,
              Colors.purple,
              Colors.pink,
              Colors.orange,
              //Colors.black,
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //then we write text that what we can shown in that page
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello!!",
                  style: GoogleFonts.rosarivo(
                      fontSize: 65,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Lottie.asset("assets/animation/Instagram.json",height: 100,width: 100),
              // after the text we can cover with padding because we can adjust the spcae between the text/image.that means the curser is put into the text and select wrap with padding.
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Welcome back to Instagram.It's a fun & quickly way to share your life through photos.",
                  style: GoogleFonts.rosarivo(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Text(
                "Want to share your own!? Tap the Sign Up Or Login button below!!",
                style: GoogleFonts.rosarivo(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InstaLoginPage()));
                  },
                  height: 50,
                  minWidth: 400,
                  color: Colors.pink,
                  shape: const StadiumBorder(),
                  child: Text("Login",style: GoogleFonts.notoSerif(fontSize: 20)),
                ),
              ),
              MaterialButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InstaSignUpPage()));
              },
              height: 50,
              minWidth: 400,
              color: Colors.pink,
              shape: const StadiumBorder(),
              child: Text("Sign Up",style: GoogleFonts.notoSerif(fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
