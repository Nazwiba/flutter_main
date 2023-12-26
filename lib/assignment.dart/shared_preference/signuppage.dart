import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/shared_preference/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedSignUpPage extends StatefulWidget {
  @override
  State<SharedSignUpPage> createState() => _SharedSignUpPageState();
}

class _SharedSignUpPageState extends State<SharedSignUpPage> {
  final nameCtrl = TextEditingController();
  final unameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                  hintText: "Enter your Name",
                  hintStyle: const TextStyle(color: Colors.black),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: unameCtrl,
                decoration: InputDecoration(
                  hintText: "Enter your Username",
                  hintStyle: const TextStyle(color: Colors.black),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordCtrl,
                decoration: InputDecoration(
                  hintText: "Enter your Password",
                  hintStyle: const TextStyle(color: Colors.black),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    storedata();
                  },
                  child: const Text("Sign Up",style: TextStyle(color: Colors.black),)),
            )
          ],
        ),
      ),
    );
  }

  void storedata() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String name = nameCtrl.text;
    String username = unameCtrl.text;
    String password = passwordCtrl.text;
    if (username != "" && password != "") {
      preferences.setString("uname", username);
      preferences.setString("password", password);
      preferences.setString("name", name);
      preferences.setBool("loggedIn", true);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SharedHomePage()));
    }
  }
}
