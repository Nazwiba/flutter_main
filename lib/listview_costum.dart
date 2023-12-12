import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView4(),
  ));
}

class ListView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Custom"),
      ),
      body: ListView.custom(
          // it is the combination of listview(listview.generate/listview.from/etc) and listview.builder
          // childrendelegate is used for scrollable we can use inside the appbar so we can scroll the appbar like whatsapp
          //childrenDelegate: SliverChildListDelegate(
        // [
        // Card(child: Center(child: Text("Helloo"),),),
        //Card(child: Center(child: Text("Helloo"),),),
        //Card(child: Center(child: Text("Helloo"),),),
        //Card(child: Center(child: Text("Helloo"),),),
        // ]
        // List.generate(
        //     10,
        //     (index) => const Card(
        //       color: Colors.yellow,
        //           child: Center(
        //             child: Text("Good morning"),
        //           ),
        //         )),
     // )
     childrenDelegate: SliverChildBuilderDelegate(
      childCount: 10,
      
      (context, index) => 
      Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset("assets/icons/strawberry.png",height: 100,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name      : Strawberry"),
              Text("Quantity  : 3 Kg"),
              Text("Price        : \$ 200/Kg")
            ],
          ),
          MaterialButton(onPressed: (){},
          shape: const StadiumBorder(),
          color: Colors.green,
          minWidth: 100,
          height: 40,
          child: const Text("Add to cart"),)
          ],
        ),
      )),
      ),
    );
  }
}
