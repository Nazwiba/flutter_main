import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WhatsAppHome();
}

class _WhatsAppHome extends State<WhatsAppHome> {
  var name = [
    "Daniel",
    "Cristene",
    "Isobel",
    "Yuwel",
    "freddy",
    "katherine",
    "Stefen",
    "Damon",
    "Elena",
    "jenna"
  ];
  var messeges = [
    "Hii!!",
    "Are you Okey?",
    "Can i come to see you?",
    "2:30",
    "Helloo",
    "Hii,Iam Katherine",
    "Elena... Are you There?",
    "I want to talk to you",
    "Iam fine!!",
    "1:34"
  ];
  var date_time = [
    "10.28 AM",
    "11.00 AM",
    "2.00 PM",
    "12.30 PM",
    "Yesterday",
    "Yesterday",
    "16/11/2022",
    "12/12/2012",
    "2/11/2010",
    "3/11/2008"
  ];
  var icons1 = [
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.done),
    Icon(Icons.mic,color: Colors.blue,),
    Icon(Icons.done_all),
    Icon(Icons.done),
    Icon(Icons.done),
    Icon(Icons.done),
    Icon(Icons.done),
    Icon(Icons.mic)
  ];
  var images = [
     "https://media.istockphoto.com/photos/simple-portrait-of-teenage-boy-smiling-isolated-picture-id492195951",
     "https://tse3.mm.bing.net/th?id=OIP.GD0AI6mitnfRzhUtWNc3NQHaJ3&pid=Api&P=0&h=220",
     "https://thumbs.dreamstime.com/b/studio-portrait-happy-teen-girl-smiling-pretty-32522576.jpg",
     "https://tse1.mm.bing.net/th?id=OIP.j4ahhZSJwPShPKDVSuqRRAHaJ4&pid=Api&P=0&h=220",
     "https://tse4.mm.bing.net/th?id=OIP.6jS2JeMFrjEtNJmHT9faTQHaLH&pid=Api&P=0&h=220",
     "https://tse4.mm.bing.net/th?id=OIP.3zuTDJ01XvkSvbSFEvW9cwHaIj&pid=Api&P=0&h=220",
     "https://tse3.mm.bing.net/th?id=OIP.aJLfXZRIlqsT0BawxpR_uwHaJ4&pid=Api&P=0&h=220",
     "https://tse4.mm.bing.net/th?id=OIP.DD80LhwSqJdl44YggVs0HwHaI3&pid=Api&P=0&h=220",
     "https://tse3.mm.bing.net/th?id=OIP.mcN8dcRaEcccddAnC0rF6gHaF4&pid=Api&P=0&h=220",
     "https://tse3.mm.bing.net/th?id=OIP.f-WoVKsaT2_ZfL4A7cI2aQHaLH&pid=Api&P=0&h=220"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: Text("WhatsApp"),
      //   actions: [
      //     const Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(Icons.camera_alt),
      //     ),
      //     const Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(Icons.search),
      //     ),
      //     PopupMenuButton(itemBuilder: (context) {
      //       return const [
      //         PopupMenuItem(
      //           child: Text("New Group"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("New broadcast"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("Linked devices"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("Starred messeges"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("Payments"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("settings"),
      //         ),
      //       ];
      //     })
      //   ],
      // ),
      body: ListView(
          children: List.generate(
              10,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(images[index]),
                    ),
                    title: Text(name[index]),
                    subtitle: Row(
                      children: [
                        icons1[index],
                        Text(messeges[index]),
                      ],
                    ),
                    trailing: Text("${date_time[index]}"),
                  ))),
    );
  }
}
