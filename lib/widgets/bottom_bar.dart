import 'package:flutter/material.dart';
import 'package:flutter_main/grid%20view/grid_view1.dart';
import 'package:flutter_main/grid%20view/grid_view3.dart';
import 'package:flutter_main/stateless_listview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomBar(),
  ));
}

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  var screens = [
    GridView1(),
    GridView3(),
    ListView2()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          //type: BottomNavigationBarType.shifting,
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Contacts"),
          ]),
         body: screens[index],
    );
    
  }
}
