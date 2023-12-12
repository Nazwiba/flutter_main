import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Instagram(),
  ));
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
           Colors.purpleAccent,
           Colors.deepPurple,
           Colors.purple,
        
          ])
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Image(
              image: AssetImage("assets/icons/instagramimage.png"),
              height: 100,
              width: 100,
            ),
            Text("Instagram",
                // style: TextStyle(
                //     fontSize: 30,
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold)
                style: GoogleFonts.lato(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),
                ),
          ],
        )),
      ),
    );
  }
}
