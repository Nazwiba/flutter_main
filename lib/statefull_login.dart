// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_main/statefull_home.dart';
import 'package:flutter_main/statefull_signup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: StatefullLogin(),
  ));
}

class StatefullLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefullLogin();
}

class _StatefullLogin extends State<StatefullLogin> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  final validkey =
      GlobalKey<FormState>(); // we can add validation ,use this key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "LOGIN PAGE",
          style: TextStyle(color: Colors.green),
        ), // here we use titilr for the appbar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            // we can wrap with column with wrap with widget and write form and put a key: valid key for validation for the multichild
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Page",
                  style: GoogleFonts.oswald(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text("To keep connected with us please login with your personal info",
                      style: GoogleFonts.notoSerif(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black), 
                      ),
                //intsead of padding here we use sizedbox
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: userController,
                  // instead of textfield here we use textformfield
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains("gmail.com")) {
                      return "Invalid email";
                    } //! is put in the right it is null check and put in the left it gives not(opoosite of the statement)
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(),
                      hintText: " Enter Username"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  // value that we typed in formfield will stored in email
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Password must not be empty or  Length should be greater than 6";
                    }
                  },
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(),
                      hintText: "Enter Password"),
                ),
                const SizedBox(
                  height: 15,
                ),

                MaterialButton(
                  onPressed: () {
                    final valid = validkey.currentState!.validate();
                    if (valid == true) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Invalid Email/Password")));
                    }
                    userController.clear();
                    passwordController.clear();
                  },
                  height: 40,
                  minWidth: 250,
                  color: Colors.green,
                  shape: const StadiumBorder(),
                  child: Text("Login",style: GoogleFonts.notoSerif(),),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatefulSignUp()));
                    },
                    child: const Text(
                      "Not a User? Register Here!!",
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
