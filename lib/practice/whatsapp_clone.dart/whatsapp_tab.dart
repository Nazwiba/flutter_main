import 'package:flutter/material.dart';
import 'package:flutter_main/practice/whatsapp_clone.dart/whatsapp_call_list.dart';
import 'package:flutter_main/practice/whatsapp_clone.dart/whatsapp_home.dart';
import 'package:flutter_main/practice/whatsapp_clone.dart/whatsapp_update.dart';

class WhatsAppTab extends StatefulWidget {
  @override
  State<WhatsAppTab> createState() => _WhatsAppTabState();
}

class _WhatsAppTabState extends State<WhatsAppTab> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("WhatsApp"),
          actions: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text("New Group"),
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  child: Text("Linked devices"),
                ),
                PopupMenuItem(
                  child: Text("Starred messeges"),
                ),
                PopupMenuItem(
                  child: Text("Payments"),
                ),
                PopupMenuItem(
                  child: Text("settings"),
                ),
              ];
            })
          ],
          bottom: TabBar(
              onTap: (tapindex) {
                setState(() {
                  index = tapindex;
                });
              },
              tabs: [Text("Chat"), Text("Update"), Text("Calls")]),
        ),
        body: TabBarView(children: [
          WhatsAppHome(),
          WhatsAppUpdate(),
          WhatsAppCall(),
        ]),
      ),
    );
  }
}
