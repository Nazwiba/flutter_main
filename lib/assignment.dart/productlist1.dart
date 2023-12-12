import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // for remove debug icon
    home: ProductList1(),
  ));
}

class ProductList1 extends StatelessWidget {
  var name = [
    "Apple",
    "Mango",
    "Banana",
    "Grapes",
    "Water Melon",
    "kiwi",
    "Orange",
    "Peach",
    "Strawberry",
    "Pine apple"
  ];
  var images = [
    "assets/icons/apple.png",
    "assets/icons/mango.png",
    "assets/icons/banana.png",
    "assets/icons/grapes.png",
    "assets/icons/water melon.png",
    "assets/icons/kiwi.png",
    "assets/icons/orange.png",
    "assets/icons/peach.png",
    "assets/icons/strawberry.png",
    "assets/icons/pine apple.png"
  ];
  var unit = ["Kg", "Doz", "Doz", "Kg", "Kg", 
              "Pc", "Doz", "Kg", "Kg", "Kg"];

  var price = ["20","30","40","50","60","70","15","35","90","75"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Product List",
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold),),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
        body:ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index)=> 
             Container(
            height: 100, child: Card(
              color: Colors.blueGrey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0) ),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row( children: [
                    Image(image: AssetImage(images[index]),
                    fit: BoxFit.fill,height: 75,width: 50,),
                    Container(
                      padding:const EdgeInsets.only(left: 20),
                      child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text("Name: ",
                              style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal),),
                              Text(name[index],
                              style: const TextStyle(
                                fontSize: 15,color: Colors.black,
                                fontWeight: FontWeight.bold),)],),
                          Row(
                            children: [
                              const Text("Unit: ",
                              style: TextStyle(fontSize: 14,
                              fontWeight: FontWeight.normal),),
                              Text(unit[index],
                              style: const TextStyle(fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),],),
                          Row(
                            children: [
                              const Text("Price: \$",
                              style: TextStyle(fontSize: 13,
                              fontWeight: FontWeight.normal),),
                              Text(price[index],
                              style: const TextStyle(fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),)], )
                        ],),),
                    Expanded(
                    child:ListTile(
                      trailing: MaterialButton(
                         color: Colors.black54,
                        onPressed: (){},
                        child: const Text("Add To Cart",
                        style: TextStyle(color: Colors.white),),
                        ),)),
                  ],),),),
           )),);
  }
}
