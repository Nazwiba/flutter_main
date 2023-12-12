import 'package:flutter/material.dart';
import 'package:flutter_main/Storage/shared%20preference/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedSignUp extends StatefulWidget {
  @override
  State<SharedSignUp> createState() => _SharedSignUpState();
}

class _SharedSignUpState extends State<SharedSignUp> {
  final nameCtrl = TextEditingController();
  final unameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign UP Page"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: nameCtrl,
            decoration: const InputDecoration(
                hintText: "Enter Your Name",
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: Colors.blue)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: unameCtrl,
            decoration: const InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: Colors.blue)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: passwordCtrl,
            decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: Colors.blue)),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              storedata();
            },
            child: Text("Sign Up"))
      ]),
    );
  }

  void storedata() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance()!;
    String name = nameCtrl.text;
    String username = unameCtrl.text;
    String password = passwordCtrl.text;
    if (username != "" && password != "") {
      prefs.setString("uname", username);
      prefs.setString("password", password);
      prefs.setString("name", name);
      prefs.setBool("loggedIn", true);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage1()));
    }
  }
}
