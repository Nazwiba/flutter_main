import 'package:flutter/material.dart';
import 'package:flutter_main/practice/instagram.dart/instahomepage.dart';
import 'package:flutter_main/practice/instagram.dart/instasignup.dart';
import 'package:flutter_main/practice/instagram.dart/instawelcomepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstaLoginPage extends StatefulWidget {
  @override
  State<InstaLoginPage> createState() => _InstaLoginPageState();
}

class _InstaLoginPageState extends State<InstaLoginPage> {
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
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Instagram",
                style: GoogleFonts.dancingScript(
                    fontSize: 60,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Welcome Back!  Login with your Credentials!!",
                style: GoogleFonts.junge(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    //labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.password),
                    //labelText: "password",
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
              ),
            ),
            ElevatedButton(
               style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: () {
          //       Navigator.of(context)
          // .push(MaterialPageRoute(builder: (context) => InstaHomePage()));
                validateLogin();
              },
              child: Text("Login", style: GoogleFonts.notoSerif(fontSize: 30,color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InstaSignUpPage()));
                  },
                  child: RichText(
                      text: TextSpan(
                          style: GoogleFonts.junge(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                          children: [
                        const TextSpan(text: "Don't Have an Account?"),
                        TextSpan(
                            text: "Sign Up",
                            style: GoogleFonts.junge(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]))),
            ),
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
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => InstaHomePage()));
    }
  }

  void validateLogin() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String username = unameCtrl.text;
    String password = passwordCtrl.text;
    String? uname = preferences.getString("uname");
    String? pwd = preferences.getString("password");
    if (username == uname && password == pwd) {
      preferences.setBool("loggedIn", true);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => InstaHomePage()));
    }
  }
}
