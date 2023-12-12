import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.builder(itemCount: 20,
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 5,crossAxisSpacing: 10,mainAxisSpacing: 30,),
      //     itemBuilder: (context, index) {
      //       return Container(
      //         color: Colors.yellow,
      //         child: Center(
      //           child: Text("Person$index",style: TextStyle(fontSize: 20,color: Colors.black),),
      //         ),
      //       );
      //     }),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,crossAxisSpacing: 10,mainAxisSpacing: 40,mainAxisExtent: 40),
          itemBuilder: (context, index) {
            return Card(
              
              color: Colors.amberAccent,
              child: Column(
                children: [
                  Text("Person$index"),
                  Image.asset("assets/images/new york image.jpg",)
                ],
              ),
            );
          }),
    );
  }
}
