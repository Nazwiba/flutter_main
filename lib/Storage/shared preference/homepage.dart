import 'package:flutter/material.dart';
import 'package:flutter_main/Storage/shared%20preference/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
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
        title: Text("HomePage"),
        actions: [
          IconButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance()!;
                prefs.setBool("loggedIn", false);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SharedLogin()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
          child: Text(
        "Welcome Back!! $username...",
        style: const TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
      )),
    );
  }

  void getvalue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance()!;
    setState(() {
      username = prefs.getString("uname")!;
    });
  }
}
