import 'package:flutter/material.dart';

class InstaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Instagram"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.favorite_outline),
          ),
          Icon(Icons.messenger_rounded),
        
        ],
      ),
      
    );
  }
}



