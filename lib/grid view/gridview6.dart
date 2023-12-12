import 'package:flutter/material.dart';
import 'package:flutter_main/grid%20view/mywidget.dart';

void main() {
  runApp(MaterialApp(
    home: GridView5(),
  ));
}

class GridView5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          childrenDelegate: SliverChildBuilderDelegate(childCount: 1,
            (context, index) => 
          MyWidget(Colors.purple,
          image: Image(image: AssetImage("assets/images/scenery.jpg")) ,
          label: Text("Hello"),
          onpressed: (){})
          
          
          
          
          
          // const Card(
            
          //       color: Colors.purpleAccent,
          //       child: Center(child: Text("Iam Here!!",style: TextStyle(fontSize: 20),)),
          //     ),
              )
              ),
    );
  }
}