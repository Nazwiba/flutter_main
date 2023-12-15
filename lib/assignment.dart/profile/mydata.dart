import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Mydrawer(),
  ));
}

class Mydrawer extends StatefulWidget {
  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Container(
              height: 300,
              width: 400,
              color: Colors.white,
             child:  const Column(
              children: [
                SizedBox(height: 50,),
                CircleAvatar(backgroundImage: AssetImage("assets/images/image 12345.jpg"),radius: 50,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 90,top: 20),
                    child: CircleAvatar(backgroundColor: Colors.white,
                      child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 40,),radius: 20,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20,top: 20),
                    child: CircleAvatar(backgroundColor: Color.fromARGB(255, 66, 162, 241),
                      child: FaIcon(FontAwesomeIcons.twitter,color: Colors.white,size: 25,),radius: 20,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20,top: 20),
                    child: CircleAvatar(backgroundColor: Colors.blue,
                      child: FaIcon(FontAwesomeIcons.linkedinIn,color: Colors.white,size: 25,),radius: 20,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20,top: 20),
                    child: CircleAvatar(backgroundColor: Colors.white,
                      child:FaIcon(FontAwesomeIcons.github,color: Colors.black,size: 40,),radius: 20,),
                  ),
                ],
              ),
              Text("Jerin",style: TextStyle(fontSize: 25),),
              Text("@webrror"),
              Text("Mobile App Developer"),
              ],
             ),
              
            ),
          
        
      
    );
  }
}
