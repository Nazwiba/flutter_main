import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView3(),
  ));
}

class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(
            20,
            (index) => Card(
                  child: Column(
                    children: [
                      Image.asset("assets/images/finland image.jpg",
                      fit: BoxFit.fill,height: 100,),
                      Text("FinLand",style: TextStyle(fontSize: 20),)
                    ],
                  )
                )),
      ),
    );
  }
}
