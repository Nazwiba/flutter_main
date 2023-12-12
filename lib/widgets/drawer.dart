import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: DrawerEg(),
  ));
}

class DrawerEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("My Account"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/luminar 2.jpg"),),
                CircleAvatar(backgroundImage: AssetImage("assets/images/luminar 3.jpeg"),)],
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/luminar.jpg"),
              ),
              accountName: Text("Luminar Technolab"),
              accountEmail: Text("Luminartechnolab@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
             ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
            
             
          ],
        ),
      ),
    );
  }
}
