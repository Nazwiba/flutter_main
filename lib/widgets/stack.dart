import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEg(),
  ));
}

class StackEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              //color: Colors.yellow,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(image: AssetImage("assets/images/shubham-dhage-cIwzPYs-_Mk-unsplash.jpg"),
              fit: BoxFit.fill)),
            ),
            const Positioned(
              left: 50,
              top: 50,
              child: Text("Name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.green,
            // ),
            const Positioned(
              left: 300,
              top: 350,
              child: Text("Place",style: TextStyle(fontSize: 25,color: Colors.white),),
              
            ),
          ],
        ),
      ),
    );
  }
}
