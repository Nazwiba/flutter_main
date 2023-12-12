import 'package:flutter/material.dart';
import 'package:flutter_main/Storage/shared%20preference/homepage.dart';
import 'package:flutter_main/Storage/shared%20preference/shared_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SharedLogin(),
  ));
}

class SharedLogin extends StatefulWidget {
  const SharedLogin({super.key});

  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  final unameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  late bool loggedIn;
  @override
  void initState() {
    userAlreadyLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                validateLogin();
              },
              //async {
              //   final SharedPreferences prefs =
              //       await SharedPreferences.getInstance()!;
              //   String? username = unameCtrl.text;
              //   String? password = passwordCtrl.text;
              //   if (username != "" && password != "") {
              //     prefs.setString("uname", username);
              //     prefs.setBool("LoggedIn", true);
              //     Navigator.of(context).push(
              //         MaterialPageRoute(builder: (context) => HomePage1()));
              //   }
              // },
              child: const Text("Login")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SharedSignUp()));
                },
                child: Text("Sign Up")),
          )
        ],
      ),
    );
  }

  void userAlreadyLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance()!;
    // if first stmnt us null execute 2nd stmnt
    loggedIn = prefs.getBool("LoggedIn") ?? false;
    if (loggedIn == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage1()));
    } //else {
    //Navigator.of(context)
    //.push(MaterialPageRoute(builder: (context) => SharedLogin()));
    // }
  }

  void validateLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance()!;
    String username = unameCtrl.text;
    String password = passwordCtrl.text;
    String? uname = prefs.getString("uname");
    String? pwd = prefs.getString("password");
    if (username == uname && password == pwd) {
      prefs.setBool("loggedIn", true);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage1()));
    }
  }
}
