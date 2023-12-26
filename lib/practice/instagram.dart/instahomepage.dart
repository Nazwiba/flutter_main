import 'package:flutter/material.dart';
import 'package:flutter_main/practice/instagram.dart/instaloginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstaHomePage extends StatefulWidget {
  @override
  State<InstaHomePage> createState() => _InstaHomePageState();
}

class _InstaHomePageState extends State<InstaHomePage> {
  @override
  void initState() {
    getvalue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Instagram"),
        actions: [
          IconButton(
              onPressed: () async {
                final SharedPreferences preferences =
                    await SharedPreferences.getInstance()!;
                preferences.setBool("loggedIn", false);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InstaLoginPage()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }

  void getvalue() {}
}
