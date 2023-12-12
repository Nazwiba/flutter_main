
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppBarProperty(),
  ));
}

class AppBarProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My AppBar"),
        leading: const Icon(Icons.menu),
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.camera_alt_outlined),
          ),
          const Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) { // itembuilder: (){}
              return const [
                PopupMenuItem(child:Text("New Group"),),
                PopupMenuItem(child:Text("New broadcast"),),
                PopupMenuItem(child:Text("Linked devices"),),
                PopupMenuItem(child:Text("Starred messeges"),),
                PopupMenuItem(child:Text("Payments"),),
                PopupMenuItem(child:Text("settings"),),
              ];
            },
          )
        ],
      ),
    );
  }
}
