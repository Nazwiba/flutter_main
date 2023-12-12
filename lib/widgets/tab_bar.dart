import 'package:flutter/material.dart';
import 'package:flutter_main/stateless_listview.dart';
void main() {
    runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: TabBarEg(),
      theme: ThemeData(primarySwatch: Colors.green), // for change the theme
    ));
  }

class TabBarEg extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("WhatsApp"),
          bottom: const TabBar( // ontap
            tabs: [Text("Chat"), Text("Status"), Text("Call")]),
        ),
        body:TabBarView(children: [
          ListView2(),
          const Icon(Icons.person),
          const Icon(Icons.phone)
        ]),
      ),
    );
  }
}
