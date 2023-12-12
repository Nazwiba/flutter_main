import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cardex(),
  ));
}

class Cardex extends StatelessWidget {
  var DataIcon = [Icons.home,Icons.notification_important,
      Icons.linked_camera,Icons.local_activity,Icons.leak_remove,
      Icons.class_rounded,Icons.phone,Icons.mail,Icons.map,
      Icons.memory,Icons.mic_off,Icons.note_add_rounded ];
  var CardColors = [
    Colors.lightBlue, Colors.orange, Colors.green,
    Colors.pink, Colors.red, Colors.blueAccent,
    Colors.purpleAccent, Colors.cyan.shade700,Colors.amber,
    Colors.deepOrange.shade400,Colors.pink,Colors.lightGreen
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 12,
        gridDelegate:const 
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,crossAxisSpacing: 10,
          mainAxisSpacing:10,mainAxisExtent: 100 ) , 
      itemBuilder: (context,index)=>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 8,
          color: CardColors[index],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(DataIcon[index],size: 55,
                color: Colors.black38),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Heart",style: TextStyle(
                        color: Colors.black,fontSize: 20),),
                      Text("  Shaker",style: TextStyle(
                        color: Colors.black,fontSize: 20),),
                    ],),)],
            ),),),),
      ));
  }
}
