import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "My Account",
            style: TextStyle(color: Colors.black),
          ),
        ),
        drawer: Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                children: const [
                      UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                          color: Colors.white),
                            currentAccountPicture: Center(child: CircleAvatar(
                              radius: 300,
                              backgroundImage: AssetImage("assets/images/image 12345.jpg"),)),    
                        // otherAccountsPictures: [
                        //       Wrap(
                        //         direction: Axis.horizontal,
                        //         children: [
                        //           CircleAvatar(
                        //             child: FaIcon(
                        //               FontAwesomeIcons.facebook,
                        //               color: Colors.white,
                        //             ),
                        //           ),
                        //           CircleAvatar(
                        //             child: FaIcon(
                        //               FontAwesomeIcons.twitter,
                        //               color: Colors.white,
                        //             ),
                        //           ),
                        //           CircleAvatar(
                        //             child: FaIcon(
                        //               FontAwesomeIcons.linkedinIn,
                        //               color: Colors.white,
                        //             ),
                        //           ),
                        //           CircleAvatar(
                        //             backgroundColor: Colors.black,
                        //             child: FaIcon(FontAwesomeIcons.github,color: Colors.white,),
                        //           )
                        //         ],
                        //       ),
                          
                        
                        // ],
                        accountName: Text("Jerin"),
                        accountEmail: Text("@webrror"),
                      ),
                    
                  
                  Center(child: Text("Mobile App Developer")),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      tileColor:Color.fromARGB(255, 237, 233, 233),
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text("privacy"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      tileColor: Color.fromARGB(255, 237, 233, 233),
                      leading: Icon(Icons.access_time_outlined),
                      title: Text("Purchase History"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      tileColor: Color.fromARGB(255, 237, 233, 233),
                      leading: Icon(Icons.help_outline),
                      title: Text("Help & Support"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      tileColor: Color.fromARGB(255, 237, 233, 233),
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      tileColor: Color.fromARGB(255, 237, 233, 233),
                      leading: Icon(Icons.person_add),
                      title: Text("Invite a Friend"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      tileColor: Color.fromARGB(255, 237, 233, 233),
                      leading: Icon(Icons.logout_outlined),
                      title: Text("Logout"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                ],
              ),
            ),
          
        
      
    );
  }
}
