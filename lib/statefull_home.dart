import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => _Home();
  
  }
  class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
        ),
        body: ListView(
          children: [
           const  Card(
              child: ListTile(
                title: Text("Amal"),
                subtitle: Text("9867458976"),
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.phone),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Arun"),
                subtitle: Text("9678906076"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person image 2.png"),
                ),
                trailing: Icon(Icons.phone),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Maya"),
                subtitle: Text("7024678906"),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.phone),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Varun"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all,color: Colors.blue),
                    Text("Helloo!! Are you There?")
                  ],
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.phone),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Zahra"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all,color: Colors.blue),
                    Text("Hii!!")
                  ],
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(Icons.person),
                ),
                trailing:Text("10.30 PM"),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Rwithik"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all),
                    Text("Helloo, How Are You??")
                  ],
                ),
                leading: CircleAvatar(
                  //backgroundImage: AssetImage("assets/images/person image 2.png"),
                ),
                trailing: Column(
                  children: [
                    Text("Yesterday"),
                    CircleAvatar(
                      radius: 14,
                      //minRadius: 5,
                      //maxRadius: 12,
                      backgroundColor: Colors.yellow,
                      child: Text("3"),
                    )
                  ],
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => const  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    // center: Alignment.topCenter,
                    // stops:[.5,1],

                    colors: [
                      Colors.green,
                      Colors.yellow,
                      Colors.red,
                      Colors.blue
                    ],
                    ).createShader(bounds),
                    child:const FaIcon(FontAwesomeIcons.google),
                    ), 
                   const FaIcon(FontAwesomeIcons.facebook,color: Colors.blue),
                   ShaderMask(
                  blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => const  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    // center: Alignment.topCenter,
                    // stops:[.5,1],

                    colors: [
                      Colors.purple,
                      Colors.pink,
                      Colors.orange,
                      Colors.yellow
                    ],
                    ).createShader(bounds),
                    child:const FaIcon(FontAwesomeIcons.instagram),
                    ),
                   
                   const FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,
                   )
                
              ],
            )

          ],
        ),
        
    );
  }
  

}
