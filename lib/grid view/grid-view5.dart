import 'package:flutter/material.dart';

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
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildBuilderDelegate((context, index) => 
          const Card(
            
                color: Colors.purpleAccent,
                child: Center(child: Text("Iam Here!!",style: TextStyle(fontSize: 20),)),
              ))),
    );
  }
}
