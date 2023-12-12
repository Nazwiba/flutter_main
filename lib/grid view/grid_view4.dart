import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView4(),
  ));
}

class GridView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        children: List.generate(20, (index) => 
        const Card(
          color: Colors.orangeAccent,
          child: Column(
            children: [
              Icon(Icons.access_alarm,size: 50,),
              Text("10.00 AM"),
              Text("23/12/23"),
            ],
          ),
          
        ))
      
      ),
    );
  }
}
