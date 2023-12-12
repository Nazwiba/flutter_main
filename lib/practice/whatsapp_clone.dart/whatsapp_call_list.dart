import 'package:flutter/material.dart';

class WhatsAppCall extends StatelessWidget {
  var name = [
    Text("Elena",style: TextStyle(color: Colors.red)),
    Text("Cristene",style: TextStyle(color: Colors.red),),
    Text("Jenna",style: TextStyle(color: Colors.green)),
    Text("Yuwel",style: TextStyle(color: Colors.green)),
    Text("Damon",style: TextStyle(color: Colors.green)),
    Text("Katherine",style: TextStyle(color: Colors.red)),
    Text("Stefen",style: TextStyle(color: Colors.red)),
    Text("Freddy",style: TextStyle(color: Colors.green)),
    Text("Daniel",style: TextStyle(color: Colors.green)),
    Text("Isobel",style: TextStyle(color: Colors.red)),
    
  ];
  var date_time = [
    "Today 5:30 AM",
    "Today 7:35 AM",
    "Today 1:15 PM",
    "Today 10:15 AM",
    "Yesterday 11.34 PM",
    "Yesterday 12.15 AM",
    "Yesterday 1.23 AM",
    "18 November, 12:28 AM",
    "15 November, 4:45 PM",
    "12 November, 3:40 AM"
  ];
  var icons1 = [
  Icon(Icons.arrow_outward,color: Colors.red),
  Icon(Icons.arrow_outward,color: Colors.red,),
  Icon(Icons.arrow_outward,color: Colors.green,),
  Icon(Icons.arrow_outward,color: Colors.green,),
  Icon(Icons.arrow_outward,color: Colors.green,),
  Icon(Icons.arrow_outward,color: Colors.red,),
  Icon(Icons.arrow_outward,color: Colors.red,),
  Icon(Icons.arrow_outward,color: Colors.green,),
  Icon(Icons.arrow_outward,color: Colors.green,),
  Icon(Icons.arrow_outward,color: Colors.red,)
  ];
  var images = [
  "https://tse3.mm.bing.net/th?id=OIP.mcN8dcRaEcccddAnC0rF6gHaF4&pid=Api&P=0&h=220",
  "https://tse3.mm.bing.net/th?id=OIP.GD0AI6mitnfRzhUtWNc3NQHaJ3&pid=Api&P=0&h=220",
  "https://tse3.mm.bing.net/th?id=OIP.f-WoVKsaT2_ZfL4A7cI2aQHaLH&pid=Api&P=0&h=220",
  "https://tse1.mm.bing.net/th?id=OIP.j4ahhZSJwPShPKDVSuqRRAHaJ4&pid=Api&P=0&h=220",
  "https://tse4.mm.bing.net/th?id=OIP.DD80LhwSqJdl44YggVs0HwHaI3&pid=Api&P=0&h=220",
  "https://tse4.mm.bing.net/th?id=OIP.3zuTDJ01XvkSvbSFEvW9cwHaIj&pid=Api&P=0&h=220",
  "https://tse3.mm.bing.net/th?id=OIP.aJLfXZRIlqsT0BawxpR_uwHaJ4&pid=Api&P=0&h=220",
  "https://tse4.mm.bing.net/th?id=OIP.6jS2JeMFrjEtNJmHT9faTQHaLH&pid=Api&P=0&h=220",
  "https://media.istockphoto.com/photos/simple-portrait-of-teenage-boy-smiling-isolated-picture-id492195951",
  "https://thumbs.dreamstime.com/b/studio-portrait-happy-teen-girl-smiling-pretty-32522576.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: 
          List.generate(10, (index) =>
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(images[index]),
            ),
            title: name[index],
            subtitle: Row(
              children: [
                icons1[index],
                Text(date_time[index]),
              ],
            ),
            trailing: Icon(Icons.phone,color: Colors.green,),
          ))
        
      ),
    );
  }
}
