import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_main/practice/whatsapp_clone.dart/whatsapp_tab.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WhatsApp();
}

class _WhatsApp extends State<WhatsApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (Context) => WhatsAppTab()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/icons/whatsappImage1.png"),
                height: 100,
                width: 100,
              ),
              Text("WhatsApp",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
