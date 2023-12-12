import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar: AppBar(),
      //backgroundColor: Colors.yellow,
      body: Container(
        decoration: const BoxDecoration(
          // to set background image for body
          //image: DecorationImage(
          //  fit: BoxFit.cover,
            //image: NetworkImage("https://images.unsplash.com/photo-1535732759880-bbd5c7265e3f?auto=format&fit=crop&q=80&w=928&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
            // to set gradient image for body
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              Colors.white,
              Colors.lightBlueAccent,
              Colors.lightBlueAccent,
              Colors.white,
            ])),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [//Icon(Icons.dark_mode,size: 100,color: Colors.white,),
              const Image(image: AssetImage("assets/icons/buidling2.png"),height: 200,width: 200,),
            //Image(image: NetworkImage("https://icons.iconarchive.com/icons/blackvariant/button-ui-requests-6/256/BitCoin-icon.png")),
            //Image.network("src"),
            //Image.asset("assets/icons/bitcoin.png",height: 100,width: 100,),
               Text("AppName",//style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
               style: GoogleFonts.lato(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
///body: Center(
  ///child: Icon(Icons.dark_mode,size: 100,color: Colors.white,),
  ///), this is normal form we can add a text to this page so we wrap the icon inside a column so we click the Icon and select the yello bulb and select  wrap the column so the code has changed.
  /// the new code is showned below;
  ///body: Center(
      ///child: Column(
       ///children: [
          ///Icon(Icons.dark_mode,size: 100,color: Colors.white,),
          ///Text("Appname"), this is for add the appname
          ///],