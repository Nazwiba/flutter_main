import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsAppSplash(),
  ));
}

class WhatsAppSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/icons/whatsappImage1.png"),
            height: 100,width: 100,),
          Text("WhatsApp",style: TextStyle(fontSize: 35,
          color: Colors.green,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
