import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      // body: GridView(
      //   gridDelegate: // gridDelegate has type named silverdelegate but it is an abstract class we can't call it
      //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), // fixedcrosaxis is fixed it is not related to the screen size
      //   children: List.generate(
      //       20,
      //       (index) => Card(
      //             child: Image.asset("assets/icons/orange.png"),
      //           )),
      // ),
      body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 120,
        mainAxisSpacing: 40,
        crossAxisSpacing: 10),
      // crosaxis - vertical mainaxis - horizontal
      //maxcrosaxis - the number of image limit is with respect to the screen size ,increase sreensize increase the number of tile
      children: List.generate(20, (index) => 
       Container(
      
        
        color: Colors.black,
        child: Image.asset("assets/images/london image.jpg"),
        
      )),
      ),
      
    );
  }
}
