import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview3(),
  ));
}

class Listview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "ListView Builder",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        // listview.builder is used to infinite writtens eg; contacts or whatsapp chat
        itemCount: 5, // number of item that we want to write
        itemBuilder: (context, index) => const Card(
          child: Center(
            child: Text(
              "Hii!!",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
