import 'package:flutter/material.dart';
import 'package:flutter_main/login_page.dart';
import 'package:flutter_main/welcompage.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => 
                  WelcomePage()));
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
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Sign Up",
                style: GoogleFonts.notoSerif(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text(
              "Create an Account!",
              style: GoogleFonts.notoSerif(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    //filled: true,fillColor: Colors.blue, if we can add color inside the text field
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    //filled: true,fillColor: Colors.blue, if we can add color inside the text field
                    labelText: "Email Id",
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    //filled: true,fillColor: Colors.blue, if we can add color inside the text field
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    //filled: true,fillColor: Colors.blue, if we can add color inside the text field
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.password),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ))),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              height: 40,
              minWidth: 150,
              color: Colors.blueAccent,
              shape: const StadiumBorder(),
              child: const Text("Sign Up"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => 
                      LoginPage()));
                },
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, 
                        fontSize: 15),
                        children: [
                      TextSpan(text: "Alreday have an Account?"),
                      TextSpan(
                          text: "Login!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: Colors.blue))
                    ])))
          ],
        ),
      ),
    );
  }
}
