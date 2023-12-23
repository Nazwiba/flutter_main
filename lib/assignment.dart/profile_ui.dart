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
  var name = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Settings",
    "Invite a Friend",
    "Log Out"
  ];
  var icons1 = [
    const Icon(
      Icons.privacy_tip_outlined,
      color: Colors.black,
    ),
    const Icon(
      Icons.history_outlined,
      color: Colors.black,
    ),
    const Icon(
      Icons.help_outline,
      color: Colors.black,
    ),
    const Icon(
      Icons.settings,
      color: Colors.black,
    ),
    const Icon(
      Icons.person_add_alt_outlined,
      color: Colors.black,
    ),
    const Icon(
      Icons.logout,
      color: Colors.black,
    ),
  ];
  var height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
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
      body: Column(
        children: [
          Container(
            height: height/2,
            child: const  Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
      backgroundImage: AssetImage("assets/images/image 12345.jpg"),
                    radius: 70,
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
                    ),
                    ),
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
              style: TextStyle(fontSize: 30, 
              fontWeight: FontWeight.bold),
            ),
          ),
           Text(
            "@webrror",
            style: TextStyle(
              color: Color.fromARGB(255, 74, 73, 73)),
          ),
           Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Mobile App Developer",
              style: TextStyle(fontSize: 20),
            ),
          ),
            ],
            ),
           ),
          Expanded(
            child: Container(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context,index) =>
            Padding(
              padding: const EdgeInsets.only(
                left: 40,right: 40,top: 20),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,right: 20),
                      child: icons1[index],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(name[index],style: 
                      const TextStyle(fontSize: 20),),
                    ),
                    const Spacer(),
                   const  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.chevron_right,),
                    ),],
                ))
            )),))
        ],));
  }
}
