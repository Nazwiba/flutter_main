import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_main/widgets/bottom_sheet.dart';

class WhatsAppUpdate extends StatefulWidget {
  @override
  State<WhatsAppUpdate> createState() => _WhatsAppUpdateState();
}

class _WhatsAppUpdateState extends State<WhatsAppUpdate> {
  var name = [
    "My Status",
    "Elena",
    "Stefen",
    "Isobel",
    "Jenna",
    "yuwel",
    "Damon"
  ];
  var time = [
    "Tap to add status update",
    "22 minutes ago",
    "31 minutes ago",
    "4:39pm",
    "12:29pm",
    "11:52am",
    "10:22am"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Status"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return const [PopupMenuItem(child: Text("Status Privacy"))];
          })
        ],
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            showsheet(context);
          },
          child: ListView(
            children: List.generate(
                7,
                (index) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        child: Icon(Icons.person),
                      ),
                      title: Text(name[index]),
                      subtitle: Text(time[index]),
                    )),
          ),
        ),
      ),
    );
  }
}

void showsheet(BuildContext context) {
  
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Text("Mute This Status"),
              trailing: Icon(Icons.mic_off_rounded),
              
            ),
            ListTile(
              leading: Text("Unmute This Status"),
              trailing: Icon(Icons.mic),
            )
          ],
        );
      });
}
