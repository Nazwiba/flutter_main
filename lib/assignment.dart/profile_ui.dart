import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyProfile(),
  ));
}

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.segment_outlined,
            ),
          ),
        ],
      ),
      body:const SingleChildScrollView(
        child: Column(
            children: [
               Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image 12345.jpg"),
                    radius: 70,
                  ),
                ),
              ),
               Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 130, top: 20),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                        color: Color.fromARGB(255, 31, 109, 172),
                          size: 40,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 23, 139, 234),
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 7, 81, 141),
                        child: FaIcon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                          size: 40,
                        )),
                  ),
                ],
              ),
               Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Jerin",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
               Text(
                "@webrror",
                style: TextStyle(color: Color.fromARGB(255, 74, 73, 73)),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Mobile App Developer",
                  style: TextStyle(fontSize: 20),
                ),
              ),
          
              Padding(
                padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
                child: SingleChildScrollView(
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 233, 229, 229),
                    shape: StadiumBorder(),
                    title: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Privacy",style: TextStyle(
                        fontWeight: FontWeight.bold),),
                    ),
                    leading: Icon(Icons.privacy_tip_outlined,
                    color: Colors.black,),
                    trailing: Icon(Icons.chevron_right,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
                child: SingleChildScrollView(
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 233, 229, 229),
                    shape: StadiumBorder(),
                    title: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Purchase History",style: TextStyle(
                        fontWeight: FontWeight.bold),),
                    ),
                    leading: Icon(Icons.history_outlined,color: Colors.black,),
                    trailing: Icon(Icons.chevron_right,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
                child: SingleChildScrollView(
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 233, 229, 229),
                    shape: StadiumBorder(),
                    title: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Help & Support",style: TextStyle(
                        fontWeight: FontWeight.bold),),
                    ),
                    leading: Icon(Icons.help_outline,color: Colors.black,),
                    trailing: Icon(Icons.chevron_right,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
                child: SingleChildScrollView(
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 233, 229, 229),
                    shape: StadiumBorder(),
                    title: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Settings",style: TextStyle(
                        fontWeight: FontWeight.bold),),
                    ),
                    leading: Icon(Icons.settings,color: Colors.black,),
                    trailing: Icon(Icons.chevron_right,color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
                child: SingleChildScrollView(
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 233, 229, 229),
                    shape: StadiumBorder(),
                    title: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Invite a friend",style: TextStyle(
                        fontWeight: FontWeight.bold),),
                    ),
                    leading: Icon(Icons.person_add_alt_outlined,
                    color: Colors.black,),
                    trailing: Icon(Icons.chevron_right,color: Colors.black,),
                  ),
                ),
              ),
        Padding(
        padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
        child: SingleChildScrollView(
        child: ListTile(
        tileColor: Color.fromARGB(255, 233, 229, 229),
        shape: StadiumBorder(),
        title: Padding(
        padding: EdgeInsets.only(left: 25),
        child: Text("Log Out",style: TextStyle(
        fontWeight: FontWeight.bold),),
         ),
        leading: Icon(Icons.login_outlined,color: Colors.black,),
        trailing: Icon(Icons.chevron_right,color: Colors.black,),
                  ),
                ),
              ),
            ],
          ),
      ),
      
    );
  }
}
