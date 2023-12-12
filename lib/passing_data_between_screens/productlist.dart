import 'package:flutter/material.dart';
import 'package:flutter_main/passing_data_between_screens/details.dart';
import 'package:flutter_main/passing_data_between_screens/dummydata.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductList(),
    routes: {
      "Details": (context) => Details()
      // "Cart" : (context)=> GridView2()
    },
  ));
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text("Product List",style: TextStyle(fontSize: 30,color: Colors.black),)),
      ),
      body: ListView(
        //single Map
          children: products
              .map((e) => Container(
                height: 100,
                width: 100,
                child: ListTile(
                 leading:Image.asset((e["Image"]),fit: BoxFit.fill,height: 150,width: 70,),
                 subtitle: Padding(
                   padding: const EdgeInsets.only(left: 50,),
                   child: Text(e["Name"],style: TextStyle(fontSize: 20,color: Colors.black),),
                 ),
                
                      //leading: Text(e["Name"],style: const TextStyle(fontSize: 20),),
                      onTap: () => gotodetails(context, e["id"]),
                    
                    ),
              ))
              .toList()
              ),
    );
  }

  void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "Details",arguments: id);
  }
}
