import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/shared_preference/homepage.dart';
import 'package:flutter_main/assignment.dart/shared_preference/signuppage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SharedLoginPage(),
  ));
}

class SharedLoginPage extends StatefulWidget {
  const SharedLoginPage({super.key});

  @override
  State<SharedLoginPage> createState() => _SharedLoginPageState();
}

class _SharedLoginPageState extends State<SharedLoginPage> {
  final usernameCtrl = TextEditingController();
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usernameCtrl,
                decoration: InputDecoration(
                    prefixIcon:const  Icon(Icons.person),
                    hintText: "Username",
                    hintStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordCtrl,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    validateLogin();
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SharedSignUpPage()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void userAlreadyLoggedIn() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    loggedIn = preferences.getBool("LoggedIn") ?? false;
    if (loggedIn == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SharedHomePage()));
    }
  }

  void validateLogin() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String username = usernameCtrl.text;
    String password = passwordCtrl.text;
    String? uname = preferences.getString("uname");
    String? pwd = preferences.getString("password");
    if (username == uname && password == pwd) {
      preferences.setBool("loggedIn", true);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SharedHomePage()));
    }
  }
}
