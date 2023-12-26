import 'package:flutter/material.dart';
import 'package:flutter_main/practice/instagram.dart/instahomepage.dart';
import 'package:flutter_main/practice/instagram.dart/instaloginpage.dart';
import 'package:flutter_main/practice/instagram.dart/instawelcomepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstaSignUpPage extends StatefulWidget {
  @override
  State<InstaSignUpPage> createState() => _InstaSignUpPageState();
}

class _InstaSignUpPageState extends State<InstaSignUpPage> {
  final nameCtrl = TextEditingController();
  final unameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confirmpwdCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InstaWelcomPage()));
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
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Instagram Sign Up",
              style: GoogleFonts.notoSerif(
                  fontSize: 50,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple,
                  //labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple,
                  // labelText: "UserName",
                  prefixIcon: Icon(Icons.person),
                  hintText: "UserName",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.password),
                    //labelText: "Password",
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.password),
                    //labelText: "Confirm Password",
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))))),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple)),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => InstaHomePage()));
              storedata();
            },
            child: Text("Sign Up",
                style:
                    GoogleFonts.notoSerif(fontSize: 30, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: RichText(
                    text: TextSpan(
                  style: GoogleFonts.junge(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                  children: [
                    const TextSpan(text: "Alreday a User!?"),
                    TextSpan(
                        text: "Login",
                        style: GoogleFonts.junge(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ))),
          )
        ],
      )),
    );
  }

  void storedata() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String name = nameCtrl.text;
    String username = unameCtrl.text;
    String password = passwordCtrl.text;
    String confirmpwd = confirmpwdCtrl.text;
    if (username != "" && password != "" && confirmpwd != "") {
      preferences.setString("uname", username);
      preferences.setString("password", password);
      preferences.setString("name", name);
      preferences.setString("confirmpassword", confirmpwd);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => InstaHomePage()));
    }
  }
}
