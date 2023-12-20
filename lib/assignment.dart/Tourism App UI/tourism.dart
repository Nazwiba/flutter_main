import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/Tourism%20App%20UI/details.dart';
import 'package:flutter_main/assignment.dart/Tourism%20App%20UI/dummydata.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Tourism(),
    routes: {
      "Details" :(context)=> Details()
    },
  ));
}

 class Tourism extends StatefulWidget {
  @override
  State<Tourism> createState() => _TourismState();
}

class _TourismState extends State<Tourism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 1, 34, 60),
        title: const Text("POPULAR",
            style: TextStyle(fontSize: 25, 
            fontWeight: FontWeight.bold,color: Colors.white),
          ),
        
      ),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 1.7,
        children: countries.map((e) => Stack(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
              onTap: ()=> Navigator.pushNamed(context, 
              "Details",arguments: e["id"]),
                child: Container(
                  
                
                  height: 300,
                  width: 800,
                    child: Image.asset(e["Image"],
                    fit: BoxFit.fill,),
                ),
                
              ),
            ),
            Positioned(
              top: 250,
              left: 20,
              child: Text(e["Country"],style: const TextStyle(
                color: Colors.white,fontSize: 25,
                fontWeight: FontWeight.bold),))
        
          ],

          
        ),
        ).toList(),
      )
    );
  }
}
