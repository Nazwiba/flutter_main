import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: City(),
  ));
}

class City extends StatelessWidget {
  var cityName = [
  "Delhi", 
  "Finland", 
  "London", 
  "Vancouver", 
  "New York",
  "Paris",
  "Switzerland",
  "Amsterdam"
  ];
  var countryName = [
  "India",
  "Europe", 
  "UK", 
  "Canada", 
  "North America",
  "France",
  "Europe",
  "Netherlands"];
  var population = [
    "Population: 32.9 mill",
    "Population: 5.54 mill",
    "Population: 8.8 mill",
    "Population: 2.6 mill",
    "Population: 8.804 mill",
    "Population: 2.103 mill",
    "population: 8.51 mill",
    "population: 1.17 mill"
  ];
  var images = [
    "assets/images/india gate 3.jpg",
    "assets/images/finland image.jpg",
    "assets/images/london image.jpg",
    "assets/images/vancouver image.jpg",
    "assets/images/new york image.jpg",
    "assets/images/paris image.jpg",
    "assets/images/switzerland image.jpg",
    "assets/images/Amsterdam image.jpg"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Center(
          child: Text(
            "Cities Around the World",
            style: TextStyle(fontSize: 25, 
            fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: List.generate(8,
         (index) => Card(
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Container(
          
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Image(image: AssetImage(images[index]),
                  fit: BoxFit.fill,height: 100,width: 200,),
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cityName[index],
                          style: const TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                          Container(
                              padding: const EdgeInsets.only
                              (top: 20),
                              child: Column(
                                crossAxisAlignment: 
                                CrossAxisAlignment.start,
                                children: [
                                  Text(countryName[index],
                                  style: const TextStyle(
                                    fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),),
                                  Text(population[index], // Text("population: ${population[index]}")
                                  style: const TextStyle(
                                    fontSize: 15),)
                                ],
                              ),)
                        ],
                      ),
                    ),
                ],
                  ),
            )),
            ),
             ),);
  }
}
