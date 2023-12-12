import 'package:flutter/material.dart';
import 'package:flutter_main/practice/instagram.dart/instaloginpage.dart';
import 'package:flutter_main/practice/instagram.dart/instawelcomepage.dart';
import 'package:google_fonts/google_fonts.dart';

class InstaSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InstaWelcomPage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        elevation: 0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Instagram Sign Up",
              style: GoogleFonts.notoSerif(
                  fontSize: 50,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple,
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))))),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.password),
                    labelText: "Confirm Password",
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))))),
          ),
          MaterialButton(
            onPressed: () {},
            height: 40,
            minWidth: 200,
            color: Colors.purple,
            shape: const StadiumBorder(),
            child: Text("Sign Up", style: GoogleFonts.notoSerif(fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InstaLoginPage()));
                },
                child: RichText(
                    text: TextSpan(
                  style: GoogleFonts.junge(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                      children: [
                        const TextSpan(text: "Alreday a User!?"),
                        TextSpan(text: "Login",
                        style: GoogleFonts.junge(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )),
                      ],
                ))),
          )
        ],
      )),
    );
  }
}
