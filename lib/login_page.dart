// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_main/homepage.dart';
import 'package:flutter_main/signuppage.dart';
import 'package:flutter_main/welcompage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  String username = "Nasweeba";
  String password = "Nazwi@123";

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
                "Login",
                style: GoogleFonts.notoSerif(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text(
              "Welcome back! Login with your Credentials!!",
              style: GoogleFonts.notoSerif(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  //filled: true,fillColor: Colors.blue, if we can add color inside the text field
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder(
                    
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, 
              left: 15, right: 15),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: passwordController,
                decoration: const InputDecoration(
                  //filled: true,fillColor: Colors.blue, if we can add color inside the text field
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40)))),
              ),
            ),
            MaterialButton(
              onPressed: () {
                if (username == usernameController.text &&
                    password == passwordController.text) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => 
                      HomePage()));
                }
                usernameController.text = "";
                passwordController.text = "";
              
              },
              height: 40,
              minWidth: 150,
              color: Colors.blueAccent,
              shape: const StadiumBorder(),
              child: const Text("Login"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => 
                      SignUpPage()));
                },
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, 
                        fontSize: 15),
                        children: [
                      TextSpan(text: "Don't have an Account?"),
                      TextSpan(
                          text: "Sign Up!",
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
