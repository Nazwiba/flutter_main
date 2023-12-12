import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fruits(),
  ));
}

class Fruits extends StatelessWidget {
  var name = [
    "Apple",
    "Banana",
    "Dragon...",
    "Grapes",
    "Kiwi",
    "Mango",
    "Orange",
    "Pineapple",
    "strawberry",
    "Water..."
  ];
  var images = [
    "assets/icons/apple.png",
    "assets/icons/banana.png",
    "assets/icons/dragon fruit.png",
    "assets/icons/grapes.png",
    "assets/icons/kiwi.png",
    "assets/icons/mango.png",
    "assets/icons/orange.png",
    "assets/icons/pine apple.png",
    "assets/icons/strawberry.png",
    "assets/icons/water melon.png"
  ];
  var unit = ["Kg", "Doz", "Doz", "Kg", "Kg", "Pc", "Doz", "Kg", "Kg", "Kg"];
  var price = [
    "20/-",
    "30/-",
    "10/-",
    "8/-",
    "25/-",
    "40/-",
    "15/-",
    "35/-",
    "90/-",
    "150/-"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Product List",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => 
                Card(
                  color: Colors.blueGrey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(images[index],height: 100,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name : ${name[index]}"),
                        Text("Unit : ${unit[index]}"),
                        Text("Price : ${price[index]}")
                       
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      shape: const StadiumBorder(),
                      color: Colors.black,
                      minWidth: 100,
                      height: 35,
                      child: const Text("Add To Cart",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ))),
    );
  }
}
