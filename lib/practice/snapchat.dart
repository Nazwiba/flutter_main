import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SnapChat(),
  ));
}

class SnapChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/icons/snapchatimage.png"),
            height: 100,
            width: 100,
          ),
          Text("SnapChat",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ],
      )),
    );
  }
}
