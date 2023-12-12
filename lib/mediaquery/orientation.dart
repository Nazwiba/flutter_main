import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: OrientationEg(),
  ));
}

class OrientationEg extends StatelessWidget {
  var orientation, height, width;

  @override
  Widget build(BuildContext context) {
    //getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;
    //size of the window
    // size = mediaQury.of(context).size;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Orientation"),
      ),
      body: orientation == Orientation.portrait ? Container(
        height: height/2,
        width: width/2,
        color: Colors.green,
        child: const Center(child: Text("Portrait"),),
      ) : Container(
        height: height/4,
        width: width/4,
        color: Colors.green,
        child: const Center(child: Text("Landscape"),),
      ),
    );
  }
}
// condition true ? statement1 : statement2
