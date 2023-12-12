// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_main/statefull_home.dart';
import 'package:flutter_main/statefull_login.dart';
import 'package:google_fonts/google_fonts.dart';

class StatefulSignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefulSignUp();
}

class _StatefulSignUp extends State<StatefulSignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  //call valid key for validation
  final validkey = GlobalKey<FormState>();
  String? pwd; // validate the confirm password
  bool showpwd1 = true;
  bool showpwd2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        //inside appbar we write a titile for the appbar using titile keyword
        title: const Text("Sign Up Page",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          //we can wrap column with wrap with widget and instead of widget we can write form
          child: Form(
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up Page",
                  style: GoogleFonts.oswald(
                      fontSize: 40,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                //we create textform fields that we want
                // instead of wrap with padding we can use sizedbox
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                      
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(
                        
                      ), hintText: "Name"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains("gmail.com")) {
                      return "Invalid email id";
                    }
                  },
                  decoration: const InputDecoration(
                     enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                      
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(
                        
                      ),
                      hintText: "Email Id"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: showpwd1,
                  obscuringCharacter: "*",
                  controller: passwordController,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "password must not be empty or length should be greater than 6";
                    }
                  },
                  decoration: InputDecoration(
                     enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                      
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd1 == true) {
                              showpwd1 = false;
                            } else {
                              showpwd1 = true;
                            }
                          });
                        },
                        icon: Icon(showpwd1 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility,color: Colors.green,)),
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: showpwd2,
                  obscuringCharacter: "*",
                  controller: confirmpasswordController,
                  validator: (confirmPassword) {
                    if (confirmPassword!.isEmpty || pwd == confirmPassword) {
                      return "password does not match";
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                      
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd2 == true) {
                              showpwd2 = false;
                            } else {
                              showpwd2 = true;
                            }
                          });
                        },
                        icon: Icon(showpwd2 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility,color: Colors.green,)),
                    border: OutlineInputBorder(),
                    hintText: "Confirm Password",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //then create material button
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
                  
                    nameController.clear();
                    emailController.clear();
                    passwordController.clear();
                    confirmpasswordController.clear();
                  },
                  height: 40,
                  minWidth: 250,
                  color: Colors.green,
                  shape: const StadiumBorder(),
                  child: Text("Sign Up",style: GoogleFonts.notoSerif(),),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatefullLogin()));
                    },
                    child:
                       const Text("Alreday Have an Account!? Signin Here!!",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),))
                        
              ],

            ),
          ),
        ),
      ),
    );
  }
}
