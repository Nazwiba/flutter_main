import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/shared_preference/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHomePage extends StatefulWidget {
  const SharedHomePage({super.key});

  @override
  State<SharedHomePage> createState() => _SharedHomePageState();
}

class _SharedHomePageState extends State<SharedHomePage> {
  @override
  void initState() {
    getvalue();
    super.initState();
  }

  @override
  String? username;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        actions: [
          IconButton(
              onPressed: () async {
                final SharedPreferences preferences =
                    await SharedPreferences.getInstance()!;
                preferences.setBool("loggedIn", false);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SharedLoginPage()));
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      body: Center(
        child: Text(
          "Welcome Back!! $username...",
          style: const TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  void getvalue() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("uname")!;
    });
  }
}
