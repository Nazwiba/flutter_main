import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/Tourism%20App%20UI/dummydata.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final country = countries.firstWhere((e) => e["id"] == tappedId);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
                Image.asset(country["Image"],),
                Text(country["Country"],style: 
                const TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
              Text(country["Description"],
              style: GoogleFonts.dmSerifDisplay(),),
              const Text("Place to Visit",
              style: TextStyle(fontSize: 25,
              color: Colors.black,fontWeight: FontWeight.bold),),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                    child: Image.asset(country["Place to visit 1"],
                    fit: BoxFit.fill,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                  child: Image.asset(country["Place to visit 2"],
                  fit: BoxFit.fill,)
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height:100,
                      width:100,
                    child: Image.asset(country["Place to visit 3"],
                      fit: BoxFit.fill,)),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){}, 
              style: const ButtonStyle(
            shape: MaterialStatePropertyAll(StadiumBorder()),
              backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 1, 34, 60))),
              child: const Text("Explore",style: 
              TextStyle(fontSize: 25,color: Colors.white,
              fontWeight: FontWeight.bold),),
              )
            ],
          ),
        
      ),
    );
  }
}
